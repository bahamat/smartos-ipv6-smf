**Update:** As of 20150917T235937Z full support for IPv6 has been added to vmadm with the      added `ips` and `gateways` parameters. If you're using SmartDataCenter, these parameters won't
(yet) be added automatically, so the following may be useful to you. But if you're using       SmartOS, see the updated [SmartOS IPv6 configuration wiki][smartos-ipv6-wiki]  page.

[smartos-ipv6-wiki]: https://wiki.smartos.org/display/DOC/Setting+up+IPv6+in+a+Zone

# IPv6 SMF Manifest & Method

Supports ADDRCONF (SLAAC) and static addressing via the following services:

* `svc:/network/ipv6:addrconf`
* `svc:/network/ipv6:static`

ADDRCONF is enabled by default, and is required by all other instances.

### TODO:

* Add 6in4 tunnel support (e.g., [Hurricane Electric](http://www.tunnelbroker.net/)).

# Quick Start

Without `git` (suitable for SmartOS standalone global-zone, headnode global-zone or OS zones without git installed):

    curl -k -LOC - https://github.com/bahamat/smartos-ipv6-smf/archive/master.tar.gz
    gtar zxf master.tar.gz
    smartos-ipv6-smf-master/install

For compute nodes, after set up on the headnode:

    sdc-oneachnode -c -g /root/master.tar.gz -d /root
    sdc-oneachnode -c '/usr/bin/gtar zxf /root/master.tar.gz -C /root; smartos-ipv6-smf-master/install'

With `git` (suitable for OS zones with git installed):

    git clone https://github.com/bahamat/smartos-ipv6-smf/
    smartos-ipv6-smf/install
