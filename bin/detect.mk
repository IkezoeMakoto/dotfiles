UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    OS := linux
endif
ifeq ($(UNAME_S),Darwin)
    OS := darwin
endif
UNAME_M := $(shell uname -m)
ifeq ($(UNAME_M),x86_64)
    PROC := amd64
endif
ifeq ($(UNAME_M),i386)
    PROC := 386
endif
ifneq ($(filter arm%,$(UNAME_M)),)
    PROC := arm64
endif
