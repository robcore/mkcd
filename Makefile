#########################
## Makefile for mkcd
#########################
version := 2.0
name    := In the back of a popeyes

.PHONY: install 
install:
	@echo "Installing.." $<
	@echo "" $<
	@sudo mkdir -p /usr/local/bin $<
	@sudo cp mkcd /usr/bin/mkcd $<
	@sudo chmod a+x /usr/bin/mkcd $<
	@echo "Done!" $<
