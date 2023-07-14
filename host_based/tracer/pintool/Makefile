
# To allow sudo make install without mandating root to define PIN_ROOT
ifneq ("$(PIN_ROOT)", "")
    CONFIG_ROOT := $(PIN_ROOT)/source/tools/Config
    include $(CONFIG_ROOT)/makefile.config
    include $(TOOLS_ROOT)/Config/makefile.default.rules
endif

PREFIX=/usr/local
all: ia32 intel64

$(OBJDIR)tracer.so: tracer.cpp
	$(LINKER) $(TOOL_LDFLAGS_NOOPT) $(LINK_EXE)$@ $(TOOL_LPATHS) $(TOOL_LIBS) -I "./common"

ia32:
	@echo "PIN_ROOT is $(PIN_ROOT) $(CONFIG_ROOT)"
	mkdir -p obj-ia32
	$(MAKE) TARGET=ia32 obj-ia32/tracer.so

intel64:
	@echo "PIN_ROOT is $(PIN_ROOT)"
	mkdir -p obj-intel64
	$(MAKE) TARGET=intel64 obj-intel64/tracer.so

clean-all:
	$(MAKE) TARGET=ia32 clean
	$(MAKE) TARGET=intel64 clean
