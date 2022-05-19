all:
	@echo Did you mean to run \"make install\"?
install:
	@echo Why
	$(MAKE) _create_required_directories
	$(MAKE) _copy_files
	systemctl daemon-reload
	$(MAKE) _enable_units
	@echo Done
	@echo run "make uninstall" to remove Windows Update
uninstall:
	@echo Good choice.
	$(MAKE) _disable_units
	$(MAKE) _delete_files
	$(MAKE) _delete_old_files
	systemctl daemon-reload
	@echo Done

_create_required_directories:
	mkdir -p /usr/local/sbin /usr/local/lib/systemd/system
_copy_files:
	cp Windows_Update.timer /usr/local/lib/systemd/system/windows-update.timer
	cp Windows_Update.service /usr/local/lib/systemd/system/windows-update.service
	cp winupdate.sh /usr/local/sbin/winupdate
_enable_units:
	systemctl enable windows-update.timer --now

_disable_units:
	systemctl disable windows-update.timer --now
_delete_files:
	rm /usr/local/lib/systemd/system/windows-update.timer
	rm /usr/local/lib/systemd/system/windows-update.service
	rm /usr/local/sbin/winupdate
_delete_old_files:
	rm /usr/lib/systemd/system/windows-update.timer
	rm /usr/lib/systemd/system/windows-update.service
	rm /usr/bin/winupdate