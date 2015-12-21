#lang racket
(require ffi/unsafe
         ffi/unsafe/define)
(require "data-struct.rkt")
(require "define-lib.rkt")

;int mnl_socket_get_fd (const struct mnl_socket *nl)
(define-libmnl mnl_socket_get_fd (_fun _mnl-socket-pointer -> _int))

;unsigned int mnl_socket_get_portid (const struct mnl_socket *nl)
(define-libmnl mnl_socket_get_portid (_fun _mnl-socket-pointer -> _uint))

;struct mnl_socket * mnl_socket_open (int bus)
(define-libmnl mnl_socket_open (_fun _int -> _mnl-socket-pointer))

;int mnl_socket_bind (struct mnl_socket *nl, unsigned int groups, pid_t pid)
(define-libmnl mnl_socket_bind (_fun _mnl-socket-pointer _uint _int -> _int))

;ssize_t mnl_socket_sendto (const struct mnl_socket *nl, const void *buf, size_t len)
(define-libmnl mnl_socket_sendto (_fun _mnl-socket-pointer _pointer _size -> _ssize))

;ssize_t mnl_socket_recvfrom (const struct mnl_socket *nl, void *buf, size_t bufsiz)
(define-libmnl mnl_socket_recvfrom (_fun _mnl-socket-pointer _pointer _size -> _ssize))

;int mnl_socket_close (struct mnl_socket *nl)
(define-libmnl mnl_socket_close (_fun _mnl-socket-pointer -> _int))

;int mnl_socket_setsockopt (const struct mnl_socket *nl, int type, void *buf, socklen_t len)
(define-libmnl mnl_socket_setsockopt (_fun _mnl-socket-pointer _int _pointer _int -> _int))

;int mnl_socket_getsockopt (const struct mnl_socket *nl, int type, void *buf, socklen_t *len)
(define-libmnl mnl_socket_getsockopt (_fun _mnl-socket-pointer _int _pointer _pointer -> _int))

(provide (all-defined-out))
