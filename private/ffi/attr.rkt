#lang racket

(require ffi/unsafe
         ffi/unsafe/define)

(require "data-struct.rkt")
(require "define-lib.rkt")

;uint16_t mnl_attr_get_type (const struct nlattr *attr)
(define-libmnl mnl_attr_get_type (_fun _nlattr-pointer -> _uint16))

;uint16_t mnl_attr_get_len (const struct nlattr *attr)
(define-libmnl mnl_attr_get_len (_fun _nlattr-pointer -> _uint16))

;uint16_t mnl_attr_get_payload_len (const struct nlattr *attr)
(define-libmnl mnl_attr_get_payload_len (_fun _nlattr-pointer -> _uint16))

;void * mnl_attr_get_payload (const struct nlattr *attr)
(define-libmnl mnl_attr_get_payload (_fun _nlattr-pointer -> _pointer))

;bool mnl_attr_ok (const struct nlattr *attr, int len)
(define-libmnl mnl_attr_ok (_fun _nlattr-pointer _int -> _bool))

;struct nlattr * mnl_attr_next (const struct nlattr *attr)
(define-libmnl mnl_attr_next (_fun _nlattr-pointer -> _nlattr-pointer))

;int mnl_attr_type_valid (const struct nlattr *attr, uint16_t max)
(define-libmnl mnl_attr_type_valid (_fun _nlattr-pointer _uint16 -> _int))

;int mnl_attr_validate (const struct nlattr *attr, enum mnl_attr_data_type type)
(define-libmnl mnl_attr_validate (_fun _nlattr-pointer mnl-attr-data-type -> _int))

;int mnl_attr_validate2 (const struct nlattr *attr, enum mnl_attr_data_type type, size_t exp_len)
(define-libmnl mnl_attr_validate2 (_fun _nlattr-pointer mnl-attr-data-type _size -> _int))

;int mnl_attr_parse (const struct nlmsghdr *nlh, unsigned int offset, mnl_attr_cb_t cb, void *data)
(define-libmnl mnl_attr_parse (_fun _nlmsghdr-pointer _uint _mnl_attr_cb_t _pointer -> _int))

;int mnl_attr_parse_nested (const struct nlattr *nested, mnl_attr_cb_t cb, void *data)
(define-libmnl mnl_attr_parse_nested (_fun _nlattr-pointer _mnl_attr_cb_t _pointer -> _int))

;uint8_t mnl_attr_get_u8 (const struct nlattr *attr)
(define-libmnl mnl_attr_get_u8 (_fun _nlattr-pointer -> _uint8))

;uint16_t mnl_attr_get_u16 (const struct nlattr *attr)
(define-libmnl mnl_attr_get_u16 (_fun _nlattr-pointer -> _uint16))

;uint32_t mnl_attr_get_u32 (const struct nlattr *attr)
(define-libmnl mnl_attr_get_u32 (_fun _nlattr-pointer -> _uint32))

;uint64_t mnl_attr_get_u64 (const struct nlattr *attr)
(define-libmnl mnl_attr_get_u64 (_fun _nlattr-pointer -> _uint64))

;const char * mnl_attr_get_str (const struct nlattr *attr)
(define-libmnl mnl_attr_get_str (_fun _nlattr-pointer -> _pointer))
  
;void mnl_attr_put (struct nlmsghdr *nlh, uint16_t type, size_t len, const void *data)
(define-libmnl mnl_attr_put (_fun _nlmsghdr-pointer _uint16 _size _pointer -> _void))
  
;void mnl_attr_put_u8 (struct nlmsghdr *nlh, uint16_t type, uint8_t data)
(define-libmnl  mnl_attr_put_u8 (_fun _nlmsghdr-pointer _uint16 _uint8 -> _void))
  
;void mnl_attr_put_u16 (struct nlmsghdr *nlh, uint16_t type, uint16_t data)
(define-libmnl  mnl_attr_put_u16 (_fun _nlmsghdr-pointer _uint16 _uint16 -> _void))
  
;void mnl_attr_put_u32 (struct nlmsghdr *nlh, uint16_t type, uint32_t data)
(define-libmnl  mnl_attr_put_u32 (_fun _nlmsghdr-pointer _uint16 _uint32 -> _void))
  
