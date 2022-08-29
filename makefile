NDK=/opt/android-sdk/ndk/25.1.8937393
all:clean build run

build:
	mkdir -p build && cd build && cmake ../ -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-26  -DANDROID_NDK=$(NDK) -DCMAKE_TOOLCHAIN_FILE=$(NDK)/build/cmake/android.toolchain.cmake -GNinja && ninja 

clean:
	rm -rf build
run:
	adb push build/src/sample /data/local/tmp/ && adb shell "/data/local/tmp/sample"