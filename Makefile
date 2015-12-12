#########################
## Makefile for mkcd
#########################
version := 1.0
name    := KNOWLEDGE

# Environment Variables
local_flags := $(CFLAGS) $(cflags)
ifdef CC
  local_cc := $(CC)
else
  local_cc := gcc
endif

.PHONY: clean mkcd debug install install-debug
clean:
	@rm -f mkcd mkcd-debug $<
	@echo "Build files removed!" $<
  
mkcd: 
	@echo "Compiling..." $<
	@echo "" $<
	@$(local_cc) mkcd.c -g0 -Wno-unused-result -Wno-multichar $(local_flags) -o mkcd $<
	@echo "Done! Final Binary: ./mkcd" $<
  
debug: 
	@echo "Compiling..." $<
	@echo "" $<
	@$(local_cc) mkcd.c -g3 -Og $(local_flags) -o mkcd-debug $<
	@echo "Done! Final Binary: ./mkcd-debug" $<

install:
	@echo "Installing.." $<
	@echo "" $<
	@sudo mkdir -p /usr/local/bin $<
	@sudo cp mkcd /usr/bin/mkcd $<
	@echo "Done!" $<
	
install-debug:
	@echo "Installing..." $<
	@echo "" $<
	@sudo mkdir -p /usr/local/bin $<
	@sudo cp mkcd-debug /usr/bin/mkcd $<
	@echo "Done!" $<
