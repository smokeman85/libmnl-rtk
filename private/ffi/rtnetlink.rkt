#lang racket
(require ffi/unsafe)

(define RTM_NEWLINK 16)
(define RTM_DELLINK 17)
(define RTM_GETLINK 18)
(define RTM_SETLINK 19)

(define RTM_NEWADDR 20)
(define RTM_DELADDR 21)
(define RTM_GETADDR 22)

(define RTM_NEWROUTE 24)
(define RTM_DELROUTE 25)
(define RTM_GETROUTE 26)

(define-cstruct _ifinfomsg ([ifi_family _ubyte]
                            [__ifi_pad _ubyte]
                            [ifi_type _uint16]
                            [ifi_index _int]
                            [ifi_flags _uint]
                            [ifi_change _uint]))

(provide (all-defined-out))
