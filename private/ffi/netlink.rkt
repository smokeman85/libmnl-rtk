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

(provide (all-defined-out))
