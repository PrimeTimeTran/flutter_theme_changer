import bisect
li = [1, 3, 4, 4, 4, 6, 7]
print ("Rightmost index to insert, so list remains sorted is : ",
	end="")
print (bisect.bisect(li, 4))
print ("Leftmost index to insert, so list remains sorted is : ", 
	end="")
print (bisect.bisect_left(li, 4))
print ("Rightmost index to insert, so list remains sorted is : ",
	end="")
print (bisect.bisect_right(li, 4, 0, 4))
