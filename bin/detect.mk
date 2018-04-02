UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    OS := linux
endif
ifeq ($(UNAME_S),Darwin)
    OS := darwin
endif
UNAME_P := $(shell uname -p)
ifeq ($(UNAME_P),x86_64)
    PROC := amd64
endif
ifneq ($(filter %86,$(UNAME_P)),)
    PROC := ia32
endif
ifneq ($(filter arm%,$(UNAME_P)),)
    PROC := arm
endif
