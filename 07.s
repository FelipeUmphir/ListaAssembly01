.data
	msg1: .asciiz "\nDigite o valor: "
	msg2: .asciiz "\nO resultado é: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall 
	add $t0, $v0, $zero
	
	rem $t1, $t0, 2
	
	beq $t1, $zero, se
	j senao
	
se:
	add $t2, $t0, 5
	j fim_se
	
senao:
	add $t2, $t0, 8
	
fim_se:
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t2, $zero
	syscall
