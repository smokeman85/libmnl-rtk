#lang racket

(require ffi/unsafe
         ffi/unsafe/define)
 
(define-ffi-definer define-libmnl (ffi-lib "libmnl"))
(provide define-libmnl)
