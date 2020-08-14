.data 

FirstName_ask: .asciiz "enter your first name : \t"
LastName_ask: .asciiz "\n enter your last name : \t"
Age_ask: .asciiz "\n enter your Age : \t "
FirstName_give: .asciiz "\n - your name is :\t"
LastName_give: .asciiz " - your last name is :\t"
Age_give: .asciiz " - your Age is :\t"

FirstName: .space 255
LastName: .space 255

.text

#ask for First Name :

li $v0,4
la $a0,FirstName_ask
syscall

#scan the First name and put his adresse in t0:

li $v0,8
la $a0,FirstName
li $a1,20
syscall
move $t0,$a0

#as for the last name 

li $v0,4
la $a0,LastName_ask
syscall


#scan  the last name and put his adresse in t1

li $v0,8
la $t1,LastName
li $a1,20
syscall
move $t1,$a0

#ask for the Age 

li $v0,4
la $a0,Age_ask
syscall

#scan the Age and put his adresse on t2

li $v0,5
syscall
la $t2,($v0)

# display the First name message 

li $v0,4
la $a0,FirstName_give
syscall

# display the First Name 

li $v0,4
la $a0,($t0)
syscall

# display the last name message 

li $v0,4
la $a0,LastName_give
syscall

#display the last name 

li $v0,4
la $a0,($t1)
syscall

#display the Age message 

li $v0,4
la $a0,Age_give
syscall

#display the Age 

li $v0,1
la $a0,($t2)
syscall

