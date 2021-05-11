all:
	@echo Did you mean to run \"make install\"?
install:
	@echo Why
	cp Windows_Update.timer /usr/lib/systemd/system/windows-update.timer
	cp Windows_Update.service /usr/lib/systemd/system/windows-update.service
	systemctl enable windows-update.timer --now
	cp winupdate.sh /usr/bin/winupdate
	@echo Done
	@echo run "make uninstall" to remove Windows Update
uninstall:
	@echo Good choice.
	systemctl disable windows-update.timer --now
	rm /usr/lib/systemd/system/windows-update.timer
	rm /usr/lib/systemd/system/windows-update.service
	rm /usr/bin/winupdate
	@echo Done