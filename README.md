# IPv6 SMF Manifest & Method

Currently only supports SLAAC.

Each address type is its own instance. E.g., `svc:/network/ipv6:slaac`.

### To do:

* Add static address support
* Add 6in4 tunnel support (e.g., [Hurricane Electric](http://www.tunnelbroker.net/)).

# Get It

    curl -LOC - https://github.com/bahamat/smartos-ipv6-smf/archive/master.tar.gz
    tar zxf master.tar.gz
    smartos-ipv6-smf-master/install

The start method will automatically enable `svc:/network/routing/ndp:default`, but does not automatically disable it.
