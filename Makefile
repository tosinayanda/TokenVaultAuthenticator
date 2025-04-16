
# Generic EntryPoint Makefile that checks the OS and then includes the appropriate OS-specific file
UNAME := $(shell uname -s)

ifeq ($(UNAME),Darwin)
    include Makefile.mac
else ifneq (,$(findstring MINGW,$(UNAME)))
    include Makefile.win
else
    all:
        @echo "Unsupported operating system for this Makefile."
endif