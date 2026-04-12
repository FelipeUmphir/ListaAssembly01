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
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	beq $t1, $t2, se
	j senao
	
se:
	add $t3, $t2, $t1
	j fim_se
	
senao:
	mul $t3, $t2, $t1
	
fim_se:
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t3, $zero
	syscall
