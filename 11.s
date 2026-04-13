.data
	msg1: .asciiz "\nDigite um valor: "
	msg2: .asciiz "\nA quantidade de valores inseridos entre [0-25] é: "
	msg3: .asciiz "\nA quantidade de valores inseridos entre [26-50] é: "
	msg4: .asciiz "\nA quantidade de valores inseridos entre [51-75] é: "
	msg5: .asciiz "\nA quantidade de valores inseridos entre [76-100] é: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, $zero
	
	blt $t0, 0, fim
	ble $t0, 25, ate25
	ble $t0, 50, ate50
	ble $t0, 75, ate75
	ble $t0, 100, ate100
	j main

	#$t1 = 0-25
	#$t2 = 26-50
	#$t3 = 51-75
	#$t4 = 76-100
	
ate25:
	add $t1, $t1, 1
	j main
	
ate50:
	add $t2, $t2, 1
	j main
	
ate75:
	add $t3, $t3, 1
	j main
	
ate100:
	add $t4, $t4, 1
	j main
	
fim:
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t4, $zero
	syscall
