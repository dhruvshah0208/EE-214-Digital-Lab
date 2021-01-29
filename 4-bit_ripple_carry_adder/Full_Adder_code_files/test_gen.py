#Python code for TRACEFILE.txt generation for FULL-ADDER
#
#open/create TRACEFILE.txt in write mode
f = open("TRACEFILE.txt","w")
#number of inputs
input_len = 9
#number of outputs
output_len = 5
#number of test vectors
test_len = 2**input_len
#loop from 0 to (test_len-1)
for input_vec in range(test_len):
#convert input to binary(9bit) format
	input_str = "{:09b}".format(int(input_vec))
#extracting the input bits
	# ENTER OUTPUT LOGIC HERE
	output = ((input_vec>>5) &15) +((input_vec>>1) &15) +((input_vec) &1)
#generating the output
	output = ((output&16)) | ((output&15))   
#convert output to binary(5bit) format
	output_str = "{:05b}".format(int(output))
#write input and output test vector with 2bit mask in TRACEFILE.txt
	f.write(input_str + " " + output_str + " 11111\n")
#close file
f.close() 
