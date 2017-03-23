log "Staring tomcat."
	if [[ $OS = redhat7 || $OS = centos ]] ; then
		systemctl start tomcat
	else
		service tomcat start
	fi
