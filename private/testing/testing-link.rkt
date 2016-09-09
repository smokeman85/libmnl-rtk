#lang racket

(require ffi/unsafe
         ffi/unsafe/define)

(require "../ffi/data-struct.rkt")
(require "../ffi/socket-netlink.rkt")
(require "../ffi/message-netlink.rkt")
(require "../ffi/netlink.rkt")
(require "../ffi/rtnetlink.rkt")
(require "../ffi/attr.rkt")

(define buf (malloc 'atomic 8192))
(define MNL_SOCKET_AUTOPID 0)

(define (data_cb nlh data)
  (let ([ifm (mnl_nlmsg_get_payload nlh)])
    (displayln (ifinfomsg-ifi_index (ptr-ref ifm _ifinfomsg))))
  MNL_CB_OK)
   

(define (reciving ret seq portid nl)
  (if (> ret 0)
      (begin
        (set! ret (mnl_cb_run buf ret seq portid data_cb #f))
        (if (> ret MNL_CB_STOP)
            (reciving (mnl_socket_recvfrom nl buf 8192) seq portid nl)
        (displayln "Exit")))
  (#t)))

(define (main)
  (let ([nlh (mnl_nlmsg_put_header buf)])
    (set-nlmsghdr-nlmsg-type! nlh RTM_GETLINK)
    (set-nlmsghdr-nlmsg-flags! nlh (bitwise-ior NLM_F_REQUEST NLM_F_DUMP))
    (set-nlmsghdr-nlmsg-seq! nlh 300)
    (let ([rt (mnl_nlmsg_put_extra_header nlh (ctype-sizeof _rtgenmsg))])
      (set-rtgenmsg-rtgen-family! (ptr-ref rt _rtgenmsg)  17)
     (let ([nl (mnl_socket_open NETLINK_ROUTE)])
       (mnl_socket_bind nl 0 MNL_SOCKET_AUTOPID)
       (let ([portid (mnl_socket_get_portid nl)])
         (mnl_socket_sendto nl nlh (nlmsghdr-nlmsg-len nlh))
         (let ([ret (mnl_socket_recvfrom nl buf 8192)])
           (reciving ret 300 portid nl)))))))