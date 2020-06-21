# BatchLibrary
Set of useful dos prompt scripts

* [Automatic tests](#TOC_Automatic_tests)

* [Batch scripts](#TOC_Batch_scripts)
  * [FormatTime.bat](#TOC_FormatTime)
  * [GetPathPart.bat](#TOC_GetPathPart)
  * [GetRegValue.bat](#TOC_GetRegValue)
  * [HowLong.bat](#TOC_HowLong)
  * [Log.bat](#TOC_Log)
  * [LogSetFile.bat](#TOC_LogSetFile)
  * [LogSetLevel.bat](#TOC_LogSetLevel)
  * [Menu.bat](#TOC_Menu)
  * [Sleep.bat](#TOC_Sleep)
  * [TimeDiff.bat](#TOC_TimeDiff)
  * [TimeInHs.bat](#TOC_TimeInHs)
  * [Version.bat](#TOC_Version)



<a id="TOC_Automatic_tests"></a>Automatic tests
================================================================================

Test are prepared for following scripts:

* FormatTime.bat
* GetPathPart.bat
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
* Kill.bat
* Run.bat



Following scripts are unable to test automatically

* Log.bat
* LogSystem.bat


<a id="TOC_Batch_scripts"></a>Batch scripts
================================================================================



<a id="TOC_FormatTime"><hr /></a>

## FormatTime.bat
--------------------------------------------------------------------------------


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


### Known limitations


### Depends
[GetRegValue.bat](#TOC_GetRegValue)


### Returns
Formatted time value in result variable.



<a id="TOC_GetPathPart"><hr /></a>

## GetPathPart.bat
--------------------------------------------------------------------------------


### Description
Extract selected part of a path given as a parameter.


### Parameters
1. Result variable name.
2. Path part code.

    - f - **F**ully qualified path name
    - d - **D**rive letter only
    - p - **P**ath only
    - n - File **n**ame without file extension or path
    - x - File e**x**tension only
    - a - File **a**ttributes
    - t - File date/**t**ime
    - z - File si**z**e

3. Input path.


### Known limitations


### Depends


### Returns
Extracted value in result variable.



<a id="TOC_GetRegValue"><hr /></a>

## GetRegValue.bat
--------------------------------------------------------------------------------


### Description
Extract value from registry a a string.


### Parameters
1. Result variable name.
2. Registry key name.
3. Registry value name.


### Known limitations


### Depends


### Returns
Extracted value in result variable. Values of type REG_DWORD and REG_QWORD 
are converted to decimal.



<a id="TOC_HowLong"><hr /></a>

## HowLong.bat
--------------------------------------------------------------------------------


### Description
Run application or a script calculating real time used by it. It dsiplays
used time in human readable format.


### Parameters
Command and its parameters required to run.


### Known limitations


### Depends
[FormatTime.bat](#TOC_FormatTime)
[TimeDiff.bat](#TOC_TimeDiff)


### Returns
ERRORLEVEL    - Number of hundredths of a second.



<a id="TOC_Log"><hr /></a>

## Log.bat
--------------------------------------------------------------------------------


### Description
Simple log utility.

If current log level is not configured with [LogSetLevel.bat](#TOC_LogSetLevel)
or configured to ALL then all parameters are displayed to standrad output.

If current log level is configured to one of values: CRITICAL, ERROR, WARNING, 
INFO, TRACE, DEBUG, then first parameter of Log.bat is treated ac message log
level. Other parameters are displayed when message log level is less or equal
to current log level.

If Log File Name is configured with [LogSetFile.bat](#TOC_LogSetFile) then Log.bat output is also
appended to configured log file.


### Parameters
If Current Log Level is ALL
1. 2. 3. 4. ... - Log message always displayed.

For all other values of Current Log Level
1. Message Level: CRITICAL, ERROR, WARNING, INFO, TRACE, DEBUG
2. 3. 4. ... - Log message displayed if Message Level <= Current Log Level


### Known limitations
- If any of leg message parameters contains one of following characters space( ), tab( ),
comma(,), semicolon(;), or equal sign(=) then the parameter have to be surrounded with
double quotes.
- The message parameters can not contain double quotes, unles used to surround the 
parameter. Double quotes will not be displayed.

### Depends


### Returns
None.



<a id="TOC_LogSetFile"><hr /></a>

## LogSetFile.bat
--------------------------------------------------------------------------------


### Description
Configure Log File Name to be used by [Log.bat](#TOC_Log).


### Parameters
1. Possible values:
    - Empty. Display currently configured Log File Name.
    - file name - File name to be used as Log File Name.
    - OFF - Disable logging to file.


### Known limitations


### Depends


### Returns
None.



<a id="TOC_LogSetLevel"><hr /></a>

## LogSetLevel.bat
--------------------------------------------------------------------------------


### Description
Configure Current Log Level to be used by [Log.bat](#TOC_Log).


### Parameters
1. Possible values:
    - Empty. Display currently configured Current Log Level.
    - New Current Log Level value:
        - ALL - All log messages are displayed,
        - CRITICAL - only CRITICAL log messages are displayed,
        - ERROR - only CRITICAL and ERROR log messages are displayed,
        - WARNING - only CRITICAL, ERROR, and WARNING log messages are displayed,
        - INFO - only CRITICAL, ERROR, WARNING, and INFO log messages are displayed,
        - TRACE - only CRITICAL, ERROR, WARNING, INFO, and TRACE log messages are 
                  displayed,
        - DEBUG - All log messages are displayed.


### Known limitations

### Depends


### Returns
None.



<a id="TOC_Menu"><hr /></a>

## Menu.bat
--------------------------------------------------------------------------------


### Description
Script used to initialize, build, run and clear simple text menu.


### Parameters
1. Operation to exec by the script:
    - Init - Initialize menu

        - 2. Name of temporary menu file.
        - 3. Unique ASCII character, not present in menu items and values.
             This is optional parameter. default value is "|".
    - AddItem - Add single item to menu.

        - 2. Name of temporary menu file.
        - 3. Item value to be returned when item selected in menu.
        - 4. Item description to be displayed in menu. Optional,
             If not present then identical to item value.
    - Select - Run menu, and select one of menu items.

        - 2. Result variable name.
        - 3. Name of temporary menu file.
        - 4. Message
    - Clear - Delete all temporary files created during initialization.

        - 2. Name of temporary menu file.

### Known limitations


### Depends


### Returns
Selected item value in result variable.



<a id="TOC_Sleep"><hr /></a>

## Sleep.bat
--------------------------------------------------------------------------------


### Description
Wait specified number of seconds.


### Parameters
1. Number of seconds. Invalid value is treated as 0.


### Known limitations


### Depends


### Returns
None



<a id="TOC_TimeDiff"><hr /></a>

## TimeDiff.bat
--------------------------------------------------------------------------------


### Description
Calculates difference between times gives as two parameters.


### Parameters
1. First time in format: HH:MM:SS,hs or HH:MM:SS.hs.
2. Second time in format: HH:MM:SS,hs or HH:MM:SS.hs.

The difference Second - First time is returned in hundredths of a second.


### Known limitations
It is assumed that both times First and Second are in the same day, or
the second is in the next day but then have to be smaller than First.


### Depends
[TimeInHs.bat](#TOC_TimeInHs)


### Returns
ERRORLEVEL    - Number of hundredths of a second.



<a id="TOC_TimeInHs"><hr /></a>

## TimeInHs.bat
--------------------------------------------------------------------------------


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


### Known limitations
For now does not support time in 12 hours format with AM/PM.


### Depends


### Returns
ERRORLEVEL    - Number of hundredths of a second counted from midnight.



<a id="TOC_Version"><hr /></a>

## Version.bat
--------------------------------------------------------------------------------


### Description
Get the Windows version.


### Parameters
1. Result variable name, optional. If not given VERSION is used.


### Known limitations


### Depends


### Returns
ERRORLEVEL    - Set to major version number, e.g. 10 for Windows 10.

VESRION       - Full (without build no) version number e.g. 10.0.

VERSION_MAJOR - Set to major version number, e.g. 10.

VERSION_MINOR - Set to minor version number, e.g. 0.

