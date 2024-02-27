TITLE Generate Sort Count     (Proj5_Spiivaka.asm)

; Author: Adam Spivak
; Last Modified: 3-3-24
; OSU email address: Spivaka@oregonstate.edu
; Course number/section: CS271 Section 271
; Project Number: Proj5_Spivaka           Due Date: 3-3-24
; Description:	This program utilizes Lists, the program stack, and Procedure parameters to generate a list of random numbers, sorts them,
;				then finds the median and counts and displays each time a number is seen in the list 


INCLUDE Irvine32.inc

ARRAYSIZE = 10
LO = 15
HI = 50

.data

intro_display			BYTE	"Generating, Sorting, and Counting Random Integers!		Program by Adam Spivak",10,0
prog_desc				BYTE	"This program generates 200 random integers between 15 and 50, inclusive.",10,
								"It then displays the original list, sorts the list, displays the median value of the list,",10,
								"displays the list sorted in ascending order, and finally displays the number of instances",10,
								"of each generated value, starting with the number of lowest",0
farewell_message		BYTE	"Goodbye, and thanks for using my program!",0
space_between_nums		BYTE	"   ",0

randArray				DWORD	ARRAYSIZE DUP(?)		; Initializes empty array to 200 DWORDs
sortArray				DWORD	ARRAYSIZE DUP(?)		; Initializes empty array to 200 DWORDs used to sort randArray

print_Text				EQU		<CALL WriteString>
print_Dec				EQU		<CALL WriteDec>
new_Line				EQU		<CALL CrLf>

prep_Print_Space		EQU		<MOV EDX, OFFSET space_between_nums>

.code
;-----------------------------------------------------------------------------------------------------------
; Name: main
; Description: Controls the rest of the program by calling all the procedures in order of execution
; Preconditions: Global Variables are initialized
;-----------------------------------------------------------------------------------------------------------
main PROC

	MOV  EDX, OFFSET intro_display
	PUSH EDX

	MOV  EDX, OFFSET prog_desc
	PUSH EDX
	CALL introduction

	;CALL fillArray

	;CALL sortList

	;CALL exchangeElements

	;CALL displayMedian

	;CALL displayList

	;CALL countList

	MOV  EDX, OFFSET farewell_message
	PUSH EDX
	CALL farewell

	Invoke ExitProcess,0	; exit to operating system
main ENDP

;-----------------------------------------------------------------------------------------------------------
; Name: Introduction
; Description: Displays Introduction, author, and description of program to user
; Preconditions: 2 EDX parameters PUSHed to stack to print and display to user
; Recieves:
;		[EBP + 8]	= prog_Title
;		[EBP + 12]	= Introduction
; Return: 8 to derefence anything to pushed to the stack
;-----------------------------------------------------------------------------------------------------------
introduction PROC
	PUSH EBP
	MOV	 EBP, ESP

	MOV  EDX, [EBP + 12]		; Moves Introduction to EDX and prints
	print_Text

	MOV  EDX, [EBP + 8]			; Moves Program title to EDX and prints
	print_Text

	new_Line

	POP  EBP
	RET	 8			; Deference n numbers from parameters pushed to the stack
introduction ENDP

;-----------------------------------------------------------------------------------------------------------
; Name:
; Description:
; Preconditions:
; Postcondition:
; Recieves:
; Return:
;-----------------------------------------------------------------------------------------------------------
fillArray PROC
	PUSH EBP
	MOV	 EBP, ESP

	POP  EBP
	RET	 0			; Deference n numbers from parameters pushed to the stack
fillArray ENDP

;-----------------------------------------------------------------------------------------------------------
; Name:
; Description:
; Preconditions:
; Postcondition:
; Recieves:
; Return:
;-----------------------------------------------------------------------------------------------------------
sortList PROC
	PUSH EBP
	MOV	 EBP, ESP

	POP  EBP
	RET	 0			; Deference n numbers from parameters pushed to the stack
sortList ENDP

;-----------------------------------------------------------------------------------------------------------
; Name:
; Description:
; Preconditions:
; Postcondition:
; Recieves:
; Return:
;-----------------------------------------------------------------------------------------------------------
exchangeElements PROC
	PUSH EBP
	MOV	 EBP, ESP

	POP  EBP
	RET	 0			; Deference n numbers from parameters pushed to the stack
exchangeElements ENDP

;-----------------------------------------------------------------------------------------------------------
; Name:
; Description:
; Preconditions:
; Postcondition:
; Recieves:
; Return:
;-----------------------------------------------------------------------------------------------------------
displayedMedian PROC
	PUSH EBP
	MOV	 EBP, ESP

	POP  EBP
	RET	 0			; Deference n numbers from parameters pushed to the stack
displayedMedian ENDP

;-----------------------------------------------------------------------------------------------------------
; Name:
; Description:
; Preconditions:
; Postcondition:
; Recieves:
; Return:
;-----------------------------------------------------------------------------------------------------------
displayedList PROC
	PUSH EBP
	MOV	 EBP, ESP

	POP  EBP
	RET	 0			; Deference n numbers from parameters pushed to the stack
displayedList ENDP

;-----------------------------------------------------------------------------------------------------------
; Name:
; Description:
; Preconditions:
; Postcondition:
; Recieves:
; Return:
;-----------------------------------------------------------------------------------------------------------
countList PROC
	PUSH EBP
	MOV	 EBP, ESP

	POP  EBP
	RET	 0			; Deference n numbers from parameters pushed to the stack
countList ENDP

;-----------------------------------------------------------------------------------------------------------
; Name: Farewell
; Description: Displays Farewell message
; Preconditions: 1 PUSHed EDX value to print farewell message
; Postcondition:
; Recieves:
;		[EBX + 8] = Farewell Messaage
; Return:
;-----------------------------------------------------------------------------------------------------------
farewell PROC
	PUSH EBP
	MOV	 EBP, ESP

	MOV  EDX, [EBP + 8]
	print_Text

	POP  EBP
	RET	 4			; Deference n numbers from parameters pushed to the stack
farewell ENDP


END main
