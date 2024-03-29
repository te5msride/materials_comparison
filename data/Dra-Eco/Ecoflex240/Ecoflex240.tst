BEGIN_FILE
	Version 1.0
	Collection CellScaleBiaxial

BEGIN_BLOCK

BEGIN_DEVICES
1	csGen1	COM6	AutoDetectCOM	UniAxial	LoadcellX	20000	36.564	Temperature	37	IdleCurrent	1	ThreadsPerInch 6	AllowCompressionTestModes	NoExternalSync
	PreloadEx 2 250 50 600 5 7 100

BEGIN_CAMERAS
1	DMKCamera	USB	10	10	CameraIndex  	PixPerUmPerZoom	0.305	Maxfps	44.8201	Resolution 2048x2048

BEGIN_DISPLAYS
1	Video	1	Live_Video	626	626	412	354	FixedAspectRatio

BEGIN_CHARTS
1	Force_N	FAuto	0	2	Time_S	FAuto	0	40	Position	600	0
	Series	1	X	(255,0,0)	2
2	Displacement_mm	FAuto	0	30	Time_S	FAuto	0	40	Position	600	350
	Series	1	X	(255,0,0)	2
3	Force_N	FAuto	0	2	Displacement_mm	FAuto	0	30	Position	600	700	ClearBetweenCycles
	Series	1	X	(255,0,0)	2

BEGIN_HARDWAREOPTS
TemplateHardwareVersion	1
TemperatureSetPoint	37
PreloadSettingsEx2 2 250 50 600 5 7 7 100
IdleCurrent 1
SyncPulseDivisor -1
TestMode TENSION
CameraType	DMKCamera
CameraShutter	10
CameraGain	10
CameraResolution	0


BEGIN_CONTROLS
Timestamp	Seconds
SampleSizeX_um	44000
SampleSizeY_um	4700
NumTrueStrainSegments	10
NumDataAveragingPoints	1
SizeAdjustWithPreload
SoftLimits	500	300000	100	40000
SoftForceLimits2	-1	25000
TemperatureWarnings	0	1
ResetWarning	1
ZeroWarning	0
SystemCompensation	0
OutputColumns	SetName	Cycle	Time_S	Size_mm	Displacement_mm	Force_N

BEGIN_MULTISET
Name	XMode	XFunction	XUnits	XMagnitude	XPreloadType	XPreloadMag	YMode	YFunction	YUnits	YMagnitude	YPreloadType	YPreloadMag	StretchDurationSec	RecoveryDurationSec	HoldTimeSec	RestTimeSec	NumReps	DataFreqHz	ImageFreqHz	SendCOM	
Elongation[_]till[_]break	Disp	Ramp	%	100	Every	100	Disp	Ramp	um	0	None	100	20	10	0	0	1	5	1	0	_	
