install:
	cp setup.bash /etc/init.d/
	chmod +x /etc/init.d/setup.bash
	update-rc.d -f setup.bash defaults

uninstall:
	update-rc.d -f setup.bash remove
	rm -rf /etc/init.d/setup.bash
