configure:
	cd pkg && sudo ./sudosetup.sh && ./setup.sh
	@echo Setup complete. Do not run this command again. Reboot to apply changes.
install-packages:
	cd pkg && sudo ./install-official-packages.sh && ./install-aur-packages.sh

