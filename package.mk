APP_NAME:=gun

UPSTREAM_GIT:=https://github.com/ninenines/gun.git
UPSTREAM_REVISION:=a752035
RETAIN_ORIGINAL_VERSION:=true

STANDALONE_TEST_COMMANDS:=eunit:test([faux_test],[verbose])

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE $(APP_DIR)/LICENSE-ISC-Gun
endef
