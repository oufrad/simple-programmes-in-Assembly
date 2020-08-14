########## Programme donne un message qui dit est ce qui la nombre donne esy pair ou impair
########## Created by :   OUFRAD Mohamed 

.data 
pair_message: .asciiz "le nombre est paire "
impair_message: .asciiz "le nombre est impaire "

.text
 # Lire le nombre ou l'utilisateur 
 
 li $v0,5
 syscall
 la $t0,($v0)
 
 # teste si le nombre est paire ou impaire 
 
 loop :
 
 	sub $t0,$t0,2		# cette line signifier t0 = t0 - 2  ou bien (t0 -= 2)
 	
 	beq $t0,1,impair	# if the number is impaire
 	beq $t0,0,pair		# if the number is pair
 	j loop		# subtract le nombre 2 à le nombre entrer jusqu'à ce que un condition est vrai
 	
 pair :
 	#affivhe le message qui dit le nombre est pair
 	li $v0,4
 	la $a0,pair_message
 	syscall
 	
 	#exite ou bien stop le programme 
 	li $v0,10
	syscall 
 
 impair : 
 	#affivhe le message qui dit le nombre est impaire
 	li $v0,4
 	la $a0,impair_message
 	syscall
 	
 	#exite ou bien stop le programme 
 	li $v0,10
	syscall 	
 	
 
 	
