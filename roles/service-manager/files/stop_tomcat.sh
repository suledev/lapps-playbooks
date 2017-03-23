log "Stopping tomcat."
	if [[ $OS = redhat7 || $OS = centos ]] ; then
		systemctl stop tomcat
	else
		service tomcat stop
		while [[ `ps aux | grep bootstrap.jar | grep -v grep | wc -l` -gt 0 ]] ; do
			echo "Waiting for tomcat to shut down."
			sleep 5
		done
	fi
