# adsearch
This little script enables you to do a simple ldap (AD) search from linux without the faf of installing ldap-blah libs etc and openssl blah.\

How To Install:
git clone https://github.com/jonlocke/adsearch
cd adsearch

Pre-Requisites:
ldap-tools is required to provide ldapsearch binary, and associated things. 
CENTOS/RHEL: yum -y install ldap-tools
UBUNTU/Debian: apt-get -y install ldap-tools

Examples:

./adsearch.sh '(objectclass=group)' cn:
This returns the cn attribute of a group

./adsearch.sh '(objectclass=user)' cn:
This returns the cn attribute of a user

./adsearch.sh 'cn= jonathan locke' memberof
This returns the membership of groups for cn=jonathan locke

