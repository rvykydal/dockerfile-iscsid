```
# docker build -t iscsid .
```

```
# atomic install iscsid
# atomic run iscsid

# cat /proc/partitions
# atomic run iscsid iscsiadm -m session
# atomic run iscsid iscsiadm --mode discoverydb --type sendtargets --portal 10.34.102.54 --discover
# atomic run iscsid iscsiadm -m node --targetname iqn.2009-02.com.example:rv2 --portal 10.34.102.54:3260 --login
# cat /proc/partitions
# atomic run iscsid iscsiadm -m node --targetname iqn.2009-02.com.example:rv2 --portal 10.34.102.54:3260 --logout
# atomic run iscsid iscsiadm -m node --loginall=automatic
# atomic run iscsid iscsiadm -m node --logoutall=automatic

# atomic uninstall iscsid

```