;void mnl_attr_put_u64 (struct nlmsghdr *nlh, uint16_t type, uint64_t data)
(define-libmnl  mnl_attr_put_u64 (_fun _nlmsghdr-pointer _uint16 _uint64 -> _void))
  
;void mnl_attr_put_str (struct nlmsghdr *nlh, uint16_t type, const char *data)
(define-libmnl mnl_attr_put_str (_fun _nlmsghdr-pointer _uint16 _pointer -> _void))

;void mnl_attr_put_strz (struct nlmsghdr *nlh, uint16_t type, const char *data)
(define-libmnl mnl_attr_put_strz (_fun _nlmsghdr-pointer _uint16 _pointer -> _void))

;struct nlattr * mnl_attr_nest_start (struct nlmsghdr *nlh, uint16_t type)
(define-libmnl mnl_attr_nest_start (_fun _nlmsghdr-pointer _uint16 -> _nlattr-pointer))

;bool mnl_attr_put_check (struct nlmsghdr *nlh, size_t buflen, uint16_t type, size_t len, const void *data)
(define-libmnl mnl_attr_put_check (_fun _nlmsghdr-pointer _size _uint16 _size _pointer -> _bool))

;bool mnl_attr_put_u8_check (struct nlmsghdr *nlh, size_t buflen, uint16_t type, uint8_t data)
(define-libmnl mnl_attr_put_u8_check (_fun _nlmsghdr-pointer _size _uint16 _uint8 -> _bool))

;bool mnl_attr_put_u16_check (struct nlmsghdr *nlh, size_t buflen, uint16_t type, uint16_t data)
(define-libmnl mnl_attr_put_u16_check (_fun _nlmsghdr-pointer _size _uint16 _uint16 -> _bool))

;bool mnl_attr_put_u32_check (struct nlmsghdr *nlh, size_t buflen, uint16_t type, uint32_t data)
(define-libmnl mnl_attr_put_u32_check (_fun _nlmsghdr-pointer _size _uint16 _uint32 -> _bool))

;bool mnl_attr_put_u64_check (struct nlmsghdr *nlh, size_t buflen, uint16_t type, uint64_t data)
(define-libmnl mnl_attr_put_u64_check (_fun _nlmsghdr-pointer _size _uint16 _uint64 -> _bool))

;bool mnl_attr_put_str_check (struct nlmsghdr *nlh, size_t buflen, uint16_t type, const char *data)
(define-libmnl mnl_attr_put_str_check (_fun _nlmsghdr-pointer _size _uint16 _pointer -> _bool))

;bool mnl_attr_put_strz_check (struct nlmsghdr *nlh, size_t buflen, uint16_t type, const char *data)
(define-libmnl mnl_attr_put_strz_check (_fun _nlmsghdr-pointer _size _uint16 _pointer -> _bool))

;struct nlattr * mnl_attr_nest_start_check (struct nlmsghdr *nlh, size_t buflen, uint16_t type)
(define-libmnl mnl_attr_nest_start_check (_fun _nlmsghdr-pointer _size _uint16 -> _nlattr-pointer))

;void mnl_attr_nest_end (struct nlmsghdr *nlh, struct nlattr *start)
(define-libmnl mnl_attr_nest_end (_fun _nlmsghdr-pointer _nlattr-pointer -> _void))

;void mnl_attr_nest_cancel (struct nlmsghdr *nlh, struct nlattr *start)
(define-libmnl mnl_attr_nest_cancel (_fun _nlmsghdr-pointer _nlattr-pointer -> _void))

;callback API

(define MNL_CB_ERROR		-1)
(define MNL_CB_STOP		 0)
(define MNL_CB_OK		 1)

;typedef int (*mnl_cb_t)(const struct nlmsghdr *nlh, void *data);
(define _mnl_cb_t (_fun _nlmsghdr-pointer _pointer -> _int))
;extern int mnl_cb_run(const void *buf, size_t numbytes, unsigned int seq,
;		      unsigned int portid, mnl_cb_t cb_data, void *data);
(define-libmnl mnl_cb_run (_fun _pointer _size _uint _uint _mnl_cb_t _pointer -> _int))

(provide (all-defined-out))

