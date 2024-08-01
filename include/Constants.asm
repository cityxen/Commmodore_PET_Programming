//////////////////////////////////////////////////////////////////////////////////////
// CityXen - https://linktr.ee/cityxen
//////////////////////////////////////////////////////////////////////////////////////
// Deadline's Commodore PET Assembly Language Library:
// Constants
//////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////
// Various Memory Constants

.const BASIC_START          = $0401

.const SCREEN_RAM           = $8000

.const SCREEN_PTR           = $56
.const SCREEN_PTR_LO        = $56
.const SCREEN_PTR_HI        = $57
.const TEMP_1               = $54
.const TEMP_2               = $55
.const zp_tmp               = $56
.const zp_tmp_lo            = $56
.const zp_tmp_hi            = $57
.const TEMP_3               = $58
.const TEMP_4               = $59
.const TEMP_5               = $5A
.const TEMP_6               = $5B
.const TEMP_7               = $5C
.const TEMP_8               = $5D
.const zp_ptr_screen        = $5E
.const zp_ptr_screen_lo     = $5E
.const zp_ptr_screen_hi     = $5F
.const zp_point_tmp         = $59
.const zp_point_tmp_lo      = $59
.const zp_point_tmp_hi      = $5a
.const zp_ptr_2             = $64
.const zp_ptr_2_lo          = $64
.const zp_ptr_2_hi          = $65
.const zp_temp              = $a3
.const zp_temp2             = $a4
.const zp_temp3             = $a5
.const JOYPORT_TIMER        = $05

