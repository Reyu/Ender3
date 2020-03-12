; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: NaN mm
; Filament: NaN mm
; Created: Sat Oct 12 2019 20:04:18 GMT-0400 (Eastern Daylight Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 180 °C
; Bed Temperature = 60 °C
; Retraction Distance = 1 mm
; Layer Height = 0.2 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 230 mm
; Bed Size Y = 230 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.3
; Factor Stepping = 0.01
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 175 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = M420 L0 S1;
; Use FWRETRACT = true
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
M104 S180 ; set nozzle temperature but do not wait
M190 S60 ; set bed temperature and wait
M109 S180 ; block waiting for nozzle temp
G28 ; home all axes with heated bed
M420 L0 S1;; Activate bed leveling compensation
G21 ; set units to millimeters
M204 P500 ; set acceleration
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
G92 E0 ; reset extruder distance
G1 X115 Y115 F7200 ; move to start
G1 Z0.2 F1200 ; move to layer height
;
; prime nozzle
;
G1 X66 Y27.5 F7200 ; move to start
G1 X66 Y202.5 E17.4616 F1800 ; print line
G1 X66.72 Y202.5 F7200 ; move to start
G1 X66.72 Y27.5 E17.4616 F1800 ; print line
G10 ; retract
;
; print anchor frame
;
G1 X76 Y24.5 F7200 ; move to start
G11 ; un-retract
G1 X76 Y180.5 E6.8489 F1200 ; print line
G1 X76.48 Y180.5 F7200 ; move to start
G1 X76.48 Y24.5 E6.8489 F1200 ; print line
G10 ; retract
G1 X156 Y24.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y180.5 E6.8489 F1200 ; print line
G1 X155.52 Y180.5 F7200 ; move to start
G1 X155.52 Y24.5 E6.8489 F1200 ; print line
G10 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X76 Y27.5 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G11 ; un-retract
G1 X96 Y27.5 E0.7982 F1200 ; print line
G1 X136 Y27.5 E1.5965 F4200 ; print line
G1 X156 Y27.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y32.5 F7200 ; move to start
M900 K0.01 ; set K-factor
M117 K0.01 ; 
G11 ; un-retract
G1 X96 Y32.5 E0.7982 F1200 ; print line
G1 X136 Y32.5 E1.5965 F4200 ; print line
G1 X156 Y32.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y37.5 F7200 ; move to start
M900 K0.02 ; set K-factor
M117 K0.02 ; 
G11 ; un-retract
G1 X96 Y37.5 E0.7982 F1200 ; print line
G1 X136 Y37.5 E1.5965 F4200 ; print line
G1 X156 Y37.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y42.5 F7200 ; move to start
M900 K0.03 ; set K-factor
M117 K0.03 ; 
G11 ; un-retract
G1 X96 Y42.5 E0.7982 F1200 ; print line
G1 X136 Y42.5 E1.5965 F4200 ; print line
G1 X156 Y42.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y47.5 F7200 ; move to start
M900 K0.04 ; set K-factor
M117 K0.04 ; 
G11 ; un-retract
G1 X96 Y47.5 E0.7982 F1200 ; print line
G1 X136 Y47.5 E1.5965 F4200 ; print line
G1 X156 Y47.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y52.5 F7200 ; move to start
M900 K0.05 ; set K-factor
M117 K0.05 ; 
G11 ; un-retract
G1 X96 Y52.5 E0.7982 F1200 ; print line
G1 X136 Y52.5 E1.5965 F4200 ; print line
G1 X156 Y52.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y57.5 F7200 ; move to start
M900 K0.06 ; set K-factor
M117 K0.06 ; 
G11 ; un-retract
G1 X96 Y57.5 E0.7982 F1200 ; print line
G1 X136 Y57.5 E1.5965 F4200 ; print line
G1 X156 Y57.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y62.5 F7200 ; move to start
M900 K0.07 ; set K-factor
M117 K0.07 ; 
G11 ; un-retract
G1 X96 Y62.5 E0.7982 F1200 ; print line
G1 X136 Y62.5 E1.5965 F4200 ; print line
G1 X156 Y62.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y67.5 F7200 ; move to start
M900 K0.08 ; set K-factor
M117 K0.08 ; 
G11 ; un-retract
G1 X96 Y67.5 E0.7982 F1200 ; print line
G1 X136 Y67.5 E1.5965 F4200 ; print line
G1 X156 Y67.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y72.5 F7200 ; move to start
M900 K0.09 ; set K-factor
M117 K0.09 ; 
G11 ; un-retract
G1 X96 Y72.5 E0.7982 F1200 ; print line
G1 X136 Y72.5 E1.5965 F4200 ; print line
G1 X156 Y72.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y77.5 F7200 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G11 ; un-retract
G1 X96 Y77.5 E0.7982 F1200 ; print line
G1 X136 Y77.5 E1.5965 F4200 ; print line
G1 X156 Y77.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y82.5 F7200 ; move to start
M900 K0.11 ; set K-factor
M117 K0.11 ; 
G11 ; un-retract
G1 X96 Y82.5 E0.7982 F1200 ; print line
G1 X136 Y82.5 E1.5965 F4200 ; print line
G1 X156 Y82.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y87.5 F7200 ; move to start
M900 K0.12 ; set K-factor
M117 K0.12 ; 
G11 ; un-retract
G1 X96 Y87.5 E0.7982 F1200 ; print line
G1 X136 Y87.5 E1.5965 F4200 ; print line
G1 X156 Y87.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y92.5 F7200 ; move to start
M900 K0.13 ; set K-factor
M117 K0.13 ; 
G11 ; un-retract
G1 X96 Y92.5 E0.7982 F1200 ; print line
G1 X136 Y92.5 E1.5965 F4200 ; print line
G1 X156 Y92.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y97.5 F7200 ; move to start
M900 K0.14 ; set K-factor
M117 K0.14 ; 
G11 ; un-retract
G1 X96 Y97.5 E0.7982 F1200 ; print line
G1 X136 Y97.5 E1.5965 F4200 ; print line
G1 X156 Y97.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y102.5 F7200 ; move to start
M900 K0.15 ; set K-factor
M117 K0.15 ; 
G11 ; un-retract
G1 X96 Y102.5 E0.7982 F1200 ; print line
G1 X136 Y102.5 E1.5965 F4200 ; print line
G1 X156 Y102.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y107.5 F7200 ; move to start
M900 K0.16 ; set K-factor
M117 K0.16 ; 
G11 ; un-retract
G1 X96 Y107.5 E0.7982 F1200 ; print line
G1 X136 Y107.5 E1.5965 F4200 ; print line
G1 X156 Y107.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y112.5 F7200 ; move to start
M900 K0.17 ; set K-factor
M117 K0.17 ; 
G11 ; un-retract
G1 X96 Y112.5 E0.7982 F1200 ; print line
G1 X136 Y112.5 E1.5965 F4200 ; print line
G1 X156 Y112.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y117.5 F7200 ; move to start
M900 K0.18 ; set K-factor
M117 K0.18 ; 
G11 ; un-retract
G1 X96 Y117.5 E0.7982 F1200 ; print line
G1 X136 Y117.5 E1.5965 F4200 ; print line
G1 X156 Y117.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y122.5 F7200 ; move to start
M900 K0.19 ; set K-factor
M117 K0.19 ; 
G11 ; un-retract
G1 X96 Y122.5 E0.7982 F1200 ; print line
G1 X136 Y122.5 E1.5965 F4200 ; print line
G1 X156 Y122.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y127.5 F7200 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G11 ; un-retract
G1 X96 Y127.5 E0.7982 F1200 ; print line
G1 X136 Y127.5 E1.5965 F4200 ; print line
G1 X156 Y127.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y132.5 F7200 ; move to start
M900 K0.21 ; set K-factor
M117 K0.21 ; 
G11 ; un-retract
G1 X96 Y132.5 E0.7982 F1200 ; print line
G1 X136 Y132.5 E1.5965 F4200 ; print line
G1 X156 Y132.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y137.5 F7200 ; move to start
M900 K0.22 ; set K-factor
M117 K0.22 ; 
G11 ; un-retract
G1 X96 Y137.5 E0.7982 F1200 ; print line
G1 X136 Y137.5 E1.5965 F4200 ; print line
G1 X156 Y137.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y142.5 F7200 ; move to start
M900 K0.23 ; set K-factor
M117 K0.23 ; 
G11 ; un-retract
G1 X96 Y142.5 E0.7982 F1200 ; print line
G1 X136 Y142.5 E1.5965 F4200 ; print line
G1 X156 Y142.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y147.5 F7200 ; move to start
M900 K0.24 ; set K-factor
M117 K0.24 ; 
G11 ; un-retract
G1 X96 Y147.5 E0.7982 F1200 ; print line
G1 X136 Y147.5 E1.5965 F4200 ; print line
G1 X156 Y147.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y152.5 F7200 ; move to start
M900 K0.25 ; set K-factor
M117 K0.25 ; 
G11 ; un-retract
G1 X96 Y152.5 E0.7982 F1200 ; print line
G1 X136 Y152.5 E1.5965 F4200 ; print line
G1 X156 Y152.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y157.5 F7200 ; move to start
M900 K0.26 ; set K-factor
M117 K0.26 ; 
G11 ; un-retract
G1 X96 Y157.5 E0.7982 F1200 ; print line
G1 X136 Y157.5 E1.5965 F4200 ; print line
G1 X156 Y157.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y162.5 F7200 ; move to start
M900 K0.27 ; set K-factor
M117 K0.27 ; 
G11 ; un-retract
G1 X96 Y162.5 E0.7982 F1200 ; print line
G1 X136 Y162.5 E1.5965 F4200 ; print line
G1 X156 Y162.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y167.5 F7200 ; move to start
M900 K0.28 ; set K-factor
M117 K0.28 ; 
G11 ; un-retract
G1 X96 Y167.5 E0.7982 F1200 ; print line
G1 X136 Y167.5 E1.5965 F4200 ; print line
G1 X156 Y167.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y172.5 F7200 ; move to start
M900 K0.29 ; set K-factor
M117 K0.29 ; 
G11 ; un-retract
G1 X96 Y172.5 E0.7982 F1200 ; print line
G1 X136 Y172.5 E1.5965 F4200 ; print line
G1 X156 Y172.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X76 Y177.5 F7200 ; move to start
;
; mark the test area for reference
M117 K0 ;
M900 K0 ; set K-factor 0
G1 X96 Y182.5 F7200 ; move to start
G11 ; un-retract
G1 X96 Y202.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X136 Y182.5 F7200 ; move to start
G11 ; un-retract
G1 X136 Y202.5 E0.7982 F1200 ; print line
G10 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X158 Y25.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y25.5 E0.0798 F1200 ; 0
G1 X160 Y27.5 E0.0798 F1200 ; 0
G1 X160 Y29.5 E0.0798 F1200 ; 0
G1 X158 Y29.5 E0.0798 F1200 ; 0
G1 X158 Y27.5 E0.0798 F1200 ; 0
G1 X158 Y25.5 E0.0798 F1200 ; 0
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y35.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y35.5 E0.0798 F1200 ; 0
G1 X160 Y37.5 E0.0798 F1200 ; 0
G1 X160 Y39.5 E0.0798 F1200 ; 0
G1 X158 Y39.5 E0.0798 F1200 ; 0
G1 X158 Y37.5 E0.0798 F1200 ; 0
G1 X158 Y35.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y35.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y35.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y35.5 F7200 ; move to start
G11 ; un-retract
G1 X164 Y35.5 E0.0798 F1200 ; 0
G1 X164 Y37.5 E0.0798 F1200 ; 0
G1 X164 Y39.5 E0.0798 F1200 ; 0
G1 X162 Y39.5 E0.0798 F1200 ; 0
G1 X162 Y37.5 E0.0798 F1200 ; 0
G1 X162 Y35.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X165 Y35.5 F7200 ; move to start
G11 ; un-retract
G1 X165 Y37.5 F7200 ; move to start
G1 X165 Y39.5 F7200 ; move to start
G1 X167 Y39.5 E0.0798 F1200 ; 2
G1 X167 Y37.5 E0.0798 F1200 ; 2
G1 X165 Y37.5 E0.0798 F1200 ; 2
G1 X165 Y35.5 E0.0798 F1200 ; 2
G1 X167 Y35.5 E0.0798 F1200 ; 2
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y45.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y45.5 E0.0798 F1200 ; 0
G1 X160 Y47.5 E0.0798 F1200 ; 0
G1 X160 Y49.5 E0.0798 F1200 ; 0
G1 X158 Y49.5 E0.0798 F1200 ; 0
G1 X158 Y47.5 E0.0798 F1200 ; 0
G1 X158 Y45.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y45.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y45.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y45.5 F7200 ; move to start
G11 ; un-retract
G1 X164 Y45.5 E0.0798 F1200 ; 0
G1 X164 Y47.5 E0.0798 F1200 ; 0
G1 X164 Y49.5 E0.0798 F1200 ; 0
G1 X162 Y49.5 E0.0798 F1200 ; 0
G1 X162 Y47.5 E0.0798 F1200 ; 0
G1 X162 Y45.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X165 Y45.5 F7200 ; move to start
G11 ; un-retract
G1 X165 Y47.5 F7200 ; move to start
G1 X165 Y49.5 F7200 ; move to start
G1 X165 Y47.5 E0.0798 F1200 ; 4
G1 X167 Y47.5 E0.0798 F1200 ; 4
G1 X167 Y49.5 F7200 ; move to start
G1 X167 Y47.5 E0.0798 F1200 ; 4
G1 X167 Y45.5 E0.0798 F1200 ; 4
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y55.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y55.5 E0.0798 F1200 ; 0
G1 X160 Y57.5 E0.0798 F1200 ; 0
G1 X160 Y59.5 E0.0798 F1200 ; 0
G1 X158 Y59.5 E0.0798 F1200 ; 0
G1 X158 Y57.5 E0.0798 F1200 ; 0
G1 X158 Y55.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y55.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y55.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y55.5 F7200 ; move to start
G11 ; un-retract
G1 X164 Y55.5 E0.0798 F1200 ; 0
G1 X164 Y57.5 E0.0798 F1200 ; 0
G1 X164 Y59.5 E0.0798 F1200 ; 0
G1 X162 Y59.5 E0.0798 F1200 ; 0
G1 X162 Y57.5 E0.0798 F1200 ; 0
G1 X162 Y55.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X165 Y55.5 F7200 ; move to start
G11 ; un-retract
G1 X165 Y57.5 F7200 ; move to start
G1 X167 Y57.5 E0.0798 F1200 ; 6
G1 X167 Y55.5 E0.0798 F1200 ; 6
G1 X165 Y55.5 E0.0798 F1200 ; 6
G1 X165 Y57.5 E0.0798 F1200 ; 6
G1 X165 Y59.5 E0.0798 F1200 ; 6
G1 X167 Y59.5 E0.0798 F1200 ; 6
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y65.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y65.5 E0.0798 F1200 ; 0
G1 X160 Y67.5 E0.0798 F1200 ; 0
G1 X160 Y69.5 E0.0798 F1200 ; 0
G1 X158 Y69.5 E0.0798 F1200 ; 0
G1 X158 Y67.5 E0.0798 F1200 ; 0
G1 X158 Y65.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y65.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y65.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y65.5 F7200 ; move to start
G11 ; un-retract
G1 X164 Y65.5 E0.0798 F1200 ; 0
G1 X164 Y67.5 E0.0798 F1200 ; 0
G1 X164 Y69.5 E0.0798 F1200 ; 0
G1 X162 Y69.5 E0.0798 F1200 ; 0
G1 X162 Y67.5 E0.0798 F1200 ; 0
G1 X162 Y65.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X165 Y65.5 F7200 ; move to start
G11 ; un-retract
G1 X165 Y67.5 F7200 ; move to start
G1 X167 Y67.5 E0.0798 F1200 ; 8
G1 X167 Y65.5 E0.0798 F1200 ; 8
G1 X165 Y65.5 E0.0798 F1200 ; 8
G1 X165 Y67.5 E0.0798 F1200 ; 8
G1 X165 Y69.5 E0.0798 F1200 ; 8
G1 X167 Y69.5 E0.0798 F1200 ; 8
G1 X167 Y67.5 E0.0798 F1200 ; 8
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y75.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y75.5 E0.0798 F1200 ; 0
G1 X160 Y77.5 E0.0798 F1200 ; 0
G1 X160 Y79.5 E0.0798 F1200 ; 0
G1 X158 Y79.5 E0.0798 F1200 ; 0
G1 X158 Y77.5 E0.0798 F1200 ; 0
G1 X158 Y75.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y75.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y75.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y75.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y77.5 E0.0798 F1200 ; 1
G1 X162 Y79.5 E0.0798 F1200 ; 1
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y85.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y85.5 E0.0798 F1200 ; 0
G1 X160 Y87.5 E0.0798 F1200 ; 0
G1 X160 Y89.5 E0.0798 F1200 ; 0
G1 X158 Y89.5 E0.0798 F1200 ; 0
G1 X158 Y87.5 E0.0798 F1200 ; 0
G1 X158 Y85.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y85.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y85.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y85.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y87.5 E0.0798 F1200 ; 1
G1 X162 Y89.5 E0.0798 F1200 ; 1
G10 ; retract
G1 X163 Y85.5 F7200 ; move to start
G11 ; un-retract
G1 X163 Y87.5 F7200 ; move to start
G1 X163 Y89.5 F7200 ; move to start
G1 X165 Y89.5 E0.0798 F1200 ; 2
G1 X165 Y87.5 E0.0798 F1200 ; 2
G1 X163 Y87.5 E0.0798 F1200 ; 2
G1 X163 Y85.5 E0.0798 F1200 ; 2
G1 X165 Y85.5 E0.0798 F1200 ; 2
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y95.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y95.5 E0.0798 F1200 ; 0
G1 X160 Y97.5 E0.0798 F1200 ; 0
G1 X160 Y99.5 E0.0798 F1200 ; 0
G1 X158 Y99.5 E0.0798 F1200 ; 0
G1 X158 Y97.5 E0.0798 F1200 ; 0
G1 X158 Y95.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y95.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y95.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y95.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y97.5 E0.0798 F1200 ; 1
G1 X162 Y99.5 E0.0798 F1200 ; 1
G10 ; retract
G1 X163 Y95.5 F7200 ; move to start
G11 ; un-retract
G1 X163 Y97.5 F7200 ; move to start
G1 X163 Y99.5 F7200 ; move to start
G1 X163 Y97.5 E0.0798 F1200 ; 4
G1 X165 Y97.5 E0.0798 F1200 ; 4
G1 X165 Y99.5 F7200 ; move to start
G1 X165 Y97.5 E0.0798 F1200 ; 4
G1 X165 Y95.5 E0.0798 F1200 ; 4
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y105.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y105.5 E0.0798 F1200 ; 0
G1 X160 Y107.5 E0.0798 F1200 ; 0
G1 X160 Y109.5 E0.0798 F1200 ; 0
G1 X158 Y109.5 E0.0798 F1200 ; 0
G1 X158 Y107.5 E0.0798 F1200 ; 0
G1 X158 Y105.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y105.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y105.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y105.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y107.5 E0.0798 F1200 ; 1
G1 X162 Y109.5 E0.0798 F1200 ; 1
G10 ; retract
G1 X163 Y105.5 F7200 ; move to start
G11 ; un-retract
G1 X163 Y107.5 F7200 ; move to start
G1 X165 Y107.5 E0.0798 F1200 ; 6
G1 X165 Y105.5 E0.0798 F1200 ; 6
G1 X163 Y105.5 E0.0798 F1200 ; 6
G1 X163 Y107.5 E0.0798 F1200 ; 6
G1 X163 Y109.5 E0.0798 F1200 ; 6
G1 X165 Y109.5 E0.0798 F1200 ; 6
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y115.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y115.5 E0.0798 F1200 ; 0
G1 X160 Y117.5 E0.0798 F1200 ; 0
G1 X160 Y119.5 E0.0798 F1200 ; 0
G1 X158 Y119.5 E0.0798 F1200 ; 0
G1 X158 Y117.5 E0.0798 F1200 ; 0
G1 X158 Y115.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y115.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y115.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y115.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y117.5 E0.0798 F1200 ; 1
G1 X162 Y119.5 E0.0798 F1200 ; 1
G10 ; retract
G1 X163 Y115.5 F7200 ; move to start
G11 ; un-retract
G1 X163 Y117.5 F7200 ; move to start
G1 X165 Y117.5 E0.0798 F1200 ; 8
G1 X165 Y115.5 E0.0798 F1200 ; 8
G1 X163 Y115.5 E0.0798 F1200 ; 8
G1 X163 Y117.5 E0.0798 F1200 ; 8
G1 X163 Y119.5 E0.0798 F1200 ; 8
G1 X165 Y119.5 E0.0798 F1200 ; 8
G1 X165 Y117.5 E0.0798 F1200 ; 8
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y125.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y125.5 E0.0798 F1200 ; 0
G1 X160 Y127.5 E0.0798 F1200 ; 0
G1 X160 Y129.5 E0.0798 F1200 ; 0
G1 X158 Y129.5 E0.0798 F1200 ; 0
G1 X158 Y127.5 E0.0798 F1200 ; 0
G1 X158 Y125.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y125.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y125.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y125.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y127.5 F7200 ; move to start
G1 X162 Y129.5 F7200 ; move to start
G1 X164 Y129.5 E0.0798 F1200 ; 2
G1 X164 Y127.5 E0.0798 F1200 ; 2
G1 X162 Y127.5 E0.0798 F1200 ; 2
G1 X162 Y125.5 E0.0798 F1200 ; 2
G1 X164 Y125.5 E0.0798 F1200 ; 2
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y135.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y135.5 E0.0798 F1200 ; 0
G1 X160 Y137.5 E0.0798 F1200 ; 0
G1 X160 Y139.5 E0.0798 F1200 ; 0
G1 X158 Y139.5 E0.0798 F1200 ; 0
G1 X158 Y137.5 E0.0798 F1200 ; 0
G1 X158 Y135.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y135.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y135.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y135.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y137.5 F7200 ; move to start
G1 X162 Y139.5 F7200 ; move to start
G1 X164 Y139.5 E0.0798 F1200 ; 2
G1 X164 Y137.5 E0.0798 F1200 ; 2
G1 X162 Y137.5 E0.0798 F1200 ; 2
G1 X162 Y135.5 E0.0798 F1200 ; 2
G1 X164 Y135.5 E0.0798 F1200 ; 2
G10 ; retract
G1 X165 Y135.5 F7200 ; move to start
G11 ; un-retract
G1 X165 Y137.5 F7200 ; move to start
G1 X165 Y139.5 F7200 ; move to start
G1 X167 Y139.5 E0.0798 F1200 ; 2
G1 X167 Y137.5 E0.0798 F1200 ; 2
G1 X165 Y137.5 E0.0798 F1200 ; 2
G1 X165 Y135.5 E0.0798 F1200 ; 2
G1 X167 Y135.5 E0.0798 F1200 ; 2
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y145.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y145.5 E0.0798 F1200 ; 0
G1 X160 Y147.5 E0.0798 F1200 ; 0
G1 X160 Y149.5 E0.0798 F1200 ; 0
G1 X158 Y149.5 E0.0798 F1200 ; 0
G1 X158 Y147.5 E0.0798 F1200 ; 0
G1 X158 Y145.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y145.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y145.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y145.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y147.5 F7200 ; move to start
G1 X162 Y149.5 F7200 ; move to start
G1 X164 Y149.5 E0.0798 F1200 ; 2
G1 X164 Y147.5 E0.0798 F1200 ; 2
G1 X162 Y147.5 E0.0798 F1200 ; 2
G1 X162 Y145.5 E0.0798 F1200 ; 2
G1 X164 Y145.5 E0.0798 F1200 ; 2
G10 ; retract
G1 X165 Y145.5 F7200 ; move to start
G11 ; un-retract
G1 X165 Y147.5 F7200 ; move to start
G1 X165 Y149.5 F7200 ; move to start
G1 X165 Y147.5 E0.0798 F1200 ; 4
G1 X167 Y147.5 E0.0798 F1200 ; 4
G1 X167 Y149.5 F7200 ; move to start
G1 X167 Y147.5 E0.0798 F1200 ; 4
G1 X167 Y145.5 E0.0798 F1200 ; 4
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y155.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y155.5 E0.0798 F1200 ; 0
G1 X160 Y157.5 E0.0798 F1200 ; 0
G1 X160 Y159.5 E0.0798 F1200 ; 0
G1 X158 Y159.5 E0.0798 F1200 ; 0
G1 X158 Y157.5 E0.0798 F1200 ; 0
G1 X158 Y155.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y155.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y155.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y155.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y157.5 F7200 ; move to start
G1 X162 Y159.5 F7200 ; move to start
G1 X164 Y159.5 E0.0798 F1200 ; 2
G1 X164 Y157.5 E0.0798 F1200 ; 2
G1 X162 Y157.5 E0.0798 F1200 ; 2
G1 X162 Y155.5 E0.0798 F1200 ; 2
G1 X164 Y155.5 E0.0798 F1200 ; 2
G10 ; retract
G1 X165 Y155.5 F7200 ; move to start
G11 ; un-retract
G1 X165 Y157.5 F7200 ; move to start
G1 X167 Y157.5 E0.0798 F1200 ; 6
G1 X167 Y155.5 E0.0798 F1200 ; 6
G1 X165 Y155.5 E0.0798 F1200 ; 6
G1 X165 Y157.5 E0.0798 F1200 ; 6
G1 X165 Y159.5 E0.0798 F1200 ; 6
G1 X167 Y159.5 E0.0798 F1200 ; 6
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X158 Y165.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X160 Y165.5 E0.0798 F1200 ; 0
G1 X160 Y167.5 E0.0798 F1200 ; 0
G1 X160 Y169.5 E0.0798 F1200 ; 0
G1 X158 Y169.5 E0.0798 F1200 ; 0
G1 X158 Y167.5 E0.0798 F1200 ; 0
G1 X158 Y165.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X161 Y165.5 F7200 ; move to start
G11 ; un-retract
G1 X161 Y165.9 E0.016 F1200 ; dot
G10 ; retract
G1 X162 Y165.5 F7200 ; move to start
G11 ; un-retract
G1 X162 Y167.5 F7200 ; move to start
G1 X162 Y169.5 F7200 ; move to start
G1 X164 Y169.5 E0.0798 F1200 ; 2
G1 X164 Y167.5 E0.0798 F1200 ; 2
G1 X162 Y167.5 E0.0798 F1200 ; 2
G1 X162 Y165.5 E0.0798 F1200 ; 2
G1 X164 Y165.5 E0.0798 F1200 ; 2
G10 ; retract
G1 X165 Y165.5 F7200 ; move to start
G11 ; un-retract
G1 X165 Y167.5 F7200 ; move to start
G1 X167 Y167.5 E0.0798 F1200 ; 8
G1 X167 Y165.5 E0.0798 F1200 ; 8
G1 X165 Y165.5 E0.0798 F1200 ; 8
G1 X165 Y167.5 E0.0798 F1200 ; 8
G1 X165 Y169.5 E0.0798 F1200 ; 8
G1 X167 Y169.5 E0.0798 F1200 ; 8
G1 X167 Y167.5 E0.0798 F1200 ; 8
G10 ; retract
G1 Z0.3 F1200 ; zHop
;
; finish
;
M104 S0 ; turn off hotend
M140 S0 ; turn off bed
G1 Z30 X230 Y230 F7200 ; move away from the print
M84 ; disable motors
M502 ; resets parameters from ROM
M501 ; resets parameters from EEPROM
;