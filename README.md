

# Cross-Compiling Qt with Digi Yocto Toolchain

1. Download QT opensource code from the QT download mirrors [https://download.qt.io/](here)
2. Unzip everything
3. Run the following command:
```
./configure -prefix /usr/local/qt5 -device linux-imx6-g++ \
-device-option CROSS_COMPILE=/opt/dey/2.4-r3/sysroots/x86_64-deysdk-linux/usr/bin/arm-dey-linux-gnueabi/arm-dey-linux-gnueabi- \
-sysroot /opt/dey/2.4-r3/sysroots/cortexa9hf-neon-dey-linux-gnueabi \
-nomake examples -nomake tests -nomake tools -skip qtwebengine -v -opensource -confirm-license⏎
```
4. Patch any compile/include errors in the code. Most of these are just adding `#include <limits>`
5. Once the configuration is successful: `make`
6. Then `sudo make install`

