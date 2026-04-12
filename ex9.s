.data
	msg1: .asciiz "\nDigite o valor 1: "
	msg2: .asciiz "\nDigite o valor 2: "
	msg3: .asciiz "\nO resultado é: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, $zero

validacao:
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	beq $t1, $zero, validacao
	
divisao:
	div $t2, $t0, $t1
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t2, $zero
	syscall