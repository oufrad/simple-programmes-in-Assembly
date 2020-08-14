.data


.text

#t2=0

addi $t2,$zero,0

li $t1,10

while:
	
	blt $t1,0,exit		#if t1 less than 0 ( t1 < 0)
	
	add $t2,$t2,$t1		# t2 = t2 + t1;
	add $t1,$t1,-1		# t1 = t1 - 1;
	j while
	
exit:
	#display t2
	
	li $v0,1
	la $a0,($t2)
	syscall
	
	li $v0,10
	syscall