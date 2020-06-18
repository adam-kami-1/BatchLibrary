# BatchLibrary
Set of useful dos prompt scripts

* [Automatic tests](#TOC_Automatic_tests)

* [Batch scripts](#TOC_Batch_scripts)
  * [FormatTime.bat](#TOC_FormatTime)
  * [GetRegValue.bat](#TOC_GetRegValue)
  * [HowLong.bat](#TOC_HowLong)
  * [Menu.bat](#TOC_Menu)
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
* Version.bat

Following tests are not yet ready:

* CreateShortcut.bat
* GetPathPart.bat
* Kill.bat
* Run.bat
* Which.bat



Following scripts are unable to test automatically

* Log.bat
* LogSystem.bat


<a id="TOC_Batch_scripts"></a>Batch scripts
===========================================



<a id="TOC_FormatTime"><hr /></a>

FormatTime.bat
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



<a id="TOC_GetRegValue"><hr /></a>

GetRegValue.bat
-------------------------------------------------


### Description
Extract value from registry a a string.


### Parameters
1 - Result variable name.
2 - Registry key name.
3 - Registry value name.


### Returns
None



<a id="TOC_HowLong"><hr /></a>

HowLong.bat
-----------------------------------------


### Description
Run application or a script calculating real time used by it.


### Parameters
Command and its parameters required to run.

### Returns
ERRORLEVEL    - Number of hundredths of a second.



<a id="TOC_TimeDiff"><hr /></a>

TimeDiff.bat
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



<a id="TOC_Menu"><hr /></a>

Menu.bat
-----------------------------------------------


### Description
Script used to initialize, build, run and clear simple text menu.


### Parameters
1. Operation to exec by the script:
    * Init - Initialize menu
	    2. Name of temporary menu file.
		3. Unique ASCII character, not present in menu items and values.
		   This is optional parameter. default value is "|".
	* AddItem - Add single item to menu.
	    2. Name of temporary menu file.
		3. Item value to be returned when item selected in menu.
		4. Item description to be displayed in menu. Optional,
		   If not present then identical to item value.
	* Select - Run menu, and select one of menu items.
		2. Result variable name.
		3. Name of temporary menu file.
		4. Message
	* Clear - Delete all temporary files created during initialization.
	    2. Name of temporary menu file.

### Returns
None



<a id="TOC_Sleep"><hr /></a>

Sleep.bat
-----------------------------------------------


### Description
Wait specified number of seconds.


### Parameters
1. Number of seconds. Invalid value is treated as 0.

### Returns
None



<a id="TOC_TimeInHs"><hr /></a>

TimeInHs.bat
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



<a id="TOC_Version"><hr /></a>

Version.bat
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

