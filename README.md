# BatchLibrary
Set of useful dos prompt scripts




Batch scripts
=============


<hr />



FormatTime.bat
-----------



### Description
Convert time in hundredths of a second in to a string representation.



### Parameters
1 - Result variable name, optional.
2 - Time in hundredths of a second.
3 - Format of a time, optional. Allowed values:
  * -h (default) human readable format: 1 day 2 h 34 m 56.78 s
  * -m strict machine readable format: 1 02:34:56.78

Decimal separator before hundredths of a second and a separator between hours, minutes, and seconds
depends on user settings in Windows.


### Returns
None

<hr />



GetRegValue.bat
-----------



### Description
Extract value from registry a a string.



### Parameters
1 - Result variable name.
2 - Registry key name.
3 - Registry value name.



### Returns
None

<hr />



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
<hr />



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

