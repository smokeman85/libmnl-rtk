#lang racket

(require ffi/unsafe)

(define-cstruct _sockaddr-nl ([nl-family _ushort]
                              [nl-pad    _ushort]
                              [nl-pid    _uint32]
                              [nl-groups _uint32]))

(define-cstruct _mnl-socket ([fd _int]
                             [addr  _sockaddr-nl]))

(define-cstruct _mnl-nlmsg-batch ([buf _pointer]
                                  [limit _size]
                                  [buflen _size]
                                  [cur _pointer]
                                  [overflow _bool]))

(define mnl-attr-data-type (_enum '( MNL_TYPE_UNSPEC = 0
                                     MNL_TYPE_U8
                                     MNL_TYPE_U16
                                     MNL_TYPE_U32
                                     MNL_TYPE_U64
                                     MNL_TYPE_STRING
                                     MNL_TYPE_FLAG
                                     MNL_TYPE_MSECS
                                     MNL_TYPE_NESTED
                                     MNL_TYPE_NESTED_COMPAT
                                     MNL_TYPE_NUL_STRING
                                     MNL_TYPE_BINARY
                                     MNL_TYPE_MAX)))

(define-cstruct _nlattr ([nla-len  _uint16]
                        [nla-type _uint16]))

(define-cstruct _nlmsghdr ([nlmsg-len   _uint32]
                           [nlmsg-type  _uint16]
                           [nlmsg-flags _uint16]
                           [nlmsg-seq   _uint32]
                           [nlmsg-pid   _uint32]))

(define _mnl_attr_cb_t (make-ctype (_fun _nlattr-pointer _pointer -> _int) #f #f))

(provide (all-defined-out))
