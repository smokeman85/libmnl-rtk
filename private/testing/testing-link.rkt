#lang racket

(require ffi/unsafe
         ffi/unsafe/define)

(require "../ffi/data-struct.rkt")
(require "../ffi/socket-netlink.rkt")
(require "../ffi/message-netlink.rkt")

(define buf (malloc 'atomic 8192))
;(define nlh (mnl_nlmsg_put_header buf))

(define (init-nlhdr buf)
  (let ([nlh (mnl_nlmsg_put_header buf)])
    (set-nlmsghdr-nlmsg-type! nlh 22)
    (set-nlmsghdr-nlmsg-flags! nlh (bitwise-ior 1 (bitwise-ior #x100 #x200)))
    (set-nlmsghdr-nlmsg-seq! nlh 300)
    nlh))

(define (add-family-nlh nlhdr)
  (let ([rt (mnl_nlmsg_put_extra_header nlhdr (ctype-sizeof _rtgenmsg))])
    (set-rtgenmsg-rtgen-family! (ptr-ref rt _rtgenmsg) 2)
    nlhdr))

(define nlh (add-family-nlh (init-nlhdr buf)))

(define (recvdata netlink buf len) (display "todo"))

(define (main)
  (let ([nl (mnl_socket_open 0)])
    (mnl_socket_bind nl 0 0)
    (let ([portid (mnl_socket_get_portid nl)])
      (mnl_socket_sendto nl nlh (nlmsghdr-nlmsg-len nlh)))))