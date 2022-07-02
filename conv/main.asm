;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Tue Apr 20 15:25:45 2021                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far_aggregates --silicon_version=6400 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Disabled                                             *
;*   Optimizing for    : Compile time, Ease of Development                    *
;*                       Based on options: no -o, no -ms                      *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("main.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("fclose"), DW_AT_symbol_name("_fclose")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen"), DW_AT_symbol_name("_fopen")
	.dwattr DW$3, DW_AT_type(*DW$T$26)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$3


DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("fscanf"), DW_AT_symbol_name("_fscanf")
	.dwattr DW$6, DW_AT_type(*DW$T$10)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$6


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("printf"), DW_AT_symbol_name("_printf")
	.dwattr DW$10, DW_AT_type(*DW$T$10)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$12	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$10


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$13

	.global	_data_all
_data_all:	.usect	".array_buf",3136000,16
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("data_all"), DW_AT_symbol_name("_data_all")
	.dwattr DW$15, DW_AT_location[DW_OP_addr _data_all]
	.dwattr DW$15, DW_AT_type(*DW$T$39)
	.dwattr DW$15, DW_AT_external(0x01)
	.global	_data
_data:	.usect	".array_buf",6272,16
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$16, DW_AT_location[DW_OP_addr _data]
	.dwattr DW$16, DW_AT_type(*DW$T$41)
	.dwattr DW$16, DW_AT_external(0x01)
	.global	_layer_w
_layer_w:	.usect	".array_buf",802816,16
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("layer_w"), DW_AT_symbol_name("_layer_w")
	.dwattr DW$17, DW_AT_location[DW_OP_addr _layer_w]
	.dwattr DW$17, DW_AT_type(*DW$T$43)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_layer_b
_layer_b:	.usect	".array_buf",1024,16
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("layer_b"), DW_AT_symbol_name("_layer_b")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _layer_b]
	.dwattr DW$18, DW_AT_type(*DW$T$42)
	.dwattr DW$18, DW_AT_external(0x01)
	.global	_tmp1
_tmp1:	.usect	".array_buf",1024,16
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("tmp1"), DW_AT_symbol_name("_tmp1")
	.dwattr DW$19, DW_AT_location[DW_OP_addr _tmp1]
	.dwattr DW$19, DW_AT_type(*DW$T$42)
	.dwattr DW$19, DW_AT_external(0x01)
	.global	_output_w
_output_w:	.usect	".array_buf",10240,16
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("output_w"), DW_AT_symbol_name("_output_w")
	.dwattr DW$20, DW_AT_location[DW_OP_addr _output_w]
	.dwattr DW$20, DW_AT_type(*DW$T$46)
	.dwattr DW$20, DW_AT_external(0x01)
	.global	_output_b
_output_b:	.usect	".array_buf",80,16
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("output_b"), DW_AT_symbol_name("_output_b")
	.dwattr DW$21, DW_AT_location[DW_OP_addr _output_b]
	.dwattr DW$21, DW_AT_type(*DW$T$45)
	.dwattr DW$21, DW_AT_external(0x01)
	.global	_tmp2
_tmp2:	.usect	".array_buf",80,16
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("tmp2"), DW_AT_symbol_name("_tmp2")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _tmp2]
	.dwattr DW$22, DW_AT_type(*DW$T$45)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_predict_all
