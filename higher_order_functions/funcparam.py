
def compute(op,x,y):
	return op(x,y) # always means whatever was passed

def add(x,y):
	return x+y

def op(x,y):
	return 2*x + 2*y

print(compute(add,5,5))
print(compute(op,5,5))
