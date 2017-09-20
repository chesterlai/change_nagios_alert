#!/bin/sh
# This is a sample shell script showing how you can submit the ENABLE_HOST_SVC_NOTIFICATIONS command
# to Nagios.  Adjust variables to fit your environment as necessary.

now=`date +%s`
commandfile='/usr/local/nagios/var/rw/nagios.cmd'

for host in `cat hosts`;
do /usr/bin/printf "[%lu] DISABLE_HOST_SVC_NOTIFICATIONS;$host\n" $now > $commandfile;
/usr/bin/printf "[%lu] DISABLE_HOST_NOTIFICATIONS;$host\n" $now > $commandfile;
done
