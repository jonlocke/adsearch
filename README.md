# adsearch
This little script enables you to do a simple ldap (AD) search from linux without the faf of installing ldap-blah libs etc and openssl blah.\

Examples:

./adsearch.sh '(objectclass=group)' cn:
This returns the cn attribute of a group

./adsearch.sh '(objectclass=user)' cn:
This returns th ecn attribute of a user

./adsearch.sh 'cn= jonathan locke' memberof
This returns the member ship of groups for cn=jonathan locke

