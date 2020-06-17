# BatchLibrary
Set of useful dos prompt scripts





Batch scripts
=============

TimeInHs.bat
-----------

### Description
Convert time in system long time format into integer containing
number of hundreths of a second counted from midnight.

### Parameters
1 - Time in system long time format.

Supported time formats:
- HH:mm:ss,hs
- HH:mm:ss.hs
- HH.mm.ss,hs
- HH.mm.ss,hs
- HH:mm:ss
- HH.mm.ss

For now does not support time in 12 hours format with AM/PM.

### Returns
ERRORLEVEL    - Number of hundreths of a second counted from midnight.



Version.bat
-----------

### Description
Get the Windows version.

### Parameters
1 - Result variable name, optional. If not given VERSION is used.

### Returns
ERRORLEVEL    - Set to major version number, e.g. 10 for Windows 10.

VESRION       - Full (without build no) version number e.g. 10.0.

VERSION_MAJOR - Set to major version number, e.g. 10.

VERSION_MINOR - Set to minor version number, e.g. 0.

