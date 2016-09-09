#lang racket

(require ffi/unsafe
         ffi/unsafe/define)

(require "../ffi/data-struct.rkt")
(require "../ffi/socket-netlink.rkt")
(require "../ffi/message-netlink.rkt")

(define buf (malloc 'atomic 8192))
(define NETLINK_KOBJECT_UEVENT 15)
(define MNL_SOCKET_AUTOPID 0)
(define RTMGRP_LINK 1)

(define (ptr-to-char buffer offset)
  (integer->char (ptr-ref buffer _byte offset)))

(define (print-buffer buffer len)
  (for ([i (in-range len)])
          (display (ptr-to-char buffer i))))

(define (main)
  (let* ([nl (mnl_socket_open NETLINK_KOBJECT_UEVENT)]
         [result (mnl_socket_bind nl RTMGRP_LINK MNL_SOCKET_AUTOPID)]
         [len (mnl_socket_recvfrom nl buf 8192)])
    (print-buffer buf len)
    (mnl_socket_close nl)))
