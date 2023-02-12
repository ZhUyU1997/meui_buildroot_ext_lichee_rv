################################################################################
#
# MEUI
#
################################################################################

MEUI_VERSION = 0.0.1-b719b2227c565de955a5f57d0fd7e05e6a8be887
MEUI_SITE = $(call github,ZhUyU1997,MEUI,b719b2227c565de955a5f57d0fd7e05e6a8be887)
# MEUI_SITE = $(TOPDIR)/../MEUI
# MEUI_SITE_METHOD = local

define MEUI_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) PLATFORM=sdl2-core -C $(@D) 
endef

define MEUI_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/meui $(TARGET_DIR)/usr/bin/meui
endef

$(eval $(generic-package))