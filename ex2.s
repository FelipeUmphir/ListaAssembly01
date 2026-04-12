.data
	msg1: .asciiz "\nDigite a quatidade de camisas pequenas: "
	msg2: .asciiz "\nDigite a quantidade de camisas medias: "
	msg3: .asciiz "\nDigite a quantidade de camisas grandes: "
	msg4: .asciiz "\nO valor final é: "
.text 
main:
	li $v0, 4
	la $a0, msg1
	syscall 
	li $v0, 5
	syscall 
	add $t0, $v0, $zero
	
	li $v0, 4
	la $a0, msg2
	syscall 
	li $v0, 5
	syscall 
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	mul $t3, $t0, 10
	mul $t4, $t1, 12
	mul $t5, $t2, 15
	add $t6, $t3, $t4
	add $t7, $t6, $t5
	
	li $v0, 4
	la $a0, msg4
	syscall 
	li $v0, 1
	add $a0, $t7, $zero
	syscall 
	
