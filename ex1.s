.data
	msg1: .asciiz "\nDigite a largura: "
	msg2: .asciiz "\nDigite a altura: "
	msg3: .asciiz "\nO valor da área é: "
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
	
	mul $t2, $t1, $t0
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1 
	add $a0, $t2, $zero
	syscall 
	
