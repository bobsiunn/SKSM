import math
import random
import os
import time 


def float_operations(n):
    start = time.time()
    for i in range(0, n):
        sin_i = math.sin(i)
        cos_i = math.cos(i)
        sqrt_i = math.sqrt(i)
    latency = time.time() - start
    return latency



cold = True

was_cold = cold
cold = False

for i in range(5):
    n = random.randint(10, 1000)
    result = float_operations(n)
    print(os.getpid())
    print(result)
    time.sleep(60)

