" Vim syntax file
" Language: GCODE 
" Maintainer: Manuel Coenen <manuel.coenen@gmail.com>
" Last Change: 2018 April 12

" Quit when a (custom syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syn case ignore

syn  match gcodeComment /(.*)/ contains=gcodeTodo
syn  keyword gcodeGCodes G0 G1 G2 G3 G4 G10 G11 G12 G20 G21 G26 G27 G28 G29 G30 G31 G32 G33 G38.2 G38.3 G90 G91 G92
syn  keyword gcodeMCodes M0 M1 M2 M3 M4 M5 M6 M17 M18 M84 M20 M21 M22 M23 M24 M25 M26 M27 M28 M29 M30 M31 M32 M33 M34 M42 M43 M48 M73 M75 M76 M77 M78 M80 M81 M82 M83 M85 M92 M100 M104 M105 M106 M107 M108 M109 M110 M111 M112 M113 M114 M115 M117 M119 M120 M121 M122 M125 M126 M127 M128 M129 M140 M145 M149 M150 M155 M163 M164 M165 M190 M200 M201 M203 M204 M205 M206 M207 M208 M209 M211 M218 M220 M226 240 M250 M260 M261 M280 M290 M300 M301 M302 M303 M304 M350 M351 M355 M360 M361 M362 M363 M364 M380 M381 M400 M401 M402 M404 M405 M406 M407 M410 M420 M421 M428 M500 M501 M502 M503 M540 M600 M605 M665 M666 M851 M852 M900 M906 M907 M908 M909 M910 M911 M912 M913 M914 M915 M928 M999

syntax match gcodeXAxis "\<[XY]-\?\d\+\>"
syntax match gcodeXAxis "\<[XY]-\?\.\d\+\>"
syntax match gcodeXAxis "\<[XY]-\?\d\+\."
syntax match gcodeXAxis "\<[XY]-\?\d\+\.\d\+\>"

syntax match gcodeZAxis "\<Z-\?\d\+\>"
syntax match gcodeZAxis "\<Z-\?\.\d\+\>"
syntax match gcodeZAxis "\<Z-\?\d\+\."
syntax match gcodeZAxis "\<Z-\?\d\+\.\d\+\>"

syntax match gcodeAAxis "\<[ABC]-\?\d\+\>"
syntax match gcodeAAxis "\<[ABC]-\?\.\d\+\>"
syntax match gcodeAAxis "\<[ABC]-\?\d\+\."
syntax match gcodeAAxis "\<[ABC]-\?\d\+\.\d\+\>"

syntax match gcodeIAxis "\<[IJKR]-\?\d\+\>"
syntax match gcodeIAxis "\<[IJKR]-\?\.\d\+\>"
syntax match gcodeIAxis "\<[IJKR]-\?\d\+\."
syntax match gcodeIAxis "\<[IJKR]-\?\d\+\.\d\+\>"

syntax match gcodeRapid "\<G\(0\+\)\>"

syntax match gcodeFeed "\<F-\?\d\+\>"
syntax match gcodeFeed "\<F-\?\.\d\+\>"
syntax match gcodeFeed "\<F-\?\d\+\."
syntax match gcodeFeed "\<F-\?\d\+\.\d\+\>"

syntax match gcodeTool "\<T\d\+\>"

hi def link gcodeComment Comment
hi def link gcodeGCodes MoreMsg
hi def link gcodeMCodes MoreMsg
hi def link gcodeXAxis Keyword
hi def link gcodeYAxis Keyword
hi def link gcodeZAxis WarningMsg
hi def link gcodeAAxis VimString

hi def link gcodeRapid WarningMsg
hi def link gcodeIAxis Identifier
hi def link gcodeSpecials SpecialChar
hi def link gcodeFeed SpecialChar
hi def link gcodeTool Define

let b:current_syntax = "gcode"
