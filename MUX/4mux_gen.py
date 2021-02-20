

f=open("Tracefile.txt","w")

for input_vec in range(2**7):
   output=0
   input_str= "{:07b}".format(int(input_vec))
   output=((((input_vec>>5)^1)&((input_vec>>4)^1)&((input_vec>>3) &1))+(((input_vec>>5)^1)&((input_vec>>4) &1)&((input_vec>>2) &1))+(((input_vec>>5) &1)&((input_vec>>4)^ 1)&((input_vec>>1) &1))+(((input_vec>>5) &1)&((input_vec>>4) &1)&((input_vec) &1)))&((input_vec>>6) &1)
   output_str= "{:01b}".format(int(output))
   f.write(input_str+" "+output_str+ " 1\n")

f.close()
    
