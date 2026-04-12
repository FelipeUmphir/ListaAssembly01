.data
	msg1: .asciiz "\nDigite o valor do cateto 1: "
	msg2: .asciiz "\nDigite o valor do cateto 2: "
	msg3: .asciiz "\nO valor da hipotenusa é: "
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
	
	mul $t3, $t1, $t1
	mul $t4, $t2, $t2
	
	mtc1 $t3, $f1
	cvt.s.w $f1, $f1
	mtc1 $t4, $f2
	cvt.s.w $f2, $f2
	
	add.s $f3, $f1, $f2
	sqrt.s $f4, $f3
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 2
	add.s $f12, $f4, $f6
	syscall
	