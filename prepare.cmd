@echo off
setlocal

:: # Build instructions
:: 1. Set the version number (set v=$version)
:: 2. Run `prepare`
:: 3. Build the project with x64 Release config in Visual Studio
:: 4. Copy sassc.exe into the respective directory

set v=3.6.1

curl -Lo libsass.zip https://github.com/sass/libsass/archive/%v%.zip
tar xf libsass.zip
del libsass.zip

curl -Lo libsass-%v%\sassc.zip https://github.com/sass/sassc/archive/%v%.zip
tar xf libsass-%v%\sassc.zip -C libsass-%v%
del libsass-%v%\sassc.zip

endlocal
