.data
	msg1: .asciiz "\nDigite o valor do desconto em %: "
	msg2: .asciiz "\nO valor do salário bruto é: "
	msg3: .asciiz "\nO valor do salário líquido é: "
.text
main:
	li $t0, 22	#horas normais = 22
	li $t1, 8 	#horas extras = 8
	
	mul $t2, $t0, 10
	mul $t3, $t1, 15
	add $t4, $t2, $t3
	
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall 
	add $t5, $v0, $zero
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	
	mtc1 $t4, $f0
	cvt.s.w $f0, $f0	
	li $t6, 100
	mtc1 $t6, $f1
	cvt.s.w $f1, $f1	
	mtc1 $t5, $f2
	cvt.s.w $f2, $f2	

	div.s $f3, $f2, $f1	
	mul.s $f4, $f0, $f3	

	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 2
	add.s $f12, $f4, $f6	
	syscall
