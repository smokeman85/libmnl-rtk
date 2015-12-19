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