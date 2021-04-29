#!/bin/bash

if [ -z "$1" ]; then echo "Usage is,  $0 'cn=jonathan locke' memberof"; exit 1; fi

# update the values below to reflect your site
# change the server to be your LDAP (AD) server IP or hostname
# change the ldap:// to ldaps:// to utilize ssl
# modify the binddn to be your user that can authenticate to LDAP (AD)
# modify the search dn to be something applicable. two DC entries are minimal.

server="ldap://10.0.0.62"; binddn="CN=jonathan locke,cn=users,dc=lockenet,dc=com"; searchdn="cn=users,dc=lockenet,dc=com"; filter="$1"
passwd="~~~"; returnattr="$2"

echo "Querying: $server|Searching for: $1"
echo "Enter password for ${binddn}"
#ldapsearch -x -D "${binddn}" -w ${passwd} -H "${server}" -b "${searchdn}"  -s sub "${filter}" | grep -i "${returnattr}"
ldapsearch -x -D "${binddn}" -W -H "${server}" -b "${searchdn}"  -s sub "${filter}" | grep -i "${returnattr}"
