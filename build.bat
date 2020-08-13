@echo off

if not exist build (
	mkdir build
)
pushd build

if not exist win64 (
	mkdir win64
)

pushd win64
echo "==> Creating Plugins win64 project"
cmake -DCMAKE_CONFIGURATION_TYPES="Debug;Release" -G "Visual Studio 14 Win64" "%~dp0"
echo "==> Creating Plugins win64 project"
popd
popd


echo "================> Builded process completed successfully!"