//Multiply R0 and R1 and stores the result in R2.
@2
M=0     // R2 = 0
@i
M=0     // i=0
(LOOP)
@i
D=M     // D=i

@R0
D=D-M     // Subtract R0 from D (i - R0)
@END
D;JGE    // if i-R0 >= 0 goto END


@R1
D=M    // D = R1

@R2
M=D+M      // R2 = R2+R1

@i
M=M+1   // i=i+1 (Increment i)
@LOOP
0;JMP   // Jump back to the start of the loop

(END)
@END
0;JMP    // Infinite loop