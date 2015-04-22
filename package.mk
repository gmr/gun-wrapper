APP_NAME:=gun

DEPS:=cowlib-wrapper ranch-wrapper

UPSTREAM_GIT:=https://github.com/ninenines/gun.git
UPSTREAM_REVISION:=a752035
RETAIN_ORIGINAL_VERSION:=true
RELEASABLE:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE $(APP_DIR)/LICENSE-ISC-Gun
endef
