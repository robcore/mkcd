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

.PHONY: clean mkcd install 
clean:
	@rm -f mkcd $<
	@echo "Build files removed!" $<
  
mkcd: 
	@echo "Compiling..." $<
	@echo "" $<
	@$(local_cc) mkcd.c -std=c90 $(local_flags) -o mkcd $<
	@echo "Done! Final Binary: ./mkcd" $<
  
install:
	@echo "Installing.." $<
	@echo "" $<
	@sudo mkdir -p /usr/local/bin $<
	@sudo cp mkcd /usr/bin/mkcd $<
	@echo "Done!" $<
