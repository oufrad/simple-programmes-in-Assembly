.data 

.text 

# the tow numbers you want to compaire 
li $t1,53
li $t2,93


	blt $t1,$t2,if			#if t1 < t2  
	bgt $t1,$t2,else		#if t1 > t2 (else)

if:				
	move $t3,$t1			#move t1 to t3 beacause t1 is the small number
	j display			#jump to display section that display t3

else:
	move $t3,$t2			#move t2 to t3 beacause t2 is the small number
	j display 			#jump to display section that display t3
	
display:			# display t3 that represente the small number from the tow numbers given 
	
	li $v0,1
	la $a0,($t3)
	syscall