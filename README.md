# BatchLibrary
Set of useful dos prompt scripts

* [Automatic tests](#TOC_Automatic_tests)

* [Batch scripts](#TOC_Batch_scripts)
  * [FormatTime.bat](#TOC_FormatTime)
  * [GetRegValue.bat](#TOC_GetRegValue)
  * [HowLong.bat](#TOC_HowLong)
  * [Sleep.bat](#TOC_Sleep)
  * [TimeDiff.bat](#TOC_TimeDiff)
  * [TimeInHs.bat](#TOC_TimeInHs)
  * [Version.bat](#TOC_Version)



<a id="TOC_Automatic_tests"></a>Automatic tests
===============================================

Test are prepared for following scripts:

* FormatTime.bat
* GetRegValue.bat
* HowLong.bat
* Menu.bat
* SelectDirectory.bat
* SelectFile.bat
* Sleep.bat
* TimeDiff.bat
* TimeInHs.bat

Following tests are not yet ready:

* CreateShortcut.bat
* GetPathPart.bat
* Kill.bat
* Run.bat
* Which.bat



Following scripts are unable to test automatically

* Log.bat
* LogSystem.bat
* Version.bat


<a id="TOC_Batch_scripts"></a>Batch scripts
===========================================



<hr /><a id="TOC_FormatTime"></a>FormatTime.bat
-----------------------------------------------


### Description
Convert time in hundredths of a second in to a string representation.


### Parameters
1. Result variable name.
2. Time in hundredths of a second.
3. Format of a time, optional. Allowed values:
    * -h (default) human readable format: 1 day 2 h 34 m 56.78 s
    * -m strict machine readable format: 1 02:34:56.78

Decimal separator before hundredths of a second and a separator between hours, minutes, and seconds
depends on user settings in Windows.

### Returns
None



<hr /><a id="TOC_GetRegValue"></a>GetRegValue.bat
-------------------------------------------------


### Description
Extract value from registry a a string.


### Parameters
1 - Result variable name.
2 - Registry key name.
3 - Registry value name.


### Returns
None



<hr /><a id="TOC_HowLong"></a>HowLong.bat
-----------------------------------------


### Description
Run application or a script calculating real time used by it.


### Parameters
Command and its parameters required to run.

### Returns
ERRORLEVEL    - Number of hundredths of a second.



<hr /><a id="TOC_TimeDiff"></a>TimeDiff.bat
-------------------------------------------


### Description
Calculates difference between times gives as two parameters.


### Parameters
1. First time in format: HH:MM:SS,hs or HH:MM:SS.hs.
2. Second time in format: HH:MM:SS,hs or HH:MM:SS.hs.

The difference Second - First time is returned in hundredths of a second.
It is assumed that both times First and Second are in the same day, or
the second is in the next day but then have to be smaller than First.

### Returns
ERRORLEVEL    - Number of hundredths of a second.










<hr /><a id="TOC_Sleep"></a>Sleep.bat
-----------------------------------------------


### Description
Wait specified number of seconds.


### Parameters
1. Number of seconds. Invalid value is treated as 0.

### Returns
None



<hr /><a id="TOC_TimeInHs"></a>TimeInHs.bat
-------------------------------------------


### Description
Convert time in system long time format into integer containing
number of hundredths of a second counted from midnight.


### Parameters
1. Time in system long time format.

Supported time formats:
- HH:mm:ss,hs
- HH:mm:ss.hs
- HH.mm.ss,hs
- HH.mm.ss,hs
- HH:mm:ss
- HH.mm.ss

For now does not support time in 12 hours format with AM/PM.


### Returns
ERRORLEVEL    - Number of hundredths of a second counted from midnight.



<hr /><a id="TOC_Version"></a>Version.bat
-----------------------------------------


### Description
Get the Windows version.


### Parameters
1. Result variable name, optional. If not given VERSION is used.


### Returns
ERRORLEVEL    - Set to major version number, e.g. 10 for Windows 10.

VESRION       - Full (without build no) version number e.g. 10.0.

VERSION_MAJOR - Set to major version number, e.g. 10.

VERSION_MINOR - Set to minor version number, e.g. 0.

