.data 

sum_message: .asciiz "the sum is  : "

.text 

#give 0 to the register t0

addi $t0,$zero,0
addi $t2,$zero,0
#input or scan the value of the t0

loop:
	li $v0,5
	syscall 
	la $t1,($v0)
	
	add $t2,$t2,$t1
		
	beq $t0,$t1,sum			#if t0 equale t1 or if t1 equal 0

	j loop

sum:
	#display the sum message : 
	
	li $v0,4
	la $a0,sum_message
	syscall
	
	#display the sum value :
	
	li $v0,1
	la $a0,($t2)
	syscall



