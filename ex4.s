.data
	msg: .asciiz "\nA área do trapézio é: "
.text
main:
	li $t0, 8	#base maior = 8
	li $t1, 4	#base menor = 4
	li $t2, 5	#altura = 5
	
	add $t3, $t0, $t1
	mul $t4, $t3, $t2
	div $t5, $t4, 2
	
	li $v0, 4
	la $a0, msg
	syscall
	li $v0, 1
	add $a0, $t5, $zero
	syscall
