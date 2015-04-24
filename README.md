# IPv6 SMF Manifest & Method

Supports SLAAC and static addressing via the following services:

* `svc:/network/ipv6:slaac`
* `svc:/network/ipv6:static`

SLAAC is enabled by default, and is required by all other instances.

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
