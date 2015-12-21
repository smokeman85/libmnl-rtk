#lang racket
(require ffi/unsafe
         ffi/unsafe/define)

(require "data-struct.rkt")
(require "define-lib.rkt")

;size_t mnl_nlmsg_size (size_t len)
(define-libmnl mnl_nlmsg_size (_fun _size -> _size))

;size_t mnl_nlmsg_get_payload_len (const struct nlmsghdr *nlh)
(define-libmnl mnl_nlmsg_get_payload_len (_fun _nlmsghdr-pointer -> _size))

;struct nlmsghdr * mnl_nlmsg_put_header (void *buf)
(define-libmnl mnl_nlmsg_put_header (_fun _pointer -> _nlmsghdr-pointer))

;void* mnl_nlmsg_put_extra_header (struct nlmsghdr *nlh, size_t size)
(define-libmnl mnl_nlmsg_put_extra_header (_fun _nlmsghdr-pointer _size -> _pointer))

;void* mnl_nlmsg_get_payload (const struct nlmsghdr *nlh)
(define-libmnl mnl_nlmsg_get_payload (_fun _nlmsghdr-pointer -> _pointer))

;void* mnl_nlmsg_get_payload_offset (const struct nlmsghdr *nlh, size_t offset)
(define-libmnl mnl_nlmsg_get_payload_offset (_fun _nlmsghdr-pointer _size -> _pointer))

;bool mnl_nlmsg_ok (const struct nlmsghdr *nlh, int len)
(define-libmnl mnl_nlmsg_ok (_fun _nlmsghdr-pointer _int -> _bool))

;struct nlmsghdr* mnl_nlmsg_next (const struct nlmsghdr *nlh, int *len)
(define-libmnl mnl_nlmsg_next (_fun _nlmsghdr-pointer _pointer -> _nlmsghdr-pointer))

;void* mnl_nlmsg_get_payload_tail (const struct nlmsghdr *nlh)
(define-libmnl mnl_nlmsg_get_payload_tail (_fun _nlmsghdr-pointer -> _pointer))

;bool mnl_nlmsg_seq_ok (const struct nlmsghdr *nlh, unsigned int seq)
(define-libmnl mnl_nlmsg_seq_ok (_fun _nlmsghdr-pointer _uint -> _bool))

;bool mnl_nlmsg_portid_ok (const struct nlmsghdr *nlh, unsigned int portid)
(define-libmnl mnl_nlmsg_portid_ok (_fun _nlmsghdr-pointer _uint -> _bool))

;void mnl_nlmsg_fprintf (FILE *fd, const void *data, size_t datalen, size_t extra_header_size)
(define-libmnl mnl_nlmsg_fprintf (_fun _pointer _pointer _size _size -> _void))