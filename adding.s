.section .bss
.globl ram
.lcomm ram, 256
.section .text
.globl sum

#sum global 
sum:

    mov $0, %eax        #using eax as the total sum
    mov $0, %rcx        #using to as the current number
    #loop to increment the array
    loop:
        cmp %rsi, %rcx      #compares the values of rcx(i) and rsi (count)
        
        jge loop_kill       #jumps if i(rcx) >= count(rsi)

        #rdi, the memory address, and rcx, the i variable, moving 4 bytes each,
        #which is the size of an int, along the array in order to get the value into ebx
        mov (%rdi, %rcx, 4), %ebx 

        add %ebx, %eax      #adds ebx value into eax

        inc %rcx            #increments rcx (i++)

        jmp loop            #repeats loop

    loop_kill:
        ret                 #returns values

.section .note.GNU-stack,"",@progbits
