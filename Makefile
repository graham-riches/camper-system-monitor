.DEFAULT_GOAL:=help
CMAKE:=cmake
NINJA:=ninja
TOOLCHAIN:=toolchain.cmake
BUILD_DIR:=build
TEST_DIR:=tests/unit-tests
TEST_BUILD_DIR:=tests/unit-tests/build

help:                                       ## Show this help.
	@echo "Available Targets to Build"
	@echo "-------------------------------------------------------------------------------"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

$(BUILD_DIR)/CMakeCache.txt:
	$(CMAKE) -B $(BUILD_DIR) -S . -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=$(TOOLCHAIN) -DCMAKE_EXPORT_COMPILE_COMMANDS=1

.PHONY: build
build: $(BUILD_DIR)/CMakeCache.txt          ## Cross-compile the main binary
	make -j4 -C $(BUILD_DIR) --no-print-directory

.PHONY: build-and-load
build-and-load: $(BUILD_DIR)/CMakeCache.txt ## Cross-compile the main binary and upload over SCP
	make -j4 -C $(BUILD_DIR) --no-print-directory \
	&& scp build/system-monitor root@192.168.1.40:/home/system_monitor/system_monitor \
	&& scp -r source/qml root@192.168.1.40:/home/system_monitor/

.PHONY: cleanbuild
cleanbuild:                                 ## Clean the main build
	make clean -C $(BUILD_DIR) --no-print-directory


$(TEST_BUILD_DIR)/CMakeCache.txt:
	$(CMAKE) -B $(TEST_BUILD_DIR) -S $(TEST_DIR) -DCMAKE_BUILD_TYPE=Debug

.PHONY: tests
tests: $(TEST_BUILD_DIR)/CMakeCache.txt     ## Build the project unit tests	
	make -j4 -C $(TEST_BUILD_DIR) --no-print-directory

.PHONY: runtests
runtests:                                   ## Run the unit tests
	cd $(TEST_BUILD_DIR) && ctest

.PHONY: cleantests
clean:                                      ## Clean the unit tests
	make clean -C $(TEST_BUILD_DIR) --no-print-directory

.PHONY: load
load:                                       ## Load the binary to the remote target
	cd scripts && ./upload_build.sh