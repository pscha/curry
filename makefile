default:
	@echo "to install use 'make install'"
	@echo "to make a local install use 'make localinstall'"
	@echo "to uninstall use 'make uninstall' ! be aware that every configuration at '~/.curry' will be removed"

localinstall:
	@echo "creating an installation at '~/bin'"
	mkdir $(HOME)/.curry || echo ".curry already in place"
	cp curry.sh $(HOME)/bin/curry
	chmod u+x $(HOME)/bin/curry

install:
	@echo "installing to '/usr/local/bin/'"
	mkdir $(HOME)/.curry || echo ".curry already in place"
	sudo cp curry.sh /usr/local/bin/curry
	sudo chmod a+x /usr/local/bin/curry

uninstall:
	@echo "uninstalling curry"
	rm -rf $(HOME)/.curry
	rm $(HOME)/bin/curry || true
	sudo rm /usr/local/bin/curry || true 
