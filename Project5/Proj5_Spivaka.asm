TITLE Generate Sort Count     (Proj5_Spiivaka.asm)

; Author: Adam Spivak
; Last Modified: 3-3-24
; OSU email address: Spivaka@oregonstate.edu
; Course number/section: CS271 Section 271
; Project Number: Proj5_Spivaka           Due Date: 3-3-24
; Description:	This program utilizes Lists, the program stack, and Procedure parameters to generate a list of random numbers, sorts them,
;				then finds the median and counts and displays each time a number is seen in the list 


INCLUDE Irvine32.inc

ARRAYSIZE = 200
LO = 15
HI = 50

.data

; (insert variable definitions here)

.code
;-----------------------------------------------------------------------------------------------------------
; Name: main
; Description:
; Preconditions:
; Postcondition:
; Recieves:
; Return:
;-----------------------------------------------------------------------------------------------------------
main PROC

; (insert executable instructions here)

	Invoke ExitProcess,0	; exit to operating system
main ENDP

;-----------------------------------------------------------------------------------------------------------
; Name: Introduction
; Description:
; Preconditions:
; Postcondition:
; Recieves:
;		[EBP + 8]	= Description
;		[EBP + 12]	= Author name
;		[EBP + 16]	= Title
; Return:
;-----------------------------------------------------------------------------------------------------------
introduction PROC USES EDX EDX
	PUSH EBP
	MOV	 EBP, ESP

	POP  EBP
	RET	 0			; Deference n numbers from parameters pushed to the stack
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

END main
