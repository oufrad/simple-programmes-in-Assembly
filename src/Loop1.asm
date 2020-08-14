.data 

var: .asciiz "Hi !"
var2: .asciiz "error"

.text 

#read integer from the user 

li $v0,5
syscall
la $t0,($v0)

# varaible start from zero to un the loop untile t0

addi $t1,$zero,0

# loop display the world "Hi" t0 times 

while:
	bge $t1,$t0,exit
	
	# display the word "Hi" 
	
	li $v0,4
	la $a0,var
	syscall
	addi $t1,$t1,1
	
	j while	

#exite the programe  if the loop is end 
exit: 
	li $v0,10
	syscall

