```
# docker build -t iscsid .
```

```
# atomic install iscsid
# atomic run iscsid

# cat /proc/partitions
# docker exec -ti iscsid iscsiadm -m session
# docker exec -ti iscsid iscsiadm --mode discoverydb --type sendtargets --portal 10.34.102.54 --discover
# docker exec -ti iscsid iscsiadm -m node --targetname iqn.2009-02.com.example:rv2 --portal 10.34.102.54:3260 --login
# cat /proc/partitions
# docker exec -ti iscsid iscsiadm -m node --targetname iqn.2009-02.com.example:rv2 --portal 10.34.102.54:3260 --logout
# docker exec -ti iscsiadm -m node --loginall=automatic
# docker exec -ti iscsiadm -m node --logoutall=automatic

# atomic uninstall iscsid

```

It should be possible to use

```
atomic run iscsid iscsiadm -m session
```

instead of

```
# docker exec -ti iscsid iscsiadm -m session
```

but id didn't work for me in RHEL Atomic Host 7.1. Need to check if the case2, Background image, Container running from
https://github.com/projectatomic/atomic/blob/master/atomicdesign.pdf
actually works.





