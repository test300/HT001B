#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <Date.au3>
$Fecha =  StringSplit(_NowDate(), "/")

; Create file in same folder as script
$sFileName = @ScriptDir &"\SYSCFG.TXT"

; Open file - deleting any existing content
$hFilehandle = FileOpen($sFileName, $FO_OVERWRITE)

; Prove it exists

FileWrite($hFilehandle, "[CFG]" & @CRLF)
FileWrite($hFilehandle, "UPDATA=0" & @CRLF)
FileWrite($hFilehandle, "MODE=1" & @CRLF)
FileWrite($hFilehandle, "PICTURE_RESOLUTION=1" & @CRLF)
FileWrite($hFilehandle, "STILL_SHOT_NUM=1" & @CRLF)
FileWrite($hFilehandle, "VIDEO_RESOLUTION=1" & @CRLF)
FileWrite($hFilehandle, "RECORDING_TIME=1" & @CRLF)
FileWrite($hFilehandle, "PIR_DISTANCE=3" & @CRLF)
FileWrite($hFilehandle, "RESPOND_INTERVAL=1" & @CRLF)
FileWrite($hFilehandle, "AUDIO=0" & @CRLF)
FileWrite($hFilehandle, "LASER=1" & @CRLF)
FileWrite($hFilehandle, "DATETIME_FORMAT=1" & @CRLF)
FileWrite($hFilehandle, "DATETIME=" & $Fecha[3] & "/" & $Fecha[2] & "/" & $Fecha[1] & " " & _NowTime()  & @CRLF)
FileWrite($hFilehandle, "CAM_NAME=Cam0" & @CRLF)

FileClose($hFilehandle)