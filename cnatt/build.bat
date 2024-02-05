@echo off

if not exist build mkdir build
pushd build

set compile_flags=/W4 /Zi /Fe:Test.exe /MTd -D UNICODE
set linker_flags=gdi32.lib user32.lib kernel32.lib shell32.lib

cl %compile_flags% ../*.cpp /link %linker_flags%

popd