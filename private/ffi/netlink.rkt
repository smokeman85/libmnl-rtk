#lang racket

;Routing/device hook
(define NETLINK_ROUTE            0)
;Unused number 
(define NETLINK_UNUSED           1)
;Reserved for user mode socket protocols 
(define NETLINK_USERSOCK         2)
; Unused number, formerly ip_queue
(define NETLINK_FIREWALL         3)
;socket monitoring
(define NETLINK_SOCK_DIAG        4)
;netfilter/iptables ULOG
(define NETLINK_NFLOG            5)
;ipsec
(define NETLINK_XFRM             6)
;SELinux event notifications
(define NETLINK_SELINUX          7)
;Open-iSCSI
(define NETLINK_ISCSI            8)
;auditing
(define NETLINK_AUDIT            9)
(define NETLINK_FIB_LOOKUP      10)
(define NETLINK_CONNECTOR       11)
;netfilter subsystem
(define NETLINK_NETFILTER       12)
(define NETLINK_IP6_FW          13)
;DECnet routing messages
(define NETLINK_DNRTMSG         14)
;Kernel messages to userspace
(define NETLINK_KOBJECT_UEVENT  15)
(define NETLINK_GENERIC         16)
;SCSI Transports
(define NETLINK_SCSITRANSPORT   18)
(define NETLINK_ECRYPTFS        19)
(define NETLINK_RDMA            20)
;Crypto layer
(define NETLINK_CRYPTO          21)

;It is request message
(define NLM_F_REQUEST           1)
;Multipart message, terminated by NLMSG_DONE
(define NLM_F_MULTI             2)
;Reply with ack, with zero or error code
(define NLM_F_ACK               4)
;Echo this request
(define NLM_F_ECHO              8)
;Dump was inconsistent due to sequence change
(define NLM_F_DUMP_INTR         16)
;Dump was filtered as requested
(define NLM_F_DUMP_FILTERED     32)

;Modifiers to GET request

;specify tree root
(define NLM_F_ROOT      #x100)
;return all matching
(define NLM_F_MATCH     #x200)
;atomic GET
(define NLM_F_ATOMIC    #x400)
(define NLM_F_DUMP      (bitwise-ior NLM_F_ROOT NLM_F_MATCH))

;Modifiers to NEW request

;Override existing
(define NLM_F_REPLACE   #x100)
;Do not touch, if it exists
(define NLM_F_EXCL      #x200)
;Create, if it does not exist
(define NLM_F_CREATE    #x400)
;Add to end of list
(define NLM_F_APPEND    #x800)

(provide (all-defined-out))
