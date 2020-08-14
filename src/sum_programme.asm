.data
#variable declaration :
 
var1: .asciiz "entrer le premier number : \t"
var2: .asciiz "^n entrer le desieme number : \t"
var3: .asciiz "\n la somme est : \t"
.text 

# display the first message told the user to enter the first number :

li $v0,4
la $a0,var1
syscall

#read or scan (scanf in c ) the first number and put his adresse on register t0

li $v0,5
syscall
la $t0,($v0)

# display the first message told the user to enter the secend number :

li $v0,4
la $a0,var2
syscall

#read or scan (scanf in c ) the secende number and put his adresse on register t1

li $v0,5
syscall
la $t1,($v0)

#do the addintion of the numbers 

add $t2,$t1,$t0

# display the last message that told the user the sum is 

li $v0,4
la $a0,var3
syscall

#display the sum number

li $v0,1
la $a0,($t2)
syscall





