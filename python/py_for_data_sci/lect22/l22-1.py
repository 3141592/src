import numpy as np

print("-----")
print("z = np.zeroes(10)")
z = np.zeros(10)
print z

print("-----")
print("z = np.ones(10)")
z = np.ones(10)
print z

print("-----")
print("z = np.full(10, 5)")
z = np.full(10, 5.)
print z

print("-----")
print("z = np.arange(10, 51)")
z = np.arange(10, 51)
print z

print("-----")
print("z = np.arange(10, 51, 2)")
z = np.arange(10, 51, 2)
print z

print("-----")
print("z = np.matrix('0 1 2;3 4 5;6 7 8')")
z = np.matrix('0 1 2;3 4 5;6 7 8')
print z

print("-----")
print("z = np.arange(9).reshape(3,3)")
z = np.arange(9).reshape(3,3)
print z

print("-----")
print("z = np.eye(3)")
z = np.eye(3)
print z

print("-----")
print("z = np.random(1)")
z = np.random.rand(1)
print z

print("-----")
print("z = np.random.randn(25)")
z = np.random.rand(25)
print z

print("-----")
print("z = np.arange(0.01,1.01,0.01).reshape(10,10)")
z = np.arange(0.01,1.01,0.01).reshape(10,10)
print z

print("-----")
print("z = np.linspace(0.01,1.0,num=100).reshape(10,10)")
z = np.linspace(0.01,1.0,num=100).reshape(10,10)
print z