//////////////////////////////////////////////////////////////////////////////////////
// KERNAL SUB ROUTINES
.const KERNAL_PRINT_HEX     = $BDCD // Print 16 bit number to screen LDX lobyte LDA hibyte
//////////////////////////////////////////////////////////////////////////////////////
// OTHER KERNAL STUFF
.const CURSOR_SET           = $E510
.const KERNAL_CLEAR_SCREEN  = $E544 // Clear Screen
.const KERNAL_IRQ_ENTRY     = $EA31
//////////////////////////////////////////////////////////////////////////////////////
// Serial BUS
.const SERIAL_TALK          = $ED09 // Send TALK command to serial bus. Input: A = Device number.
.const SERIAL_LISTEN        = $ED0C // Send LISTEN command to serial bus. Input: A = Device number.
.const SERIAL_FLUSH         = $ED40 // Flush serial bus output cache, at memory address $0095, to serial bus. Used registers: A.
.const SERIAL_LISTEN_2      = $EDB9	// Send LISTEN secondary address to serial bus. Input: A = Secondary address.
.const SERIAL_TALK_2        = $EDC7	// Send TALK secondary address to serial bus. Input: A = Secondary address.
.const SERIAL_WRITE_BYTE    = $EDDD // Write byte to serial bus. Input: A = Byte to write.
.const SERIAL_UNTALK        = $EDEF	// Send UNTALK command to serial bus.
.const SERIAL_UNLISTEN      = $EDFE	// Send UNLISTEN command to serial bus.
.const SERIAL_READ_BYTE     = $EE13	// Read byte from serial bus. Output: A = Byte read.
.const SERIAL_CLOCK_OUT_HIGH= $EE85	// Set CLOCK OUT to high.
.const SERIAL_CLOCK_OUT_LOW = $EE8E	// Set CLOCK OUT to low.
.const SERIAL_DATA_OUT_HIGH = $EE97	// Set DATA OUT to high.
.const SERIAL_DATA_OUT_LOW  = $EEA0	// Set DATA OUT to low.
.const SERIAL_CLOCK_DATA_IN = $EEA9	// Read CLOCK IN and DATA IN. Output: Carry = DATA IN; Negative = CLOCK IN; A = CLOCK IN (in bit #7).
//////////////////////////////////////////////////////////////////////////////////////
// KERNAL SUB ROUTINES
.const KERNAL_WAIT_KEY      = $F142 // Wait for key
.const KERNAL_SCINIT        = $FF81 // Input: – Output: – Used registers: A, X, Y
.const KERNAL_IOINIT        = $FF84 // Input: – Output: – Used registers: A, X
.const KERNAL_RAMTAS        = $FF87 // Input: – Output: – Used registers: A, X, Y
.const KERNAL_RESTOR        = $FF8A // Input: – Output: – Used registers: –
.const KERNAL_VECTOR        = $FF8D // Input: Carry: 0 = Copy user table into vector table, 1 = Copy vector table into user table; X/Y = Pointer to user table. Output: – Used registers: A, Y
.const KERNAL_SETMSG        = $FF90 // Input: A = Switch value. Output: – Used registers: –
.const KERNAL_LSTNSA        = $FF93 // Input: A = Secondary address Output: – Used registers: A
.const KERNAL_SECLSN        = $FF93 // Input: A = Secondary address Output: – Used registers: A
.const KERNAL_TALKSA        = $FF96 // Input: A = Secondary address Output: – Used registers: A
.const KERNAL_SECTLK        = $FF96 // Input: A = Secondary address Output: – Used registers: A
.const KERNAL_MEMBOT        = $FF99 // Input: Carry: 0 = Restore from input, 1 = Save to output; X/Y = Address (if Carry = 0) Output: X/Y = Address (if Carry = 1) Used registers: X, Y
.const KERNAL_MEMTOP        = $FF9C // Input: Carry: 0 = Restore from input, 1 = Save to output; X/Y = Address (if Carry = 0) Output: X/Y = Address (if Carry = 1) Used registers: X, Y
.const KERNAL_SCNKEY        = $FF9F // Input: – Output: – Used registers: A, X, Y
.const KERNAL_SETTMO        = $FFA2 // Input: A = Timeout value Output: – Used registers: –
.const KERNAL_IECIN         = $FFA5 // Input: – Output: A = Byte read Used registers: A
.const KERNAL_IECOUT        = $FFA8 // Input: A = Byte to write Output: – Used registers: –
.const KERNAL_UNTALK        = $FFAB // Input: – Output: – Used registers: A
.const KERNAL_UNLSTN        = $FFAE // Input: – Output: – Used registers: A
.const KERNAL_LISTEN        = $FFB1 // Input: A = Device number Output: – Used registers: A
.const KERNAL_TALK          = $FFB4 // Input: A = Device number Output: – Used registers: A
.const KERNAL_READST        = $FFB7 // Input: – Output: A = Device status Used registers: A
.const KERNAL_SETLFS        = $FFBA // Input: A = Logical number; X = Device number; Y = Secondary address Output: – Used registers: –
.const KERNAL_SETNAM        = $FFBD // Input: A = File name length; X/Y = Pointer to file name Output: – Used registers: –
.const KERNAL_OPEN          = $FFC0 // Input: – Output: – Used registers: A, X, Y
.const KERNAL_CLOSE         = $FFC3 // Input: A = Logical number Output: – Used registers: A, X, Y
.const KERNAL_CHKIN         = $FFC6	// Input: X = Logical number Output: – Used registers: A, X
.const KERNAL_CHKOUT        = $FFC9 // Input: X = Logical number Output: – Used registers: A, X
.const KERNAL_CLRCHN        = $FFCC // Input: – Output: – Used registers: A, X
.const KERNAL_CHRIN         = $FFCF	// Input: – Output: A = Byte read Used registers: A, Y
.const KERNAL_CHROUT        = $FFD2 // Input: A = Byte to write Output: – Used registers: –
.const KERNAL_LOAD          = $FFD5 // Input: A: 0 = Load, 1-255 = Verify; X/Y = Load address (if secondary address = 0) Output: Carry: 0 = No errors, 1 = Error; A = KERNAL error code (if Carry = 1); X/Y = Address of last byte loaded/verified (if Carry = 0) Used registers: A, X, Y
.const KERNAL_SAVE          = $FFD8 // Input: A = Address of zero page register holding start address of memory area to save; X/Y = End address of memory area plus 1 Output: Carry: 0 = No errors, 1 = Error; A = KERNAL error code (if Carry = 1) Used registers: A, X, Y
.const KERNAL_SETTIM        = $FFDB // Input: A/X/Y = New TOD value Output: – Used registers: –
.const KERNAL_RDTIM         = $FFDE	// Input: – Output: A/X/Y = Current TOD value Used registers: A, X, Y
.const KERNAL_STOP          = $FFE1 // Input: – Output: Zero: 0 = Not pressed, 1 = Pressed; Carry: 1 = Pressed Used registers: A, X
.const KERNAL_GETIN         = $FFE4 // Input: – Output: A = Byte read Used registers: A, X, Y
.const KERNAL_CLALL         = $FFE7 // Input: – Output: – Used registers: A, X
.const KERNAL_UDTIM         = $FFEA // Input: – Output: – Used registers: A, X
.const KERNAL_SCREEN        = $FFED // Input: – Output: X = Number of columns (40); Y = Number of rows (25) Used registers: X, Y
.const KERNAL_PLOT          = $FFF0 // Input: Carry: 0 = Restore from input, 1 = Save to output; X = Cursor column (if Carry = 0); Y = Cursor row (if Carry = 0) Output: X = Cursor column (if Carry = 1); Y = Cursor row (if Carry = 1) Used registers: X, Y
.const KERNAL_IOBASE        = $FFF3 // Input: – Output: X/Y = CIA #1 base address ($DC00) Used registers: X, Y
//////////////////////////////////////////////////////////////////////////////////////
// KEYS (This is not MATRIX codes)
.const KEY_RETURN       = $0d
.const KEY_HOME         = $13
.const KEY_DELETE       = $14
.const KEY_SPACE        = $20
.const KEY_DOLLAR_SIGN  = $24
.const KEY_ASTERISK     = $2a
.const KEY_MINUS        = $2d
.const KEY_PLUS         = $2b
.const KEY_COLON        = $3a
.const KEY_SEMICOLON    = $3b
.const KEY_1            = $31
.const KEY_2            = $32
.const KEY_3            = $33
.const KEY_4            = $34
.const KEY_5            = $35
.const KEY_6            = $36
.const KEY_7            = $37
.const KEY_8            = $38
.const KEY_9            = $39
.const KEY_EQUAL        = $3d
.const KEY_A            = $41
.const KEY_B            = $42
.const KEY_C            = $43
.const KEY_D            = $44
.const KEY_E            = $45
.const KEY_F            = $46
.const KEY_G            = $47
.const KEY_H            = $48
.const KEY_I            = $49
.const KEY_J            = $4a
.const KEY_K            = $4b
.const KEY_L            = $4c
.const KEY_M            = $4d
.const KEY_N            = $4e
.const KEY_O            = $4f
.const KEY_P            = $50
.const KEY_Q            = $51
.const KEY_R            = $52
.const KEY_S            = $53
.const KEY_T            = $54
.const KEY_U            = $55
.const KEY_V            = $56
.const KEY_W            = $57
.const KEY_X            = $58
.const KEY_Y            = $59
.const KEY_Z            = $5a
.const KEY_F1           = $85
.const KEY_F2           = $89
.const KEY_F3           = $86
.const KEY_F4           = $8a
.const KEY_F5           = $87
.const KEY_F6           = $8b
.const KEY_F7           = $88
.const KEY_F8           = $89
.const KEY_CURSOR_UP    = $91
.const KEY_CURSOR_DOWN  = $11
.const KEY_CURSOR_LEFT  = $9d
.const KEY_CURSOR_RIGHT = $1d
.const KEY_CLEAR        = $93
