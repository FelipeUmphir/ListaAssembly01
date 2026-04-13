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
	
	blt $t0, $zero, triplo
	beq $t0, $zero, fim_se
	j duplo
	
triplo:
	mul $t0, $t0, 3
	j fim_se
	
duplo:
	mul $t0, $t0, 2

fim_se:
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t0, $zero
	syscall
