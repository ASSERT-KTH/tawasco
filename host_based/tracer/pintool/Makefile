
# To allow sudo make install without mandating root to define PIN_ROOT
CONFIG_ROOT := $(PIN_ROOT)/source/tools/Config
include $(CONFIG_ROOT)/makefile.config
include $(TOOLS_ROOT)/Config/makefile.default.rules

PREFIX=/usr/local

ifeq ($(TARGET_OS), linux)
all: ia32 intel64
endif

ifneq ($(TARGET_OS), linux)
all: intel64
endif

$(OBJDIR)tracer.so: $(OBJDIR)tracer$(OBJ_SUFFIX)
	$(LINKER) $(TOOL_LDFLAGS_NOOPT) $(LINK_EXE)$@ $(^:%.h=) $(TOOL_LPATHS) $(TOOL_LIBS) 

# Just if not macos
ifeq ($(TARGET_OS), linux)
ia32:
	@echo "PIN_ROOT is $(PIN_ROOT) $(CONFIG_ROOT)"
	mkdir -p obj-ia32
	$(MAKE) TARGET=ia32 obj-ia32/tracer.so
endif

intel64:
	@echo "PIN_ROOT is $(PIN_ROOT)"
	mkdir -p obj-intel64
	$(MAKE) TARGET=intel64 obj-intel64/tracer.so

ifeq ($(TARGET_OS), linux)
clean-all:
	$(MAKE) TARGET=ia32 clean
	$(MAKE) TARGET=intel64 clean
endif


ifneq ($(TARGET_OS), linux)
clean-all:
	$(MAKE) TARGET=intel64 clean
endif