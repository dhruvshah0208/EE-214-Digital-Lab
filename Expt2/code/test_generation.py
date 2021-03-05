in_len = 8
out_len = 8

f = open('TRACEFILE.txt', 'w')

for i in range(2**in_len):
	in_vec = "{:b}".format(i).zfill(8)
	A = int(in_vec[:4], 2)
	B = int(in_vec[4:], 2) 
	out_vec = "{:b}".format(A*B).zfill(8)
	stri = in_vec + ' ' + out_vec + ' ' + '11111111'
	f.write(stri + '\n')
f.close()