_predict_all:	.usect	".array_buf",4000,16
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("predict_all"), DW_AT_symbol_name("_predict_all")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _predict_all]
	.dwattr DW$23, DW_AT_type(*DW$T$38)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_predict
	.bss	_predict,8,8
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("predict"), DW_AT_symbol_name("_predict")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _predict]
	.dwattr DW$24, DW_AT_type(*DW$T$12)
	.dwattr DW$24, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C6000\cgtools\bin\acp6x.exe -@C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI91612 
	.sect	".text"
	.global	_get_weights

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("get_weights"), DW_AT_symbol_name("_get_weights")
	.dwattr DW$25, DW_AT_low_pc(_get_weights)
	.dwattr DW$25, DW_AT_high_pc(0x00)
	.dwattr DW$25, DW_AT_begin_file("main.c")
	.dwattr DW$25, DW_AT_begin_line(0x2a)
	.dwattr DW$25, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",42,20

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _get_weights                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 8 Args + 12 Auto + 4 Save = 24 byte                  *
;******************************************************************************
_get_weights:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
;  42 | void get_weights() {                                                   
;  44 | FILE * fp;                                                             
;  45 | int i, j;                                                              
;----------------------------------------------------------------------
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |42| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("fp"), DW_AT_symbol_name("_fp")
	.dwattr DW$26, DW_AT_type(*DW$T$26)
	.dwattr DW$26, DW_AT_location[DW_OP_breg31 12]
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$27, DW_AT_location[DW_OP_breg31 16]
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_location[DW_OP_breg31 20]
	.dwpsn	"main.c",46,5
;----------------------------------------------------------------------
;  46 | if (NULL == (fp = fopen("..\\data\\layer_w.txt", "r"))) {              
;----------------------------------------------------------------------
           CALL    .S1     _fopen            ; |46| 
           MVKL    .S2     SL1+0,B4          ; |46| 
           MVKH    .S2     SL1+0,B4          ; |46| 
           MVKL    .S1     SL2+0,A4          ; |46| 
           ADDKPC  .S2     RL0,B3,0          ; |46| 
           MVKH    .S1     SL2+0,A4          ; |46| 
RL0:       ; CALL OCCURS {_fopen}            ; |46| 
           CMPEQ   .L1     0,A4,A0           ; |46| 
   [!A0]   BNOP    .S1     L1,4              ; |46| 
           STW     .D2T1   A4,*+SP(12)       ; |46| 
           ; BRANCHCC OCCURS {L1}            ; |46| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",47,9
;----------------------------------------------------------------------
;  47 | printf("layer_w open failed\n");                                       
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |47| 
           MVKL    .S1     SL3+0,A3          ; |47| 
           MVKH    .S1     SL3+0,A3          ; |47| 
           STW     .D2T1   A3,*+SP(4)        ; |47| 
           ADDKPC  .S2     RL1,B3,1          ; |47| 
RL1:       ; CALL OCCURS {_printf}           ; |47| 
	.dwpsn	"main.c",48,9
;----------------------------------------------------------------------
;  48 | exit(1);                                                               
;----------------------------------------------------------------------
           CALL    .S1     _exit             ; |48| 
           ADDKPC  .S2     RL2,B3,3          ; |48| 
           MVK     .L1     0x1,A4            ; |48| 
RL2:       ; CALL OCCURS {_exit}             ; |48| 
;** --------------------------------------------------------------------------*
L1:    
	.dwpsn	"main.c",50,5
;----------------------------------------------------------------------
;  50 | printf("layer_w open succeed\n");                                      
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |50| 
           MVKL    .S1     SL4+0,A3          ; |50| 
           MVKH    .S1     SL4+0,A3          ; |50| 
           STW     .D2T1   A3,*+SP(4)        ; |50| 
           ADDKPC  .S2     RL3,B3,1          ; |50| 
RL3:       ; CALL OCCURS {_printf}           ; |50| 
	.dwpsn	"main.c",51,10
;----------------------------------------------------------------------
;  51 | for (i = 0; i < INPUT_SIZE; ++i) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |51| 
           STW     .D2T2   B4,*+SP(16)       ; |51| 
           NOP             2
	.dwpsn	"main.c",51,17
           MVK     .S2     784,B5            ; |51| 
           CMPLT   .L2     B4,B5,B0          ; |51| 
   [!B0]   BNOP    .S1     L5,5              ; |51| 
           ; BRANCHCC OCCURS {L5}            ; |51| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L2
;** --------------------------------------------------------------------------*
L2:    
DW$L$_get_weights$4$B:
	.dwpsn	"main.c",52,14
;----------------------------------------------------------------------
;  52 | for (j = 0; j < LAYER_SIZE; ++j) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |52| 
           STW     .D2T2   B4,*+SP(20)       ; |52| 
           NOP             2
	.dwpsn	"main.c",52,21
           MVK     .S2     128,B5            ; |52| 
           CMPLT   .L2     B4,B5,B0          ; |52| 
   [!B0]   BNOP    .S1     L4,5              ; |52| 
           ; BRANCHCC OCCURS {L4}            ; |52| 
DW$L$_get_weights$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L3:    
DW$L$_get_weights$5$B:
	.dwpsn	"main.c",53,13
;----------------------------------------------------------------------
;  53 | fscanf(fp, "%ld", &layer_w[i][j]);                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |53| 
           LDW     .D2T1   *+SP(20),A5       ; |53| 
           MVKL    .S1     _layer_w,A3       ; |53| 
           MVKH    .S1     _layer_w,A3       ; |53| 
           LDW     .D2T1   *+SP(12),A4       ; |53| 

           SHL     .S2     B4,10,B5          ; |53| 
||         CALL    .S1     _fscanf           ; |53| 

           MVKL    .S2     SL5+0,B4          ; |53| 

           MVKH    .S2     SL5+0,B4          ; |53| 
||         ADD     .L1X    A3,B5,A3          ; |53| 

           STW     .D2T2   B4,*+SP(4)        ; |53| 
||         ADDAD   .D1     A3,A5,A3          ; |53| 

           STW     .D2T1   A3,*+SP(8)        ; |53| 
           ADDKPC  .S2     RL4,B3,0          ; |53| 
RL4:       ; CALL OCCURS {_fscanf}           ; |53| 
	.dwpsn	"main.c",52,37
           LDW     .D2T2   *+SP(20),B4       ; |52| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |52| 
           STW     .D2T2   B4,*+SP(20)       ; |52| 
           NOP             2
	.dwpsn	"main.c",52,21
           MVK     .S2     128,B5            ; |52| 
           CMPLT   .L2     B4,B5,B0          ; |52| 
   [ B0]   BNOP    .S1     L3,5              ; |52| 
           ; BRANCHCC OCCURS {L3}            ; |52| 
DW$L$_get_weights$5$E:
;** --------------------------------------------------------------------------*
L4:    
DW$L$_get_weights$6$B:
	.dwpsn	"main.c",51,33
           LDW     .D2T2   *+SP(16),B4       ; |51| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |51| 
           STW     .D2T2   B4,*+SP(16)       ; |51| 
           NOP             2
	.dwpsn	"main.c",51,17
           MVK     .S2     784,B5            ; |51| 
           CMPLT   .L2     B4,B5,B0          ; |51| 
   [ B0]   BNOP    .S1     L2,5              ; |51| 
           ; BRANCHCC OCCURS {L2}            ; |51| 
DW$L$_get_weights$6$E:
;** --------------------------------------------------------------------------*
L5:    
	.dwpsn	"main.c",56,5
;----------------------------------------------------------------------
;  56 | printf("layer_w load succeed\n");                                      
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |56| 
           MVKL    .S2     SL6+0,B4          ; |56| 
           MVKH    .S2     SL6+0,B4          ; |56| 
           STW     .D2T2   B4,*+SP(4)        ; |56| 
           ADDKPC  .S2     RL5,B3,1          ; |56| 
RL5:       ; CALL OCCURS {_printf}           ; |56| 
	.dwpsn	"main.c",57,5
;----------------------------------------------------------------------
;  57 | fclose(fp);                                                            
;----------------------------------------------------------------------
           CALL    .S1     _fclose           ; |57| 
           LDW     .D2T1   *+SP(12),A4       ; |57| 
           ADDKPC  .S2     RL6,B3,3          ; |57| 
RL6:       ; CALL OCCURS {_fclose}           ; |57| 
	.dwpsn	"main.c",60,5
;----------------------------------------------------------------------
;  60 | if (NULL == (fp = fopen("..\\data\\layer_b.txt", "r"))) {              
;----------------------------------------------------------------------
           CALL    .S1     _fopen            ; |60| 
           MVKL    .S2     SL1+0,B4          ; |60| 
           MVKH    .S2     SL1+0,B4          ; |60| 
           MVKL    .S1     SL7+0,A4          ; |60| 
           ADDKPC  .S2     RL7,B3,0          ; |60| 
           MVKH    .S1     SL7+0,A4          ; |60| 
RL7:       ; CALL OCCURS {_fopen}            ; |60| 
           CMPEQ   .L1     0,A4,A0           ; |60| 
   [!A0]   BNOP    .S1     L6,4              ; |60| 
           STW     .D2T1   A4,*+SP(12)       ; |60| 
           ; BRANCHCC OCCURS {L6}            ; |60| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",61,9
;----------------------------------------------------------------------
;  61 | printf("layer_b open failed\n");                                       
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |61| 
           MVKL    .S1     SL8+0,A3          ; |61| 
           MVKH    .S1     SL8+0,A3          ; |61| 
           STW     .D2T1   A3,*+SP(4)        ; |61| 
           ADDKPC  .S2     RL8,B3,1          ; |61| 
RL8:       ; CALL OCCURS {_printf}           ; |61| 
	.dwpsn	"main.c",62,9
;----------------------------------------------------------------------
;  62 | exit(1);                                                               
;----------------------------------------------------------------------
           CALL    .S1     _exit             ; |62| 
           ADDKPC  .S2     RL9,B3,3          ; |62| 
           MVK     .L1     0x1,A4            ; |62| 
RL9:       ; CALL OCCURS {_exit}             ; |62| 
;** --------------------------------------------------------------------------*
L6:    
	.dwpsn	"main.c",64,5
;----------------------------------------------------------------------
;  64 | printf("layer_b open succeed\n");                                      
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |64| 
           MVKL    .S1     SL9+0,A3          ; |64| 
           MVKH    .S1     SL9+0,A3          ; |64| 
           STW     .D2T1   A3,*+SP(4)        ; |64| 
           ADDKPC  .S2     RL10,B3,1         ; |64| 
RL10:      ; CALL OCCURS {_printf}           ; |64| 
	.dwpsn	"main.c",65,10
;----------------------------------------------------------------------
;  65 | for (i = 0; i < INPUT_SIZE; ++i) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |65| 
           STW     .D2T2   B4,*+SP(16)       ; |65| 
           NOP             2
	.dwpsn	"main.c",65,17
           MVK     .S2     784,B5            ; |65| 
           CMPLT   .L2     B4,B5,B0          ; |65| 
   [!B0]   BNOP    .S1     L8,5              ; |65| 
           ; BRANCHCC OCCURS {L8}            ; |65| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L7:    
DW$L$_get_weights$10$B:
	.dwpsn	"main.c",66,9
;----------------------------------------------------------------------
;  66 | fscanf(fp, "%ld", &layer_b[i]);                                        
;----------------------------------------------------------------------

           CALL    .S1     _fscanf           ; |66| 
||         MVKL    .S2     _layer_b,B4       ; |66| 
||         MV      .L2     B4,B5

           LDW     .D2T1   *+SP(12),A4       ; |66| 
||         MVKH    .S2     _layer_b,B4       ; |66| 
||         MVKL    .S1     SL5+0,A3          ; |66| 

           ADDAD   .D2     B4,B5,B4          ; |66| 
||         MVKH    .S1     SL5+0,A3          ; |66| 

           STW     .D2T1   A3,*+SP(4)        ; |66| 
           STW     .D2T2   B4,*+SP(8)        ; |66| 
           ADDKPC  .S2     RL11,B3,0         ; |66| 
RL11:      ; CALL OCCURS {_fscanf}           ; |66| 
	.dwpsn	"main.c",65,33
           LDW     .D2T2   *+SP(16),B4       ; |65| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |65| 
           STW     .D2T2   B4,*+SP(16)       ; |65| 
           NOP             2
	.dwpsn	"main.c",65,17
           MVK     .S1     784,A3            ; |65| 
           CMPLT   .L1X    B4,A3,A0          ; |65| 
   [ A0]   BNOP    .S1     L7,5              ; |65| 
           ; BRANCHCC OCCURS {L7}            ; |65| 
DW$L$_get_weights$10$E:
;** --------------------------------------------------------------------------*
L8:    
	.dwpsn	"main.c",68,5
;----------------------------------------------------------------------
;  68 | printf("layer_b load succeed\n");                                      
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |68| 
           MVKL    .S2     SL10+0,B4         ; |68| 
           MVKH    .S2     SL10+0,B4         ; |68| 
           STW     .D2T2   B4,*+SP(4)        ; |68| 
           ADDKPC  .S2     RL12,B3,1         ; |68| 
RL12:      ; CALL OCCURS {_printf}           ; |68| 
	.dwpsn	"main.c",69,5
;----------------------------------------------------------------------
;  69 | fclose(fp);                                                            
;----------------------------------------------------------------------
           CALL    .S1     _fclose           ; |69| 
           LDW     .D2T1   *+SP(12),A4       ; |69| 
           ADDKPC  .S2     RL13,B3,3         ; |69| 
RL13:      ; CALL OCCURS {_fclose}           ; |69| 
	.dwpsn	"main.c",72,5
;----------------------------------------------------------------------
;  72 | if (NULL == (fp = fopen("..\\data\\output_w.txt", "r"))) {             
;----------------------------------------------------------------------
           CALL    .S1     _fopen            ; |72| 
           MVKL    .S2     SL1+0,B4          ; |72| 
           MVKH    .S2     SL1+0,B4          ; |72| 
           MVKL    .S1     SL11+0,A4         ; |72| 
           ADDKPC  .S2     RL14,B3,0         ; |72| 
           MVKH    .S1     SL11+0,A4         ; |72| 
RL14:      ; CALL OCCURS {_fopen}            ; |72| 
           CMPEQ   .L1     0,A4,A0           ; |72| 
   [!A0]   BNOP    .S1     L9,4              ; |72| 
           STW     .D2T1   A4,*+SP(12)       ; |72| 
           ; BRANCHCC OCCURS {L9}            ; |72| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",73,9
;----------------------------------------------------------------------
;  73 | printf("output_w open failed\n");                                      
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |73| 
           MVKL    .S1     SL12+0,A3         ; |73| 
           MVKH    .S1     SL12+0,A3         ; |73| 
           STW     .D2T1   A3,*+SP(4)        ; |73| 
           ADDKPC  .S2     RL15,B3,1         ; |73| 
RL15:      ; CALL OCCURS {_printf}           ; |73| 
	.dwpsn	"main.c",74,9
;----------------------------------------------------------------------
;  74 | exit(1);                                                               
;----------------------------------------------------------------------
           CALL    .S1     _exit             ; |74| 
           ADDKPC  .S2     RL16,B3,3         ; |74| 
           MVK     .L1     0x1,A4            ; |74| 
RL16:      ; CALL OCCURS {_exit}             ; |74| 
;** --------------------------------------------------------------------------*
L9:    
	.dwpsn	"main.c",76,5
;----------------------------------------------------------------------
;  76 | printf("output_w open succeed\n");                                     
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |76| 
           MVKL    .S1     SL13+0,A3         ; |76| 
           MVKH    .S1     SL13+0,A3         ; |76| 
           STW     .D2T1   A3,*+SP(4)        ; |76| 
           ADDKPC  .S2     RL17,B3,1         ; |76| 
RL17:      ; CALL OCCURS {_printf}           ; |76| 
	.dwpsn	"main.c",77,10
;----------------------------------------------------------------------
;  77 | for (i = 0; i < LAYER_SIZE; ++i) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |77| 
           STW     .D2T2   B4,*+SP(16)       ; |77| 
           NOP             2
	.dwpsn	"main.c",77,17
           MVK     .S2     128,B5            ; |77| 
           CMPLT   .L2     B4,B5,B0          ; |77| 
   [!B0]   BNOP    .S1     L13,5             ; |77| 
           ; BRANCHCC OCCURS {L13}           ; |77| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L10
;** --------------------------------------------------------------------------*
L10:    
DW$L$_get_weights$14$B:
	.dwpsn	"main.c",78,14
;----------------------------------------------------------------------
;  78 | for (j = 0; j < OUTPUT_SIZE; ++j) {                                    
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |78| 
           STW     .D2T2   B4,*+SP(20)       ; |78| 
           NOP             2
	.dwpsn	"main.c",78,21
           CMPLT   .L2     B4,10,B0          ; |78| 
   [!B0]   BNOP    .S1     L12,5             ; |78| 
           ; BRANCHCC OCCURS {L12}           ; |78| 
DW$L$_get_weights$14$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L11:    
DW$L$_get_weights$15$B:
	.dwpsn	"main.c",79,13
;----------------------------------------------------------------------
;  79 | fscanf(fp, "%ld", &output_w[i][j]);                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |79| 
           MV      .L1X    B4,A5             ; |79| 
           MVKL    .S2     _output_w,B4      ; |79| 
           MVKH    .S2     _output_w,B4      ; |79| 
           MVKL    .S1     SL5+0,A31         ; |79| 
           SHL     .S2     B5,6,B6           ; |79| 
           SHL     .S1X    B5,4,A3           ; |79| 

           ADD     .L1X    A3,B6,A4          ; |79| 
||         CALL    .S1     _fscanf           ; |79| 

           ADD     .L1X    B4,A4,A6          ; |79| 
||         LDW     .D2T1   *+SP(12),A4       ; |79| 

           MVKH    .S1     SL5+0,A31         ; |79| 

           ADDAD   .D1     A6,A5,A3          ; |79| 
||         STW     .D2T1   A31,*+SP(4)       ; |79| 

           STW     .D2T1   A3,*+SP(8)        ; |79| 
           ADDKPC  .S2     RL18,B3,0         ; |79| 
RL18:      ; CALL OCCURS {_fscanf}           ; |79| 
	.dwpsn	"main.c",78,38
           LDW     .D2T2   *+SP(20),B4       ; |78| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |78| 
           STW     .D2T2   B4,*+SP(20)       ; |78| 
           NOP             2
	.dwpsn	"main.c",78,21
           CMPLT   .L2     B4,10,B0          ; |78| 
   [ B0]   BNOP    .S1     L11,5             ; |78| 
           ; BRANCHCC OCCURS {L11}           ; |78| 
DW$L$_get_weights$15$E:
;** --------------------------------------------------------------------------*
L12:    
DW$L$_get_weights$16$B:
	.dwpsn	"main.c",77,33
           LDW     .D2T2   *+SP(16),B4       ; |77| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |77| 
           STW     .D2T2   B4,*+SP(16)       ; |77| 
           NOP             2
	.dwpsn	"main.c",77,17
           MVK     .S2     128,B5            ; |77| 
           CMPLT   .L2     B4,B5,B0          ; |77| 
   [ B0]   BNOP    .S1     L10,5             ; |77| 
           ; BRANCHCC OCCURS {L10}           ; |77| 
DW$L$_get_weights$16$E:
;** --------------------------------------------------------------------------*
L13:    
	.dwpsn	"main.c",82,5
;----------------------------------------------------------------------
;  82 | printf("output_w load succeed\n");                                     
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |82| 
           MVKL    .S2     SL14+0,B4         ; |82| 
           MVKH    .S2     SL14+0,B4         ; |82| 
           STW     .D2T2   B4,*+SP(4)        ; |82| 
           ADDKPC  .S2     RL19,B3,1         ; |82| 
RL19:      ; CALL OCCURS {_printf}           ; |82| 
	.dwpsn	"main.c",83,5
;----------------------------------------------------------------------
;  83 | fclose(fp);                                                            
;----------------------------------------------------------------------
           CALL    .S1     _fclose           ; |83| 
           LDW     .D2T1   *+SP(12),A4       ; |83| 
           ADDKPC  .S2     RL20,B3,3         ; |83| 
RL20:      ; CALL OCCURS {_fclose}           ; |83| 
	.dwpsn	"main.c",86,5
;----------------------------------------------------------------------
;  86 | if (NULL == (fp = fopen("..\\data\\output_b.txt", "r"))) {             
;----------------------------------------------------------------------
           CALL    .S1     _fopen            ; |86| 
           MVKL    .S2     SL1+0,B4          ; |86| 
           MVKH    .S2     SL1+0,B4          ; |86| 
           MVKL    .S1     SL15+0,A4         ; |86| 
           ADDKPC  .S2     RL21,B3,0         ; |86| 
           MVKH    .S1     SL15+0,A4         ; |86| 
RL21:      ; CALL OCCURS {_fopen}            ; |86| 
           CMPEQ   .L1     0,A4,A0           ; |86| 
   [!A0]   BNOP    .S1     L14,4             ; |86| 
           STW     .D2T1   A4,*+SP(12)       ; |86| 
           ; BRANCHCC OCCURS {L14}           ; |86| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",87,9
;----------------------------------------------------------------------
;  87 | printf("output_b open failed\n");                                      
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |87| 
           MVKL    .S1     SL16+0,A3         ; |87| 
           MVKH    .S1     SL16+0,A3         ; |87| 
           STW     .D2T1   A3,*+SP(4)        ; |87| 
           ADDKPC  .S2     RL22,B3,1         ; |87| 
RL22:      ; CALL OCCURS {_printf}           ; |87| 
	.dwpsn	"main.c",88,9
;----------------------------------------------------------------------
;  88 | exit(1);                                                               
;----------------------------------------------------------------------
           CALL    .S1     _exit             ; |88| 
           ADDKPC  .S2     RL23,B3,3         ; |88| 
           MVK     .L1     0x1,A4            ; |88| 
RL23:      ; CALL OCCURS {_exit}             ; |88| 
;** --------------------------------------------------------------------------*
L14:    
	.dwpsn	"main.c",90,5
;----------------------------------------------------------------------
;  90 | printf("output_b open succeed\n");                                     
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |90| 
           MVKL    .S1     SL17+0,A3         ; |90| 
           MVKH    .S1     SL17+0,A3         ; |90| 
           STW     .D2T1   A3,*+SP(4)        ; |90| 
           ADDKPC  .S2     RL24,B3,1         ; |90| 
RL24:      ; CALL OCCURS {_printf}           ; |90| 
	.dwpsn	"main.c",91,10
;----------------------------------------------------------------------
;  91 | for (i = 0; i < OUTPUT_SIZE; ++i) {                                    
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |91| 
           STW     .D2T2   B4,*+SP(16)       ; |91| 
           NOP             2
	.dwpsn	"main.c",91,17
           CMPLT   .L2     B4,10,B0          ; |91| 
   [!B0]   BNOP    .S1     L16,5             ; |91| 
           ; BRANCHCC OCCURS {L16}           ; |91| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L15:    
DW$L$_get_weights$20$B:
	.dwpsn	"main.c",92,9
;----------------------------------------------------------------------
;  92 | fscanf(fp, "%ld", &output_b[i]);                                       
;----------------------------------------------------------------------

           CALL    .S1     _fscanf           ; |92| 
||         MVKL    .S2     _output_b,B4      ; |92| 
||         MV      .L2     B4,B5

           LDW     .D2T1   *+SP(12),A4       ; |92| 
||         MVKH    .S2     _output_b,B4      ; |92| 
||         MVKL    .S1     SL5+0,A3          ; |92| 

           ADDAD   .D2     B4,B5,B4          ; |92| 
||         MVKH    .S1     SL5+0,A3          ; |92| 

           STW     .D2T1   A3,*+SP(4)        ; |92| 
           STW     .D2T2   B4,*+SP(8)        ; |92| 
           ADDKPC  .S2     RL25,B3,0         ; |92| 
RL25:      ; CALL OCCURS {_fscanf}           ; |92| 
	.dwpsn	"main.c",91,34
           LDW     .D2T2   *+SP(16),B4       ; |91| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |91| 
           STW     .D2T2   B4,*+SP(16)       ; |91| 
           NOP             2
	.dwpsn	"main.c",91,17
           CMPLT   .L2     B4,10,B0          ; |91| 
   [ B0]   BNOP    .S1     L15,5             ; |91| 
           ; BRANCHCC OCCURS {L15}           ; |91| 
DW$L$_get_weights$20$E:
;** --------------------------------------------------------------------------*
L16:    
	.dwpsn	"main.c",94,5
;----------------------------------------------------------------------
;  94 | printf("output_b load succeed\n");                                     
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |94| 
           MVKL    .S1     SL18+0,A3         ; |94| 
           MVKH    .S1     SL18+0,A3         ; |94| 
           STW     .D2T1   A3,*+SP(4)        ; |94| 
           ADDKPC  .S2     RL26,B3,1         ; |94| 
RL26:      ; CALL OCCURS {_printf}           ; |94| 
	.dwpsn	"main.c",95,5
;----------------------------------------------------------------------
;  95 | fclose(fp);                                                            
;----------------------------------------------------------------------
           CALL    .S1     _fclose           ; |95| 
           LDW     .D2T1   *+SP(12),A4       ; |95| 
           ADDKPC  .S2     RL27,B3,3         ; |95| 
RL27:      ; CALL OCCURS {_fclose}           ; |95| 
	.dwpsn	"main.c",97,1
           LDW     .D2T2   *++SP(24),B3      ; |97| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |97| 
           ; BRANCH OCCURS {B3}              ; |97| 

DW$29	.dwtag  DW_TAG_loop
	.dwattr DW$29, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L15:1:1618903545")
	.dwattr DW$29, DW_AT_begin_file("main.c")
	.dwattr DW$29, DW_AT_begin_line(0x5b)
	.dwattr DW$29, DW_AT_end_line(0x5d)
DW$30	.dwtag  DW_TAG_loop_range
	.dwattr DW$30, DW_AT_low_pc(DW$L$_get_weights$20$B)
	.dwattr DW$30, DW_AT_high_pc(DW$L$_get_weights$20$E)
	.dwendtag DW$29


DW$31	.dwtag  DW_TAG_loop
	.dwattr DW$31, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L10:1:1618903545")
	.dwattr DW$31, DW_AT_begin_file("main.c")
	.dwattr DW$31, DW_AT_begin_line(0x4d)
	.dwattr DW$31, DW_AT_end_line(0x51)
DW$32	.dwtag  DW_TAG_loop_range
	.dwattr DW$32, DW_AT_low_pc(DW$L$_get_weights$14$B)
	.dwattr DW$32, DW_AT_high_pc(DW$L$_get_weights$14$E)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_get_weights$16$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_get_weights$16$E)

DW$34	.dwtag  DW_TAG_loop
	.dwattr DW$34, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L11:2:1618903545")
	.dwattr DW$34, DW_AT_begin_file("main.c")
	.dwattr DW$34, DW_AT_begin_line(0x4e)
	.dwattr DW$34, DW_AT_end_line(0x50)
DW$35	.dwtag  DW_TAG_loop_range
	.dwattr DW$35, DW_AT_low_pc(DW$L$_get_weights$15$B)
	.dwattr DW$35, DW_AT_high_pc(DW$L$_get_weights$15$E)
	.dwendtag DW$34

	.dwendtag DW$31


DW$36	.dwtag  DW_TAG_loop
	.dwattr DW$36, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L7:1:1618903545")
	.dwattr DW$36, DW_AT_begin_file("main.c")
	.dwattr DW$36, DW_AT_begin_line(0x41)
	.dwattr DW$36, DW_AT_end_line(0x43)
DW$37	.dwtag  DW_TAG_loop_range
	.dwattr DW$37, DW_AT_low_pc(DW$L$_get_weights$10$B)
	.dwattr DW$37, DW_AT_high_pc(DW$L$_get_weights$10$E)
	.dwendtag DW$36


DW$38	.dwtag  DW_TAG_loop
	.dwattr DW$38, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L2:1:1618903545")
	.dwattr DW$38, DW_AT_begin_file("main.c")
	.dwattr DW$38, DW_AT_begin_line(0x33)
	.dwattr DW$38, DW_AT_end_line(0x37)
DW$39	.dwtag  DW_TAG_loop_range
	.dwattr DW$39, DW_AT_low_pc(DW$L$_get_weights$4$B)
	.dwattr DW$39, DW_AT_high_pc(DW$L$_get_weights$4$E)
DW$40	.dwtag  DW_TAG_loop_range
	.dwattr DW$40, DW_AT_low_pc(DW$L$_get_weights$6$B)
	.dwattr DW$40, DW_AT_high_pc(DW$L$_get_weights$6$E)

DW$41	.dwtag  DW_TAG_loop
	.dwattr DW$41, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L3:2:1618903545")
	.dwattr DW$41, DW_AT_begin_file("main.c")
	.dwattr DW$41, DW_AT_begin_line(0x34)
	.dwattr DW$41, DW_AT_end_line(0x36)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_get_weights$5$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_get_weights$5$E)
	.dwendtag DW$41

	.dwendtag DW$38

	.dwattr DW$25, DW_AT_end_file("main.c")
	.dwattr DW$25, DW_AT_end_line(0x61)
	.dwattr DW$25, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$25

	.sect	".text"
	.global	_get_data_all

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("get_data_all"), DW_AT_symbol_name("_get_data_all")
	.dwattr DW$43, DW_AT_low_pc(_get_data_all)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("main.c")
	.dwattr DW$43, DW_AT_begin_line(0x63)
	.dwattr DW$43, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",99,21

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _get_data_all                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 8 Args + 12 Auto + 4 Save = 24 byte                  *
;******************************************************************************
_get_data_all:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
;  99 | void get_data_all() {                                                  
; 100 | FILE * fp;                                                             
; 101 | int i, j;                                                              
;----------------------------------------------------------------------
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |99| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("fp"), DW_AT_symbol_name("_fp")
	.dwattr DW$44, DW_AT_type(*DW$T$26)
	.dwattr DW$44, DW_AT_location[DW_OP_breg31 12]
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$45, DW_AT_location[DW_OP_breg31 16]
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_location[DW_OP_breg31 20]
	.dwpsn	"main.c",102,5
;----------------------------------------------------------------------
; 102 | if (NULL == (fp = fopen("..\\data\\data.txt", "r"))) {                 
;----------------------------------------------------------------------
           CALL    .S1     _fopen            ; |102| 
           MVKL    .S2     SL1+0,B4          ; |102| 
           MVKH    .S2     SL1+0,B4          ; |102| 
           MVKL    .S1     SL19+0,A4         ; |102| 
           ADDKPC  .S2     RL28,B3,0         ; |102| 
           MVKH    .S1     SL19+0,A4         ; |102| 
RL28:      ; CALL OCCURS {_fopen}            ; |102| 
           CMPEQ   .L1     0,A4,A0           ; |102| 
   [!A0]   BNOP    .S1     L17,4             ; |102| 
           STW     .D2T1   A4,*+SP(12)       ; |102| 
           ; BRANCHCC OCCURS {L17}           ; |102| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",103,9
;----------------------------------------------------------------------
; 103 | printf("data open failed\n");                                          
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |103| 
           MVKL    .S1     SL20+0,A3         ; |103| 
           MVKH    .S1     SL20+0,A3         ; |103| 
           STW     .D2T1   A3,*+SP(4)        ; |103| 
           ADDKPC  .S2     RL29,B3,1         ; |103| 
RL29:      ; CALL OCCURS {_printf}           ; |103| 
	.dwpsn	"main.c",104,9
;----------------------------------------------------------------------
; 104 | exit(1);                                                               
;----------------------------------------------------------------------
           CALL    .S1     _exit             ; |104| 
           ADDKPC  .S2     RL30,B3,3         ; |104| 
           MVK     .L1     0x1,A4            ; |104| 
RL30:      ; CALL OCCURS {_exit}             ; |104| 
;** --------------------------------------------------------------------------*
L17:    
	.dwpsn	"main.c",107,10
;----------------------------------------------------------------------
; 107 | for (i = 0; i < COUNT_OF_DATA; ++i) {                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |107| 
           STW     .D2T2   B4,*+SP(16)       ; |107| 
           NOP             2
	.dwpsn	"main.c",107,17
           MVK     .S2     500,B5            ; |107| 
           CMPLT   .L2     B4,B5,B0          ; |107| 
   [!B0]   BNOP    .S1     L21,5             ; |107| 
           ; BRANCHCC OCCURS {L21}           ; |107| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L18
;** --------------------------------------------------------------------------*
L18:    
DW$L$_get_data_all$4$B:
	.dwpsn	"main.c",108,14
;----------------------------------------------------------------------
; 108 | for (j = 0; j < INPUT_SIZE; ++j) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |108| 
           STW     .D2T2   B4,*+SP(20)       ; |108| 
           NOP             2
	.dwpsn	"main.c",108,21
           MVK     .S2     784,B5            ; |108| 
           CMPLT   .L2     B4,B5,B0          ; |108| 
   [!B0]   BNOP    .S1     L20,5             ; |108| 
           ; BRANCHCC OCCURS {L20}           ; |108| 
DW$L$_get_data_all$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L19:    
DW$L$_get_data_all$5$B:
	.dwpsn	"main.c",109,13
;----------------------------------------------------------------------
; 109 | fscanf(fp, "%ld", &data_all[j][i]);                                    
; 112 | // for (i = 0; i < INPUT_SIZE; ++i) {                                  
; 113 | //     printf("%4d",data[i]);                                          
; 114 | // }                                                                   
; 115 | //printf("\n");                                                        
;----------------------------------------------------------------------
           MVK     .S2     4000,B5           ; |109| 
           MPYLI   .M2     B5,B4,B5:B4       ; |109| 
           LDW     .D2T1   *+SP(16),A5       ; |109| 
           MVKL    .S1     _data_all,A4      ; |109| 
           MVKH    .S1     _data_all,A4      ; |109| 
           CALL    .S2     _fscanf           ; |109| 

           LDW     .D2T1   *+SP(12),A4       ; |109| 
||         ADD     .L1X    A4,B4,A6          ; |109| 
||         MVKL    .S1     SL5+0,A3          ; |109| 

           MVKH    .S1     SL5+0,A3          ; |109| 

           ADDAD   .D1     A6,A5,A3          ; |109| 
||         STW     .D2T1   A3,*+SP(4)        ; |109| 

           STW     .D2T1   A3,*+SP(8)        ; |109| 
           ADDKPC  .S2     RL31,B3,0         ; |109| 
RL31:      ; CALL OCCURS {_fscanf}           ; |109| 
	.dwpsn	"main.c",108,37
           LDW     .D2T2   *+SP(20),B4       ; |108| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |108| 
           STW     .D2T2   B4,*+SP(20)       ; |108| 
           NOP             2
	.dwpsn	"main.c",108,21
           MVK     .S2     784,B5            ; |108| 
           CMPLT   .L2     B4,B5,B0          ; |108| 
   [ B0]   BNOP    .S1     L19,5             ; |108| 
           ; BRANCHCC OCCURS {L19}           ; |108| 
DW$L$_get_data_all$5$E:
;** --------------------------------------------------------------------------*
L20:    
DW$L$_get_data_all$6$B:
	.dwpsn	"main.c",107,36
           LDW     .D2T2   *+SP(16),B4       ; |107| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |107| 
           STW     .D2T2   B4,*+SP(16)       ; |107| 
           NOP             2
	.dwpsn	"main.c",107,17
           MVK     .S2     500,B5            ; |107| 
           CMPLT   .L2     B4,B5,B0          ; |107| 
   [ B0]   BNOP    .S1     L18,5             ; |107| 
           ; BRANCHCC OCCURS {L18}           ; |107| 
DW$L$_get_data_all$6$E:
;** --------------------------------------------------------------------------*
L21:    
	.dwpsn	"main.c",116,5
;----------------------------------------------------------------------
; 116 | fclose(fp);                                                            
;----------------------------------------------------------------------
           CALL    .S1     _fclose           ; |116| 
           LDW     .D2T1   *+SP(12),A4       ; |116| 
           ADDKPC  .S2     RL32,B3,3         ; |116| 
RL32:      ; CALL OCCURS {_fclose}           ; |116| 
	.dwpsn	"main.c",117,1
           LDW     .D2T2   *++SP(24),B3      ; |117| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |117| 
           ; BRANCH OCCURS {B3}              ; |117| 

DW$47	.dwtag  DW_TAG_loop
	.dwattr DW$47, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L18:1:1618903545")
	.dwattr DW$47, DW_AT_begin_file("main.c")
	.dwattr DW$47, DW_AT_begin_line(0x6b)
	.dwattr DW$47, DW_AT_end_line(0x6f)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_get_data_all$4$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_get_data_all$4$E)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_get_data_all$6$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_get_data_all$6$E)

DW$50	.dwtag  DW_TAG_loop
	.dwattr DW$50, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L19:2:1618903545")
	.dwattr DW$50, DW_AT_begin_file("main.c")
	.dwattr DW$50, DW_AT_begin_line(0x6c)
	.dwattr DW$50, DW_AT_end_line(0x6e)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_get_data_all$5$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_get_data_all$5$E)
	.dwendtag DW$50

	.dwendtag DW$47

	.dwattr DW$43, DW_AT_end_file("main.c")
	.dwattr DW$43, DW_AT_end_line(0x75)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$43

	.sect	".text"
	.global	_get_predict_all

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("get_predict_all"), DW_AT_symbol_name("_get_predict_all")
	.dwattr DW$52, DW_AT_low_pc(_get_predict_all)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("main.c")
	.dwattr DW$52, DW_AT_begin_line(0x77)
	.dwattr DW$52, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",119,24

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _get_predict_all                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 8 Args + 8 Auto + 4 Save = 20 byte                   *
;******************************************************************************
_get_predict_all:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 119 | void get_predict_all() {                                               
; 120 | FILE * fp;                                                             
; 121 | int i;                                                                 
;----------------------------------------------------------------------
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |119| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("fp"), DW_AT_symbol_name("_fp")
	.dwattr DW$53, DW_AT_type(*DW$T$26)
	.dwattr DW$53, DW_AT_location[DW_OP_breg31 12]
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$54, DW_AT_type(*DW$T$10)
	.dwattr DW$54, DW_AT_location[DW_OP_breg31 16]
	.dwpsn	"main.c",122,5
;----------------------------------------------------------------------
; 122 | if (NULL == (fp = fopen("..\\data\\predict.txt", "r"))) {              
;----------------------------------------------------------------------
           CALL    .S1     _fopen            ; |122| 
           MVKL    .S2     SL1+0,B4          ; |122| 
           MVKH    .S2     SL1+0,B4          ; |122| 
           MVKL    .S1     SL21+0,A4         ; |122| 
           ADDKPC  .S2     RL33,B3,0         ; |122| 
           MVKH    .S1     SL21+0,A4         ; |122| 
RL33:      ; CALL OCCURS {_fopen}            ; |122| 
           CMPEQ   .L1     0,A4,A0           ; |122| 
   [!A0]   BNOP    .S1     L22,4             ; |122| 
           STW     .D2T1   A4,*+SP(12)       ; |122| 
           ; BRANCHCC OCCURS {L22}           ; |122| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",123,9
;----------------------------------------------------------------------
; 123 | printf("predict open failed\n");                                       
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |123| 
           MVKL    .S1     SL22+0,A3         ; |123| 
           MVKH    .S1     SL22+0,A3         ; |123| 
           STW     .D2T1   A3,*+SP(4)        ; |123| 
           ADDKPC  .S2     RL34,B3,1         ; |123| 
RL34:      ; CALL OCCURS {_printf}           ; |123| 
	.dwpsn	"main.c",124,9
;----------------------------------------------------------------------
; 124 | exit(1);                                                               
;----------------------------------------------------------------------
           CALL    .S1     _exit             ; |124| 
           ADDKPC  .S2     RL35,B3,3         ; |124| 
           MVK     .L1     0x1,A4            ; |124| 
RL35:      ; CALL OCCURS {_exit}             ; |124| 
;** --------------------------------------------------------------------------*
L22:    
	.dwpsn	"main.c",126,10
;----------------------------------------------------------------------
; 126 | for (i = 0; i < COUNT_OF_DATA; i++) {                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |126| 
           STW     .D2T2   B4,*+SP(16)       ; |126| 
           NOP             2
	.dwpsn	"main.c",126,17
           MVK     .S2     500,B5            ; |126| 
           CMPLT   .L2     B4,B5,B0          ; |126| 
   [!B0]   BNOP    .S1     L24,5             ; |126| 
           ; BRANCHCC OCCURS {L24}           ; |126| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L23:    
DW$L$_get_predict_all$4$B:
	.dwpsn	"main.c",127,9
;----------------------------------------------------------------------
; 127 | fscanf(fp, "%ld", &predict_all[i]);                                    
;----------------------------------------------------------------------

           CALL    .S1     _fscanf           ; |127| 
||         MVKL    .S2     _predict_all,B4   ; |127| 
||         MV      .L2     B4,B5

           LDW     .D2T1   *+SP(12),A4       ; |127| 
||         MVKH    .S2     _predict_all,B4   ; |127| 
||         MVKL    .S1     SL5+0,A3          ; |127| 

           ADDAD   .D2     B4,B5,B4          ; |127| 
||         MVKH    .S1     SL5+0,A3          ; |127| 

           STW     .D2T1   A3,*+SP(4)        ; |127| 
           STW     .D2T2   B4,*+SP(8)        ; |127| 
           ADDKPC  .S2     RL36,B3,0         ; |127| 
RL36:      ; CALL OCCURS {_fscanf}           ; |127| 
	.dwpsn	"main.c",126,36
           LDW     .D2T2   *+SP(16),B4       ; |126| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |126| 
           STW     .D2T2   B4,*+SP(16)       ; |126| 
           NOP             2
	.dwpsn	"main.c",126,17
           MVK     .S1     500,A3            ; |126| 
           CMPLT   .L1X    B4,A3,A0          ; |126| 
   [ A0]   BNOP    .S1     L23,5             ; |126| 
           ; BRANCHCC OCCURS {L23}           ; |126| 
DW$L$_get_predict_all$4$E:
;** --------------------------------------------------------------------------*
L24:    
	.dwpsn	"main.c",129,5
;----------------------------------------------------------------------
; 129 | fclose(fp);                                                            
;----------------------------------------------------------------------
           CALL    .S1     _fclose           ; |129| 
           LDW     .D2T1   *+SP(12),A4       ; |129| 
           ADDKPC  .S2     RL37,B3,3         ; |129| 
RL37:      ; CALL OCCURS {_fclose}           ; |129| 
	.dwpsn	"main.c",130,1
           LDW     .D2T2   *++SP(24),B3      ; |130| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |130| 
           ; BRANCH OCCURS {B3}              ; |130| 

DW$55	.dwtag  DW_TAG_loop
	.dwattr DW$55, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L23:1:1618903545")
	.dwattr DW$55, DW_AT_begin_file("main.c")
	.dwattr DW$55, DW_AT_begin_line(0x7e)
	.dwattr DW$55, DW_AT_end_line(0x80)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$_get_predict_all$4$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$_get_predict_all$4$E)
	.dwendtag DW$55

	.dwattr DW$52, DW_AT_end_file("main.c")
	.dwattr DW$52, DW_AT_end_line(0x82)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$52

	.sect	".text"
	.global	_cal_layer

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("cal_layer"), DW_AT_symbol_name("_cal_layer")
	.dwattr DW$57, DW_AT_low_pc(_cal_layer)
	.dwattr DW$57, DW_AT_high_pc(0x00)
	.dwattr DW$57, DW_AT_begin_file("main.c")
	.dwattr DW$57, DW_AT_begin_line(0x85)
	.dwattr DW$57, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",133,18

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _cal_layer                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,B0,B4,B5,B6,B7,B8,B9,SP,A31,B16,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A3,A4,A5,B0,B3,B4,B5,B6,B7,B8,B9,SP,A31,B16,B28,  *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
_cal_layer:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 133 | void cal_layer() {                                                     
; 134 | int i, j;                                                              
;----------------------------------------------------------------------
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .L2     SP,8,SP           ; |133| 
	.dwcfa	0x0e, 8
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$58, DW_AT_type(*DW$T$10)
	.dwattr DW$58, DW_AT_location[DW_OP_breg31 4]
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$59, DW_AT_type(*DW$T$10)
	.dwattr DW$59, DW_AT_location[DW_OP_breg31 8]
	.dwpsn	"main.c",135,10
;----------------------------------------------------------------------
; 135 | for (i = 0; i < LAYER_SIZE; ++i) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |135| 
           STW     .D2T2   B4,*+SP(4)        ; |135| 
           NOP             2
	.dwpsn	"main.c",135,17
           MVK     .S2     128,B5            ; |135| 
           CMPLT   .L2     B4,B5,B0          ; |135| 
   [!B0]   BNOP    .S1     L26,5             ; |135| 
           ; BRANCHCC OCCURS {L26}           ; |135| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L25:    
DW$L$_cal_layer$2$B:
	.dwpsn	"main.c",136,9
;----------------------------------------------------------------------
; 136 | tmp1[i] = 0;                                                           
;----------------------------------------------------------------------
           MVKL    .S2     _tmp1,B6          ; |136| 

           MVKH    .S2     _tmp1,B6          ; |136| 
||         ZERO    .L2     B5:B4             ; |136| 
||         MV      .D2     B4,B7

           STDW    .D2T2   B5:B4,*+B6[B7]    ; |136| 
           NOP             2
	.dwpsn	"main.c",135,33
           LDW     .D2T2   *+SP(4),B4        ; |135| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |135| 
           STW     .D2T2   B4,*+SP(4)        ; |135| 
           NOP             2
	.dwpsn	"main.c",135,17
           MVK     .S2     128,B5            ; |135| 
           CMPLT   .L2     B4,B5,B0          ; |135| 
   [ B0]   BNOP    .S1     L25,5             ; |135| 
           ; BRANCHCC OCCURS {L25}           ; |135| 
DW$L$_cal_layer$2$E:
;** --------------------------------------------------------------------------*
L26:    
	.dwpsn	"main.c",138,10
;----------------------------------------------------------------------
; 138 | for (i = 0; i < LAYER_SIZE; ++i) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |138| 
           STW     .D2T2   B4,*+SP(4)        ; |138| 
           NOP             2
	.dwpsn	"main.c",138,17
           CMPLT   .L2     B4,B5,B0          ; |138| 
   [!B0]   BNOP    .S1     L31,5             ; |138| 
           ; BRANCHCC OCCURS {L31}           ; |138| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L27
;** --------------------------------------------------------------------------*
L27:    
DW$L$_cal_layer$4$B:
	.dwpsn	"main.c",139,14
;----------------------------------------------------------------------
; 139 | for (j = 0; j < INPUT_SIZE; ++j) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |139| 
           STW     .D2T2   B4,*+SP(8)        ; |139| 
           NOP             2
	.dwpsn	"main.c",139,21
           MVK     .S2     784,B5            ; |139| 
           CMPLT   .L2     B4,B5,B0          ; |139| 
   [!B0]   BNOP    .S1     L29,5             ; |139| 
           ; BRANCHCC OCCURS {L29}           ; |139| 
DW$L$_cal_layer$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L28:    
DW$L$_cal_layer$5$B:
	.dwpsn	"main.c",140,13
;----------------------------------------------------------------------
; 140 | tmp1[i] += data[j] * layer_w[j][i];                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A4        ; |140| 
           MVKL    .S1     _layer_w,A3       ; |140| 
           SHL     .S2     B4,10,B5          ; |140| 

           MVKH    .S1     _layer_w,A3       ; |140| 
||         MVKL    .S2     _data,B4          ; |140| 
||         MV      .L2     B4,B6

           ADD     .L1X    A3,B5,A3          ; |140| 
||         MVKH    .S2     _data,B4          ; |140| 

           LDDW    .D1T1   *+A3[A4],A5:A4    ; |140| 
||         LDDW    .D2T2   *+B4[B6],B5:B4    ; |140| 

           NOP             1
           LDW     .D2T2   *+SP(4),B7        ; |140| 
           MVKL    .S2     _tmp1,B31         ; |140| 
           MVKH    .S2     _tmp1,B31         ; |140| 
           MPYSU   .M2X    B5,A4,B16         ; |140| 
           MPYHLU  .M2X    A4,B4,B8          ; |140| 

           ADDAD   .D2     B31,B7,B30        ; |140| 
||         MPYSU   .M2X    A5,B4,B9          ; |140| 
||         MPYHLU  .M1X    B4,A4,A3          ; |140| 

           MPYU    .M1X    A4,B4,A31         ; |140| 
||         MPYHU   .M2X    B4,A4,B29         ; |140| 
||         LDDW    .D2T2   *B30,B7:B6        ; |140| 

           ADD     .L2     B9,B16,B28        ; |140| 
||         ADD     .L1X    B8,A3,A5          ; |140| 

           SHL     .S1     A5,16,A5:A4       ; |140| 
||         ADD     .L2     B29,B28,B4        ; |140| 

           ADDU    .L1     A31,A5:A4,A5:A4   ; |140| 
           ADD     .L1X    B4,A5,A5          ; |140| 
           ADDU    .L1X    B6,A5:A4,A5:A4    ; |140| 
           ADD     .L1X    B7,A5,A5          ; |140| 
           STDW    .D2T1   A5:A4,*B30        ; |140| 
           NOP             2
	.dwpsn	"main.c",139,37
           LDW     .D2T2   *+SP(8),B4        ; |139| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |139| 
           STW     .D2T2   B4,*+SP(8)        ; |139| 
           NOP             2
	.dwpsn	"main.c",139,21
           MVK     .S1     784,A3            ; |139| 
           CMPLT   .L1X    B4,A3,A0          ; |139| 
   [ A0]   BNOP    .S1     L28,5             ; |139| 
           ; BRANCHCC OCCURS {L28}           ; |139| 
DW$L$_cal_layer$5$E:
;** --------------------------------------------------------------------------*
L29:    
DW$L$_cal_layer$6$B:
	.dwpsn	"main.c",142,9
;----------------------------------------------------------------------
; 142 | tmp1[i] += layer_b[i];                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B5        ; |142| 
           MVKL    .S2     _tmp1,B4          ; |142| 
           MVKH    .S2     _tmp1,B4          ; |142| 
           MVKL    .S1     _layer_b,A3       ; |142| 
           MVKH    .S1     _layer_b,A3       ; |142| 

           MV      .L1X    B5,A4             ; |142| 
||         ADDAD   .D2     B4,B5,B6          ; |142| 

           LDDW    .D2T2   *B6,B5:B4         ; |142| 
||         LDDW    .D1T1   *+A3[A4],A5:A4    ; |142| 

           NOP             4
           ADDU    .L1X    B4,A5:A4,A5:A4    ; |142| 
           ADD     .L1X    B5,A5,A5          ; |142| 
           STDW    .D2T1   A5:A4,*B6         ; |142| 
           NOP             2
	.dwpsn	"main.c",143,9
;----------------------------------------------------------------------
; 143 | if (tmp1[i] < 0) { tmp1[i] = 0; } // "relu"                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A4        ; |143| 
           NOP             2
           MVKL    .S1     _tmp1,A3          ; |143| 
           MVKH    .S1     _tmp1,A3          ; |143| 
           LDDW    .D1T1   *+A3[A4],A5:A4    ; |143| 
           NOP             4
           CMPLT   .L1     A5:A4,0,A0        ; |143| 
   [!A0]   BNOP    .S1     L30,5             ; |143| 
           ; BRANCHCC OCCURS {L30}           ; |143| 
DW$L$_cal_layer$6$E:
;** --------------------------------------------------------------------------*
DW$L$_cal_layer$7$B:
	.dwpsn	"main.c",143,28
;----------------------------------------------------------------------
; 145 | //printf("cal_layer calculate over\n");                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B7        ; |143| 
           ZERO    .L2     B5:B4             ; |143| 
           NOP             1
           MVKL    .S2     _tmp1,B6          ; |143| 
           MVKH    .S2     _tmp1,B6          ; |143| 
           STDW    .D2T2   B5:B4,*+B6[B7]    ; |143| 
DW$L$_cal_layer$7$E:
;** --------------------------------------------------------------------------*
L30:    
DW$L$_cal_layer$8$B:
	.dwpsn	"main.c",138,33
           LDW     .D2T2   *+SP(4),B4        ; |138| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |138| 
           STW     .D2T2   B4,*+SP(4)        ; |138| 
           NOP             2
	.dwpsn	"main.c",138,17

           MVK     .S2     128,B4            ; |138| 
||         MV      .L2     B4,B5

           CMPLT   .L2     B5,B4,B0          ; |138| 
   [ B0]   BNOP    .S1     L27,5             ; |138| 
           ; BRANCHCC OCCURS {L27}           ; |138| 
DW$L$_cal_layer$8$E:
;** --------------------------------------------------------------------------*
L31:    
	.dwpsn	"main.c",146,1
           ADD     .L2     8,SP,SP           ; |146| 
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |146| 
           ; BRANCH OCCURS {B3}              ; |146| 

DW$60	.dwtag  DW_TAG_loop
	.dwattr DW$60, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L27:1:1618903545")
	.dwattr DW$60, DW_AT_begin_file("main.c")
	.dwattr DW$60, DW_AT_begin_line(0x8a)
	.dwattr DW$60, DW_AT_end_line(0x90)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_cal_layer$4$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_cal_layer$4$E)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_cal_layer$6$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_cal_layer$6$E)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_cal_layer$7$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_cal_layer$7$E)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$_cal_layer$8$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$_cal_layer$8$E)

DW$65	.dwtag  DW_TAG_loop
	.dwattr DW$65, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L28:2:1618903545")
	.dwattr DW$65, DW_AT_begin_file("main.c")
	.dwattr DW$65, DW_AT_begin_line(0x8b)
	.dwattr DW$65, DW_AT_end_line(0x8d)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_cal_layer$5$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_cal_layer$5$E)
	.dwendtag DW$65

	.dwendtag DW$60


DW$67	.dwtag  DW_TAG_loop
	.dwattr DW$67, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L25:1:1618903545")
	.dwattr DW$67, DW_AT_begin_file("main.c")
	.dwattr DW$67, DW_AT_begin_line(0x87)
	.dwattr DW$67, DW_AT_end_line(0x89)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$_cal_layer$2$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$_cal_layer$2$E)
	.dwendtag DW$67

	.dwattr DW$57, DW_AT_end_file("main.c")
	.dwattr DW$57, DW_AT_end_line(0x92)
	.dwattr DW$57, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$57

	.sect	".text"
	.global	_cal_output

DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("cal_output"), DW_AT_symbol_name("_cal_output")
	.dwattr DW$69, DW_AT_low_pc(_cal_output)
	.dwattr DW$69, DW_AT_high_pc(0x00)
	.dwattr DW$69, DW_AT_begin_file("main.c")
	.dwattr DW$69, DW_AT_begin_line(0x94)
	.dwattr DW$69, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",148,19

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _cal_output                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,B0,B4,B5,B6,B7,B8,B9,SP,B16,B27,B28,  *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A3,A4,A5,A6,B0,B3,B4,B5,B6,B7,B8,B9,SP,B16,B27,   *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
_cal_output:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 148 | void cal_output() {                                                    
; 149 | int i, j;                                                              
;----------------------------------------------------------------------
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .L2     SP,8,SP           ; |148| 
	.dwcfa	0x0e, 8
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$70, DW_AT_type(*DW$T$10)
	.dwattr DW$70, DW_AT_location[DW_OP_breg31 4]
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$71, DW_AT_type(*DW$T$10)
	.dwattr DW$71, DW_AT_location[DW_OP_breg31 8]
	.dwpsn	"main.c",150,10
;----------------------------------------------------------------------
; 150 | for (i = 0; i < OUTPUT_SIZE; ++i) {                                    
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |150| 
           STW     .D2T2   B4,*+SP(4)        ; |150| 
           NOP             2
	.dwpsn	"main.c",150,17
           CMPLT   .L2     B4,10,B0          ; |150| 
   [!B0]   BNOP    .S1     L33,5             ; |150| 
           ; BRANCHCC OCCURS {L33}           ; |150| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L32:    
DW$L$_cal_output$2$B:
	.dwpsn	"main.c",151,9
;----------------------------------------------------------------------
; 151 | tmp2[i] = 0;                                                           
;----------------------------------------------------------------------
           MVKL    .S2     _tmp2,B6          ; |151| 

           MVKH    .S2     _tmp2,B6          ; |151| 
||         ZERO    .L2     B5:B4             ; |151| 
||         MV      .D2     B4,B7

           STDW    .D2T2   B5:B4,*+B6[B7]    ; |151| 
           NOP             2
	.dwpsn	"main.c",150,34
           LDW     .D2T2   *+SP(4),B4        ; |150| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |150| 
           STW     .D2T2   B4,*+SP(4)        ; |150| 
           NOP             2
	.dwpsn	"main.c",150,17
           CMPLT   .L2     B4,10,B0          ; |150| 
   [ B0]   BNOP    .S1     L32,5             ; |150| 
           ; BRANCHCC OCCURS {L32}           ; |150| 
DW$L$_cal_output$2$E:
;** --------------------------------------------------------------------------*
L33:    
	.dwpsn	"main.c",153,10
;----------------------------------------------------------------------
; 153 | for (i = 0; i < OUTPUT_SIZE; ++i) {                                    
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |153| 
           STW     .D2T2   B4,*+SP(4)        ; |153| 
           NOP             2
	.dwpsn	"main.c",153,17
           CMPLT   .L2     B4,10,B0          ; |153| 
   [!B0]   BNOP    .S1     L37,5             ; |153| 
           ; BRANCHCC OCCURS {L37}           ; |153| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L34
;** --------------------------------------------------------------------------*
L34:    
DW$L$_cal_output$4$B:
	.dwpsn	"main.c",154,14
;----------------------------------------------------------------------
; 154 | for (j = 0; j < LAYER_SIZE; ++j) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |154| 
           STW     .D2T2   B4,*+SP(8)        ; |154| 
           NOP             2
	.dwpsn	"main.c",154,21
           MVK     .S2     128,B5            ; |154| 
           CMPLT   .L2     B4,B5,B0          ; |154| 
   [!B0]   BNOP    .S1     L36,5             ; |154| 
           ; BRANCHCC OCCURS {L36}           ; |154| 
DW$L$_cal_output$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L35:    
DW$L$_cal_output$5$B:
	.dwpsn	"main.c",155,13
;----------------------------------------------------------------------
; 155 | tmp2[i] += tmp1[j] * output_w[j][i];                                   
;----------------------------------------------------------------------

           LDW     .D2T1   *+SP(4),A3        ; |155| 
||         MVKL    .S2     _output_w,B5      ; |155| 
||         MV      .L2     B4,B6

           SHL     .S2     B6,6,B4           ; |155| 
||         MV      .L2     B4,B7

           MVKH    .S2     _output_w,B5      ; |155| 
||         SHL     .S1X    B6,4,A4           ; |155| 

           ADD     .L1X    A4,B4,A4          ; |155| 
||         MVKL    .S2     _tmp1,B31         ; |155| 

           ADD     .L1X    B5,A4,A4          ; |155| 
||         MVKH    .S2     _tmp1,B31         ; |155| 

           LDDW    .D1T1   *+A4[A3],A5:A4    ; |155| 
||         LDDW    .D2T2   *+B31[B7],B5:B4   ; |155| 

           MV      .L2X    A3,B7             ; |155| 
           MVKL    .S2     _tmp2,B30         ; |155| 
           MVKH    .S2     _tmp2,B30         ; |155| 
           ADDAD   .D2     B30,B7,B29        ; |155| 
           MPYSU   .M2X    B5,A4,B16         ; |155| 
           MPYHLU  .M2X    A4,B4,B8          ; |155| 

           MPYHLU  .M1X    B4,A4,A3          ; |155| 
||         MPYSU   .M2X    A5,B4,B9          ; |155| 

           LDDW    .D2T2   *B29,B7:B6        ; |155| 
||         MPYHU   .M2X    B4,A4,B28         ; |155| 
||         MPYU    .M1X    A4,B4,A6          ; |155| 

           ADD     .L1X    B8,A3,A3          ; |155| 
||         ADD     .L2     B9,B16,B27        ; |155| 

           ADD     .L2     B28,B27,B4        ; |155| 
||         SHL     .S1     A3,16,A5:A4       ; |155| 

           ADDU    .L1     A6,A5:A4,A5:A4    ; |155| 
           ADD     .L1X    B4,A5,A5          ; |155| 
           ADDU    .L1X    B6,A5:A4,A5:A4    ; |155| 
           ADD     .L1X    B7,A5,A5          ; |155| 
           STDW    .D2T1   A5:A4,*B29        ; |155| 
           NOP             2
	.dwpsn	"main.c",154,37
           LDW     .D2T2   *+SP(8),B4        ; |154| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |154| 
           STW     .D2T2   B4,*+SP(8)        ; |154| 
           NOP             2
	.dwpsn	"main.c",154,21
           MVK     .S1     128,A3            ; |154| 
           CMPLT   .L1X    B4,A3,A0          ; |154| 
   [ A0]   BNOP    .S1     L35,5             ; |154| 
           ; BRANCHCC OCCURS {L35}           ; |154| 
DW$L$_cal_output$5$E:
;** --------------------------------------------------------------------------*
L36:    
DW$L$_cal_output$6$B:
	.dwpsn	"main.c",157,9
;----------------------------------------------------------------------
; 157 | tmp2[i] += output_b[i];                                                
; 159 | //printf("output_layer calculate over\n");                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B5        ; |157| 
           MVKL    .S2     _tmp2,B4          ; |157| 
           MVKH    .S2     _tmp2,B4          ; |157| 
           MVKL    .S1     _output_b,A3      ; |157| 
           MVKH    .S1     _output_b,A3      ; |157| 

           MV      .L1X    B5,A4             ; |157| 
||         ADDAD   .D2     B4,B5,B6          ; |157| 

           LDDW    .D2T2   *B6,B5:B4         ; |157| 
||         LDDW    .D1T1   *+A3[A4],A5:A4    ; |157| 

           NOP             4
           ADDU    .L1X    B4,A5:A4,A5:A4    ; |157| 
           ADD     .L1X    B5,A5,A5          ; |157| 
           STDW    .D2T1   A5:A4,*B6         ; |157| 
           NOP             2
	.dwpsn	"main.c",153,34
           LDW     .D2T2   *+SP(4),B4        ; |153| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |153| 
           STW     .D2T2   B4,*+SP(4)        ; |153| 
           NOP             2
	.dwpsn	"main.c",153,17
           CMPLT   .L2     B4,10,B0          ; |153| 
   [ B0]   BNOP    .S1     L34,5             ; |153| 
           ; BRANCHCC OCCURS {L34}           ; |153| 
DW$L$_cal_output$6$E:
;** --------------------------------------------------------------------------*
L37:    
	.dwpsn	"main.c",160,1
           ADD     .L2     8,SP,SP           ; |160| 
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |160| 
           ; BRANCH OCCURS {B3}              ; |160| 

DW$72	.dwtag  DW_TAG_loop
	.dwattr DW$72, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L34:1:1618903545")
	.dwattr DW$72, DW_AT_begin_file("main.c")
	.dwattr DW$72, DW_AT_begin_line(0x99)
	.dwattr DW$72, DW_AT_end_line(0x9e)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_cal_output$4$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_cal_output$4$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_cal_output$6$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_cal_output$6$E)

DW$75	.dwtag  DW_TAG_loop
	.dwattr DW$75, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L35:2:1618903545")
	.dwattr DW$75, DW_AT_begin_file("main.c")
	.dwattr DW$75, DW_AT_begin_line(0x9a)
	.dwattr DW$75, DW_AT_end_line(0x9c)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_cal_output$5$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_cal_output$5$E)
	.dwendtag DW$75

	.dwendtag DW$72


DW$77	.dwtag  DW_TAG_loop
	.dwattr DW$77, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L32:1:1618903545")
	.dwattr DW$77, DW_AT_begin_file("main.c")
	.dwattr DW$77, DW_AT_begin_line(0x96)
	.dwattr DW$77, DW_AT_end_line(0x98)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_cal_output$2$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_cal_output$2$E)
	.dwendtag DW$77

	.dwattr DW$69, DW_AT_end_file("main.c")
	.dwattr DW$69, DW_AT_end_line(0xa0)
	.dwattr DW$69, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$69

	.sect	".text"
	.global	_get_max

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("get_max"), DW_AT_symbol_name("_get_max")
	.dwattr DW$79, DW_AT_low_pc(_get_max)
	.dwattr DW$79, DW_AT_high_pc(0x00)
	.dwattr DW$79, DW_AT_begin_file("main.c")
	.dwattr DW$79, DW_AT_begin_line(0xa2)
	.dwattr DW$79, DW_AT_begin_column(0x05)
	.dwpsn	"main.c",162,15

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _get_max                                                    *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,B0,B4,B5,SP                              *
;*   Regs Used         : A0,A3,A4,A5,B0,B3,B4,B5,SP                           *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
_get_max:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 162 | int get_max() {                                                        
; 163 | int i;                                                                 
;----------------------------------------------------------------------
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .L2     SP,8,SP           ; |162| 
	.dwcfa	0x0e, 8
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$80, DW_AT_type(*DW$T$10)
	.dwattr DW$80, DW_AT_location[DW_OP_breg31 4]
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$81, DW_AT_type(*DW$T$10)
	.dwattr DW$81, DW_AT_location[DW_OP_breg31 8]
	.dwpsn	"main.c",164,9
;----------------------------------------------------------------------
; 164 | int max = 0;                                                           
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |164| 
           STW     .D2T2   B4,*+SP(8)        ; |164| 
           NOP             2
	.dwpsn	"main.c",165,10
;----------------------------------------------------------------------
; 165 | for (i = 0; i < OUTPUT_SIZE; ++i) {                                    
;----------------------------------------------------------------------
           STW     .D2T2   B4,*+SP(4)        ; |165| 
           NOP             2
	.dwpsn	"main.c",165,17
           CMPLT   .L2     B4,10,B0          ; |165| 
   [!B0]   BNOP    .S1     L40,5             ; |165| 
           ; BRANCHCC OCCURS {L40}           ; |165| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L38:    
DW$L$_get_max$2$B:
	.dwpsn	"main.c",166,9
;----------------------------------------------------------------------
; 166 | if (tmp2[i] > tmp2[max]) {                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B5        ; |166| 
           MVKL    .S1     _tmp2,A3          ; |166| 
           MVKH    .S1     _tmp2,A3          ; |166| 

           MV      .L1X    B4,A4
||         MVKL    .S2     _tmp2,B4          ; |166| 

           LDDW    .D1T1   *+A3[A4],A5:A4    ; |166| 
||         MVKH    .S2     _tmp2,B4          ; |166| 

           LDDW    .D2T2   *+B4[B5],B5:B4    ; |166| 
           NOP             3
           EXT     .S1     A5,24,24,A3       ; |166| 
           EXT     .S2     B5,24,24,B5       ; |166| 
           CMPEQ   .L2X    A3,B5,B0          ; |166| 
   [!B0]   CMPGT   .L1X    A3,B5,A0          ; |166| 
   [ B0]   CMPGTU  .L1X    A4,B4,A0          ; |166| 
   [!A0]   BNOP    .S1     L39,5             ; |166| 
           ; BRANCHCC OCCURS {L39}           ; |166| 
DW$L$_get_max$2$E:
;** --------------------------------------------------------------------------*
DW$L$_get_max$3$B:
	.dwpsn	"main.c",167,13
;----------------------------------------------------------------------
; 167 | max = i;                                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B4        ; |167| 
           NOP             4
           STW     .D2T2   B4,*+SP(8)        ; |167| 
DW$L$_get_max$3$E:
;** --------------------------------------------------------------------------*
L39:    
DW$L$_get_max$4$B:
	.dwpsn	"main.c",165,34
           LDW     .D2T2   *+SP(4),B4        ; |165| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |165| 
           STW     .D2T2   B4,*+SP(4)        ; |165| 
           NOP             2
	.dwpsn	"main.c",165,17
           CMPLT   .L2     B4,10,B0          ; |165| 
   [ B0]   BNOP    .S1     L38,5             ; |165| 
           ; BRANCHCC OCCURS {L38}           ; |165| 
DW$L$_get_max$4$E:
;** --------------------------------------------------------------------------*
L40:    
	.dwpsn	"main.c",170,5
;----------------------------------------------------------------------
; 170 | return max;                                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |170| 
           NOP             4
	.dwpsn	"main.c",171,1
           ADD     .L2     8,SP,SP           ; |171| 
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |171| 
           ; BRANCH OCCURS {B3}              ; |171| 

DW$82	.dwtag  DW_TAG_loop
	.dwattr DW$82, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L38:1:1618903545")
	.dwattr DW$82, DW_AT_begin_file("main.c")
	.dwattr DW$82, DW_AT_begin_line(0xa5)
	.dwattr DW$82, DW_AT_end_line(0xa9)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_get_max$2$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_get_max$2$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_get_max$3$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_get_max$3$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_get_max$4$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_get_max$4$E)
	.dwendtag DW$82

	.dwattr DW$79, DW_AT_end_file("main.c")
	.dwattr DW$79, DW_AT_end_line(0xab)
	.dwattr DW$79, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$79

	.sect	".text"
	.global	_main

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$86, DW_AT_low_pc(_main)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("main.c")
	.dwattr DW$86, DW_AT_begin_line(0xad)
	.dwattr DW$86, DW_AT_begin_column(0x05)
	.dwpsn	"main.c",173,12

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 24 Args + 20 Auto + 8 Save = 52 byte                 *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 173 | int main() {                                                           
; 175 | int max;                                                               
; 176 | int i, j;                                                              
;----------------------------------------------------------------------
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(56)      ; |173| 
           NOP             2
	.dwcfa	0x0e, 56
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A10,*+SP(52)      ; |173| 
           NOP             2
	.dwcfa	0x80, 10, 1
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_location[DW_OP_breg31 28]
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$88, DW_AT_type(*DW$T$10)
	.dwattr DW$88, DW_AT_location[DW_OP_breg31 32]
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$89, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_location[DW_OP_breg31 36]
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("right"), DW_AT_symbol_name("_right")
	.dwattr DW$90, DW_AT_type(*DW$T$10)
	.dwattr DW$90, DW_AT_location[DW_OP_breg31 40]
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$91, DW_AT_type(*DW$T$16)
	.dwattr DW$91, DW_AT_location[DW_OP_breg31 44]
	.dwpsn	"main.c",177,9
;----------------------------------------------------------------------
; 177 | int right = 0;                                                         
; 178 | float acc;                                                             
;----------------------------------------------------------------------
           ZERO    .L1     A3                ; |177| 
           STW     .D2T1   A3,*+SP(40)       ; |177| 
           NOP             2
	.dwpsn	"main.c",179,5
;----------------------------------------------------------------------
; 179 | printf("weights always multi %d\n", MULTI);                            
;----------------------------------------------------------------------
           CALL    .S1     _printf           ; |179| 
           MVKL    .S1     SL23+0,A3         ; |179| 
           MVK     .S2     1000,B4           ; |179| 

           STW     .D2T2   B4,*+SP(8)        ; |179| 
||         MVKH    .S1     SL23+0,A3         ; |179| 

           STW     .D2T1   A3,*+SP(4)        ; |179| 
           ADDKPC  .S2     RL39,B3,0         ; |179| 
RL39:      ; CALL OCCURS {_printf}           ; |179| 
	.dwpsn	"main.c",180,5
;----------------------------------------------------------------------
; 180 | get_weights();                                                         
;----------------------------------------------------------------------
           CALL    .S1     _get_weights      ; |180| 
           ADDKPC  .S2     RL40,B3,4         ; |180| 
RL40:      ; CALL OCCURS {_get_weights}      ; |180| 
	.dwpsn	"main.c",181,5
;----------------------------------------------------------------------
; 181 | get_data_all();                                                        
;----------------------------------------------------------------------
           CALL    .S1     _get_data_all     ; |181| 
           ADDKPC  .S2     RL41,B3,4         ; |181| 
RL41:      ; CALL OCCURS {_get_data_all}     ; |181| 
	.dwpsn	"main.c",182,5
;----------------------------------------------------------------------
; 182 | get_predict_all();                                                     
;----------------------------------------------------------------------
           CALL    .S1     _get_predict_all  ; |182| 
           ADDKPC  .S2     RL42,B3,4         ; |182| 
RL42:      ; CALL OCCURS {_get_predict_all}  ; |182| 
	.dwpsn	"main.c",183,10
;----------------------------------------------------------------------
; 183 | for (i = 0; i < COUNT_OF_DATA; ++i) {                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |183| 
           STW     .D2T2   B4,*+SP(32)       ; |183| 
           NOP             2
	.dwpsn	"main.c",183,17
           MVK     .S2     500,B5            ; |183| 
           CMPLT   .L2     B4,B5,B0          ; |183| 
   [!B0]   BNOP    .S1     L45,5             ; |183| 
           ; BRANCHCC OCCURS {L45}           ; |183| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L41
;** --------------------------------------------------------------------------*
L41:    
DW$L$_main$2$B:
	.dwpsn	"main.c",184,14
;----------------------------------------------------------------------
; 184 | for (j = 0; j < INPUT_SIZE; ++j) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |184| 
           STW     .D2T2   B4,*+SP(36)       ; |184| 
           NOP             2
	.dwpsn	"main.c",184,21
           MVK     .S2     784,B5            ; |184| 
           CMPLT   .L2     B4,B5,B0          ; |184| 
   [!B0]   BNOP    .S1     L43,5             ; |184| 
           ; BRANCHCC OCCURS {L43}           ; |184| 
DW$L$_main$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L42:    
DW$L$_main$3$B:
	.dwpsn	"main.c",185,13
;----------------------------------------------------------------------
; 185 | data[j] = data_all[j][i];                                              
;----------------------------------------------------------------------
           MVK     .S2     4000,B5           ; |185| 
           MPYLI   .M2     B5,B4,B5:B4       ; |185| 
           LDW     .D2T1   *+SP(32),A4       ; |185| 
           MVKL    .S1     _data_all,A3      ; |185| 
           MVKH    .S1     _data_all,A3      ; |185| 
           LDW     .D2T2   *+SP(36),B31      ; |185| 
           ADD     .L1X    A3,B4,A3          ; |185| 
           LDDW    .D1T1   *+A3[A4],A5:A4    ; |185| 
           NOP             2
           MVKL    .S2     _data,B30         ; |185| 
           MVKH    .S2     _data,B30         ; |185| 
           STDW    .D2T1   A5:A4,*+B30[B31]  ; |185| 
           NOP             2
	.dwpsn	"main.c",184,37
           LDW     .D2T2   *+SP(36),B4       ; |184| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |184| 
           STW     .D2T2   B4,*+SP(36)       ; |184| 
           NOP             2
	.dwpsn	"main.c",184,21
           MVK     .S1     784,A3            ; |184| 
           NOP             1
           CMPLT   .L2X    B4,A3,B0          ; |184| 
   [ B0]   BNOP    .S1     L42,5             ; |184| 
           ; BRANCHCC OCCURS {L42}           ; |184| 
DW$L$_main$3$E:
;** --------------------------------------------------------------------------*
L43:    
DW$L$_main$4$B:
	.dwpsn	"main.c",187,9
;----------------------------------------------------------------------
; 187 | predict = predict_all[i];                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B5       ; |187| 
           NOP             2
           MVKL    .S2     _predict_all,B4   ; |187| 
           MVKH    .S2     _predict_all,B4   ; |187| 
           LDDW    .D2T2   *+B4[B5],B5:B4    ; |187| 
           NOP             4
           STW     .D2T2   B4,*+DP(_predict) ; |187| 
           STW     .D2T2   B5,*+DP(_predict+4) ; |187| 
           NOP             2
	.dwpsn	"main.c",188,9
;----------------------------------------------------------------------
; 188 | cal_layer();                                                           
;----------------------------------------------------------------------
           CALL    .S1     _cal_layer        ; |188| 
           ADDKPC  .S2     RL43,B3,4         ; |188| 
RL43:      ; CALL OCCURS {_cal_layer}        ; |188| 
	.dwpsn	"main.c",189,9
;----------------------------------------------------------------------
; 189 | cal_output();                                                          
;----------------------------------------------------------------------
           CALL    .S1     _cal_output       ; |189| 
           ADDKPC  .S2     RL44,B3,4         ; |189| 
RL44:      ; CALL OCCURS {_cal_output}       ; |189| 
	.dwpsn	"main.c",190,9
;----------------------------------------------------------------------
; 190 | max = get_max();                                                       
;----------------------------------------------------------------------
           CALL    .S1     _get_max          ; |190| 
           ADDKPC  .S2     RL45,B3,4         ; |190| 
RL45:      ; CALL OCCURS {_get_max}          ; |190| 
           STW     .D2T1   A4,*+SP(28)       ; |190| 
           NOP             2
	.dwpsn	"main.c",191,9
;----------------------------------------------------------------------
; 191 | printf("predict is %d, label is %ld, cnt is %d\n", max, predict, i);   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B6       ; |191| 
           LDW     .D2T2   *+DP(_predict+4),B5 ; |191| 
           LDW     .D2T2   *+DP(_predict),B4 ; |191| 

           CALL    .S1     _printf           ; |191| 
||         MV      .L2X    A4,B7             ; |191| 

           STW     .D2T2   B7,*+SP(8)        ; |191| 
||         MVKL    .S1     SL24+0,A3         ; |191| 

           STW     .D2T2   B6,*+SP(24)       ; |191| 
||         MVKH    .S1     SL24+0,A3         ; |191| 

           STW     .D2T1   A3,*+SP(4)        ; |191| 
           STDW    .D2T2   B5:B4,*+SP(16)    ; |191| 
           ADDKPC  .S2     RL46,B3,0         ; |191| 
RL46:      ; CALL OCCURS {_printf}           ; |191| 
	.dwpsn	"main.c",192,9
;----------------------------------------------------------------------
; 192 | if (max == predict) {                                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+DP(_predict+4),B5 ; |192| 
           LDW     .D2T2   *+DP(_predict),B4 ; |192| 
           LDW     .D2T2   *+SP(28),B6       ; |192| 
           NOP             4
           CMPEQ   .L2     B6,B5:B4,B0       ; |192| 
   [!B0]   BNOP    .S1     L44,5             ; |192| 
           ; BRANCHCC OCCURS {L44}           ; |192| 
DW$L$_main$4$E:
;** --------------------------------------------------------------------------*
DW$L$_main$5$B:
	.dwpsn	"main.c",193,13
;----------------------------------------------------------------------
; 193 | right++;                                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B4       ; |193| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |193| 
           STW     .D2T2   B4,*+SP(40)       ; |193| 
DW$L$_main$5$E:
;** --------------------------------------------------------------------------*
L44:    
DW$L$_main$6$B:
	.dwpsn	"main.c",183,36
           LDW     .D2T2   *+SP(32),B4       ; |183| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |183| 
           STW     .D2T2   B4,*+SP(32)       ; |183| 
           NOP             2
	.dwpsn	"main.c",183,17
           MVK     .S2     500,B5            ; |183| 
           CMPLT   .L2     B4,B5,B0          ; |183| 
   [ B0]   BNOP    .S1     L41,5             ; |183| 
           ; BRANCHCC OCCURS {L41}           ; |183| 
DW$L$_main$6$E:
;** --------------------------------------------------------------------------*
L45:    
	.dwpsn	"main.c",196,5
;----------------------------------------------------------------------
; 196 | acc = (float) right * 100 / (float) i;                                 
;----------------------------------------------------------------------
           CALL    .S1     __fltif           ; |196| 
           LDW     .D2T1   *+SP(40),A4       ; |196| 
           ADDKPC  .S2     RL52,B3,3         ; |196| 
RL52:      ; CALL OCCURS {__fltif}           ; |196| 
           CALL    .S1     __mpyf            ; |196| 
           ZERO    .L1     A3                ; |196| 
           MVKH    .S1     0x42c80000,A3     ; |196| 
           ADDKPC  .S2     RL53,B3,1         ; |196| 
           MV      .L2X    A3,B4             ; |196| 
RL53:      ; CALL OCCURS {__mpyf}            ; |196| 
           CALL    .S1     __fltif           ; |196| 

           LDW     .D2T1   *+SP(32),A4       ; |196| 
||         MV      .L1     A4,A10            ; |196| 

           ADDKPC  .S2     RL54,B3,3         ; |196| 
RL54:      ; CALL OCCURS {__fltif}           ; |196| 
           CALL    .S1     __divf            ; |196| 
           MV      .L2X    A4,B4             ; |196| 
           ADDKPC  .S2     RL55,B3,2         ; |196| 
           MV      .L1     A10,A4            ; |196| 
RL55:      ; CALL OCCURS {__divf}            ; |196| 
           STW     .D2T1   A4,*+SP(44)       ; |196| 
           NOP             2
	.dwpsn	"main.c",197,5
;----------------------------------------------------------------------
; 197 | printf("data predict over, acc is %.2f%%\n", acc);                     
;----------------------------------------------------------------------
           CALL    .S1     __cvtfd           ; |197| 
           ADDKPC  .S2     RL57,B3,4         ; |197| 
RL57:      ; CALL OCCURS {__cvtfd}           ; |197| 
           CALL    .S1     _printf           ; |197| 
           MVKL    .S2     SL25+0,B4         ; |197| 
           STDW    .D2T1   A5:A4,*+SP(8)     ; |197| 
           MVKH    .S2     SL25+0,B4         ; |197| 
           STW     .D2T2   B4,*+SP(4)        ; |197| 
           ADDKPC  .S2     RL58,B3,0         ; |197| 
RL58:      ; CALL OCCURS {_printf}           ; |197| 
	.dwpsn	"main.c",198,5
;----------------------------------------------------------------------
; 198 | return 0;                                                              
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |198| 
	.dwpsn	"main.c",199,1
           LDW     .D2T1   *+SP(52),A10      ; |199| 
           NOP             4
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(56),B3      ; |199| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |199| 
           ; BRANCH OCCURS {B3}              ; |199| 

DW$92	.dwtag  DW_TAG_loop
	.dwattr DW$92, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L41:1:1618903545")
	.dwattr DW$92, DW_AT_begin_file("main.c")
	.dwattr DW$92, DW_AT_begin_line(0xb7)
	.dwattr DW$92, DW_AT_end_line(0xc3)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_main$2$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_main$2$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_main$4$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_main$4$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_main$5$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_main$5$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_main$6$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_main$6$E)

DW$97	.dwtag  DW_TAG_loop
	.dwattr DW$97, DW_AT_name("Z:\user\ES-DSP-2021\wdjdsp\dsp\dsp2\main.asm:L42:2:1618903545")
	.dwattr DW$97, DW_AT_begin_file("main.c")
	.dwattr DW$97, DW_AT_begin_line(0xb8)
	.dwattr DW$97, DW_AT_end_line(0xba)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_main$3$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_main$3$E)
	.dwendtag DW$97

	.dwendtag DW$92

	.dwattr DW$86, DW_AT_end_file("main.c")
	.dwattr DW$86, DW_AT_end_line(0xc7)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$86

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"r",0
SL2:	.string	"..",92,"data",92,"layer_w.txt",0
SL3:	.string	"layer_w open failed",10,0
SL4:	.string	"layer_w open succeed",10,0
SL5:	.string	"%ld",0
SL6:	.string	"layer_w load succeed",10,0
SL7:	.string	"..",92,"data",92,"layer_b.txt",0
SL8:	.string	"layer_b open failed",10,0
SL9:	.string	"layer_b open succeed",10,0
SL10:	.string	"layer_b load succeed",10,0
SL11:	.string	"..",92,"data",92,"output_w.txt",0
SL12:	.string	"output_w open failed",10,0
SL13:	.string	"output_w open succeed",10,0
SL14:	.string	"output_w load succeed",10,0
SL15:	.string	"..",92,"data",92,"output_b.txt",0
SL16:	.string	"output_b open failed",10,0
SL17:	.string	"output_b open succeed",10,0
SL18:	.string	"output_b load succeed",10,0
SL19:	.string	"..",92,"data",92,"data.txt",0
SL20:	.string	"data open failed",10,0
SL21:	.string	"..",92,"data",92,"predict.txt",0
SL22:	.string	"predict open failed",10,0
SL23:	.string	"weights always multi %d",10,0
SL24:	.string	"predict is %d, label is %ld, cnt is %d",10,0
SL25:	.string	"data predict over, acc is %.2f%%",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_fclose
	.global	_fopen
	.global	_fscanf
	.global	_printf
	.global	_exit
	.global	__cvtfd
	.global	__divf
	.global	__fltif
	.global	__mpyf

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$21	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$27	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$27


DW$T$32	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$103	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$105	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x08)
	.dwattr DW$T$12, DW_AT_bit_size(0x28)
	.dwattr DW$T$12, DW_AT_bit_offset(0x18)

DW$T$38	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$38, DW_AT_byte_size(0xfa0)
DW$106	.dwtag  DW_TAG_subrange_type
	.dwattr DW$106, DW_AT_upper_bound(0x1f3)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$39, DW_AT_byte_size(0x2fda00)
DW$107	.dwtag  DW_TAG_subrange_type
	.dwattr DW$107, DW_AT_upper_bound(0x30f)
DW$108	.dwtag  DW_TAG_subrange_type
	.dwattr DW$108, DW_AT_upper_bound(0x1f3)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$41, DW_AT_byte_size(0x1880)
DW$109	.dwtag  DW_TAG_subrange_type
	.dwattr DW$109, DW_AT_upper_bound(0x30f)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$42, DW_AT_byte_size(0x400)
DW$110	.dwtag  DW_TAG_subrange_type
	.dwattr DW$110, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$43, DW_AT_byte_size(0xc4000)
DW$111	.dwtag  DW_TAG_subrange_type
	.dwattr DW$111, DW_AT_upper_bound(0x30f)
DW$112	.dwtag  DW_TAG_subrange_type
	.dwattr DW$112, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x50)
DW$113	.dwtag  DW_TAG_subrange_type
	.dwattr DW$113, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$46, DW_AT_byte_size(0x2800)
DW$114	.dwtag  DW_TAG_subrange_type
	.dwattr DW$114, DW_AT_upper_bound(0x7f)
DW$115	.dwtag  DW_TAG_subrange_type
	.dwattr DW$115, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$46

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x04)
DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$26, DW_AT_address_class(0x20)

DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$49

DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_address_class(0x20)
DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("FILE"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$T$30	.dwtag  DW_TAG_const_type
	.dwattr DW$T$30, DW_AT_type(*DW$T$29)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_byte_size(0x1c)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$118, DW_AT_name("fd"), DW_AT_symbol_name("_fd")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$119, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$121, DW_AT_name("bufend"), DW_AT_symbol_name("_bufend")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$122, DW_AT_name("buff_stop"), DW_AT_symbol_name("_buff_stop")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$124, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$29	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$29, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$T$19	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$19, DW_AT_address_class(0x20)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

	.dwattr DW$57, DW_AT_external(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
	.dwattr DW$79, DW_AT_type(*DW$T$10)
	.dwattr DW$52, DW_AT_external(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 126
	.dwcfa	0x0c, 31, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x08, 12
	.dwcfa	0x08, 13
	.dwcfa	0x08, 14
	.dwcfa	0x08, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x08, 26
	.dwcfa	0x08, 27
	.dwcfa	0x08, 28
	.dwcfa	0x08, 29
	.dwcfa	0x08, 30
	.dwcfa	0x08, 31
	.dwcfa	0x08, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40
	.dwcfa	0x07, 41
	.dwcfa	0x07, 42
	.dwcfa	0x07, 43
	.dwcfa	0x07, 44
	.dwcfa	0x07, 45
	.dwcfa	0x07, 46
	.dwcfa	0x07, 47
	.dwcfa	0x07, 48
	.dwcfa	0x07, 49
	.dwcfa	0x07, 50
	.dwcfa	0x07, 51
	.dwcfa	0x07, 52
	.dwcfa	0x07, 53
	.dwcfa	0x07, 54
	.dwcfa	0x07, 55
	.dwcfa	0x07, 56
	.dwcfa	0x07, 57
	.dwcfa	0x07, 58
	.dwcfa	0x07, 59
	.dwcfa	0x07, 60
	.dwcfa	0x07, 61
	.dwcfa	0x07, 62
	.dwcfa	0x07, 63
	.dwcfa	0x07, 64
	.dwcfa	0x07, 65
	.dwcfa	0x07, 66
	.dwcfa	0x07, 67
	.dwcfa	0x07, 68
	.dwcfa	0x07, 69
	.dwcfa	0x07, 70
	.dwcfa	0x07, 71
	.dwcfa	0x07, 72
	.dwcfa	0x07, 73
	.dwcfa	0x07, 74
	.dwcfa	0x07, 75
	.dwcfa	0x07, 76
	.dwcfa	0x07, 77
	.dwcfa	0x07, 78
	.dwcfa	0x07, 79
	.dwcfa	0x07, 80
	.dwcfa	0x07, 81
	.dwcfa	0x07, 82
	.dwcfa	0x07, 83
	.dwcfa	0x07, 84
	.dwcfa	0x07, 85
	.dwcfa	0x07, 86
	.dwcfa	0x07, 87
	.dwcfa	0x07, 88
	.dwcfa	0x07, 89
	.dwcfa	0x07, 90
	.dwcfa	0x07, 91
	.dwcfa	0x07, 92
	.dwcfa	0x07, 93
	.dwcfa	0x07, 94
	.dwcfa	0x07, 95
	.dwcfa	0x07, 96
	.dwcfa	0x07, 97
	.dwcfa	0x07, 98
	.dwcfa	0x07, 99
	.dwcfa	0x07, 100
	.dwcfa	0x07, 101
	.dwcfa	0x07, 102
	.dwcfa	0x07, 103
	.dwcfa	0x07, 104
	.dwcfa	0x07, 105
	.dwcfa	0x07, 106
	.dwcfa	0x07, 107
	.dwcfa	0x07, 108
	.dwcfa	0x07, 109
	.dwcfa	0x07, 110
	.dwcfa	0x07, 111
	.dwcfa	0x07, 112
	.dwcfa	0x07, 113
	.dwcfa	0x07, 114
	.dwcfa	0x07, 115
	.dwcfa	0x07, 116
	.dwcfa	0x07, 117
	.dwcfa	0x07, 118
	.dwcfa	0x07, 119
	.dwcfa	0x07, 120
	.dwcfa	0x07, 121
	.dwcfa	0x07, 122
	.dwcfa	0x07, 123
	.dwcfa	0x07, 124
	.dwcfa	0x07, 125
	.dwcfa	0x07, 126

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$125, DW_AT_location[DW_OP_reg0]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$126, DW_AT_location[DW_OP_reg1]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$127, DW_AT_location[DW_OP_reg2]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$128, DW_AT_location[DW_OP_reg3]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$129, DW_AT_location[DW_OP_reg4]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$130, DW_AT_location[DW_OP_reg5]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$131, DW_AT_location[DW_OP_reg6]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$132, DW_AT_location[DW_OP_reg7]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$133, DW_AT_location[DW_OP_reg8]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$134, DW_AT_location[DW_OP_reg9]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$135, DW_AT_location[DW_OP_reg10]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$136, DW_AT_location[DW_OP_reg11]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$137, DW_AT_location[DW_OP_reg12]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$138, DW_AT_location[DW_OP_reg13]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$139, DW_AT_location[DW_OP_reg14]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$140, DW_AT_location[DW_OP_reg15]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$141, DW_AT_location[DW_OP_reg16]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$142, DW_AT_location[DW_OP_reg17]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$143, DW_AT_location[DW_OP_reg18]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$144, DW_AT_location[DW_OP_reg19]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$145, DW_AT_location[DW_OP_reg20]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$146, DW_AT_location[DW_OP_reg21]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$147, DW_AT_location[DW_OP_reg22]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$148, DW_AT_location[DW_OP_reg23]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$149, DW_AT_location[DW_OP_reg24]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$150, DW_AT_location[DW_OP_reg25]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$151, DW_AT_location[DW_OP_reg26]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$152, DW_AT_location[DW_OP_reg27]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$153, DW_AT_location[DW_OP_reg28]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$154, DW_AT_location[DW_OP_reg29]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$155, DW_AT_location[DW_OP_reg30]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$156, DW_AT_location[DW_OP_reg31]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x20]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x21]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x22]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x23]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x24]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x25]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x26]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x27]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x28]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x29]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x2a]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x2b]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x2c]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x2d]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x2e]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x2f]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x30]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x31]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x32]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x33]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x34]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x35]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x36]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x37]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x38]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x39]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x3a]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x3b]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x3c]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x3d]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x3e]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x3f]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x40]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x41]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x42]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x43]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x44]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x45]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x46]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x47]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x48]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x49]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x4a]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x4b]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x4c]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x4d]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x4e]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x4f]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x50]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x51]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x52]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x53]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x54]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x55]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x56]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x57]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x58]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x59]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x5a]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x5b]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x5c]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x5d]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x5e]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x5f]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x60]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x61]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x62]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x63]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x64]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x65]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x66]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x67]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x68]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x69]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x6a]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x6b]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x6c]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x6d]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x6e]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x6f]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x70]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x71]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x72]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x73]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x74]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x75]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x76]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x77]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x78]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x79]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x7a]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x7b]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x7c]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x7d]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

