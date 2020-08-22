@echo off
setlocal

:: # Test instructions
:: 1. Set the release name (set release=$name)
:: 2. Run `test`

set release=monaco

.\%release%\sassc.exe _test\test.scss _test\actual.css
fc _test\expected.css _test\actual.css
if %errorlevel% neq 0 exit /b 1

endlocal
