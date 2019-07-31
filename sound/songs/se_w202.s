	.include "MPlayDef.s"

	.equ	se_w202_grp, voicegroup128
	.equ	se_w202_pri, 4
	.equ	se_w202_rev, reverb_set+50
	.equ	se_w202_mvl, 127
	.equ	se_w202_key, 0
	.equ	se_w202_tbs, 1
	.equ	se_w202_exg, 0
	.equ	se_w202_cmp, 1

	.section .rodata
	.global	se_w202
	.align	2



se_w202_1:
	.byte	KEYSH , se_w202_key+0
	.byte	TEMPO , 150*se_w202_tbs/2
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*se_w202_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn2 , v127
	.byte	W02
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOICE , 23
	.byte		N02   , Cn3 , v104
	.byte	W01
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		VOICE , 36
	.byte		N02   , Cn2 , v127
	.byte	W01
	.byte		PAN   , c_v+7
	.byte	W01
	.byte		VOICE , 23
	.byte		BEND  , c_v+4
	.byte		N06   , Cn3 , v104
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		VOICE , 36
	.byte		BEND  , c_v+0
	.byte		N03   , An2 , v100
	.byte	W04
	.byte		PAN   , c_v+5
	.byte		N03   , Bn2 , v076
	.byte	W03
	.byte		PAN   , c_v-6
	.byte		N02   , Cs3 , v040
	.byte	W03
	.byte	FINE


	.align	2

se_w202:
	.byte	1	
	.byte	0	
	.byte	se_w202_pri	
	.byte	se_w202_rev	

	.4byte	se_w202_grp

	.4byte	se_w202_1

	.end
