@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title Osint tool
color b
:menu
type menu.py
echo.
echo                                 1. People Aggregagtor  2. Phone Number  3. Email Searches
echo.                                                    4. Changelog

set /p action= What are we doing:
if '%action%'=='1' goto People
if '%action%'=='2' goto Phone
if '%action%'=='3' goto Email
if '%action%'=='4' goto changelog
) else (
    echo Invalid choice, please try again.
	pause >nul
	cls
    goto menu

:People
cls
echo 1. People Seacrh Engine
echo 2. Advanced Back Ground Checks
echo 3. Check People
echo 4. Fast People Search 
echo 5. Local Family
echo 6. Intelius 
echo 7. White Pages
echo 8. Fast Back Ground Check
echo 9. Go back

set /p action= Enter here:
if '%action%'=='1' goto Engine
if '%action%'=='2' goto Advanced
if '%action%'=='3' goto Check
if '%action%'=='4' goto Fast
if '%action%'=='5' goto Local
if '%action%'=='6' goto Intelius
if '%action%'=='7' goto White
if '%action%'=='8' goto BackGround
if '%action%'=='9' goto Goback
) else (
    echo Invalid choice, please try again.
	pause >nul
	cls
    goto People

:Engine
start https://www.addresses.com/
goto People

:Advanced
start https://www.advancedbackgroundchecks.com/
goto People

:Check
start https://checkpeople.com/
goto People

:Fast
start https://www.fastpeoplesearch.com/
goto People

:Local
start https://www.locatefamily.com/
goto People

:Intelius
start https://www.intelius.com/
goto People

:white
start https://www.whitepages.com/
goto People

:BackGround
start https://www.fastbackgroundcheck.com/
goto People

:Phone
cls
echo 1. CarrierLookup
echo 2. Phone book
echo 3. Textnow
echo 4. Go back

set /p action= Enter here:
if '%action%'=='1' goto Carrier
if '%action%'=='2' goto Phonebook
if '%action%'=='3' goto Textnow
if '%action%'=='4' goto Goback
) else (
    echo Invalid choice, please try again.
	pause >nul
	cls
    goto Phone

:Carrier
start https://www.carrierlookup.com/
goto phone

:Phonebook
start https://www.usphonebook.com/
goto phone

:Textnow
start https://www.textnow.com/
goto phone

:Email
cls
echo 1. Have I Been Pwned
echo 2. Breach Directory
echo 3. We leak info
echo 4. Dehashed
echo 5. Go back

set /p action= Enter here:
if '%action%'=='1' goto HIBP
if '%action%'=='2' goto Breach
if '%action%'=='3' goto Leakinfo
if '%action%'=='4' goto Dehashed
if '%action%'=='5' goto Goback
) else (
    echo Invalid choice, please try again.
	pause >nul
	cls
    goto Email

:HIBP
start https://haveibeenpwned.com/
goto Email

:Breach
start https://breachdirectory.org/
goto Email

:Leakinfo
start https://weleakinfo.io/
goto Email

:Dehashed
start https://dehashed.com/
goto Email

:changelog
cls
echo V1.00
echo Osint tool release
pause >nul
cls
goto menu

:Goback
cls
goto menu

