	IFND	LUETT_I
LUETT_I	SET	1
; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	ASM definitions for the Luett font data.
;

	IFND	GRAPHICS_TEXT_I
	INCLUDE	"graphics/text.i"
	ENDC

LUETT8_Y_SIZE	EQU	8           ; fc_YSize, tf_YSize
LUETT8_STYLE	EQU	FS_NORMAL   ; fc_Style, tf_Style
; fc_Flags, tf_Flags
	IFD	LUETT_DISKFONT
LUETT8_FLAGS	EQU	(FPF_DESIGNED!FPF_PROPORTIONAL!FPF_TALLDOT!FPF_DISKFONT)
	ELSE
	IFD	LUETT_ROMFONT
LUETT8_FLAGS	EQU	(FPF_DESIGNED!FPF_PROPORTIONAL!FPF_TALLDOT!FPF_ROMFONT)
	ELSE
LUETT8_FLAGS	EQU	(FPF_DESIGNED!FPF_PROPORTIONAL!FPF_TALLDOT)
	ENDC
	ENDC
LUETT8_X_SIZE	EQU	8   ; tf_XSize
LUETT8_BASE_L	EQU	6   ; tf_Baseline
LUETT8_BOLD_S	EQU	1   ; tf_BoldSmear
LUETT8_LO_CHAR	EQU	1   ; tf_LoChar
LUETT8_HI_CHAR	EQU	255 ; tf_HiChar
LUETT8_MODULO	EQU	124 ; tf_Modulo

IMPORT_LUETT	MACRO   ; luett.lib
	XREF	_LuettName
	XREF	_Luett8Font
	XREF	_Luett8Loc
	XREF	_Luett8Kern
	XREF	_Luett8Space
	XREF	_Luett8Data
	ENDM

	ENDC