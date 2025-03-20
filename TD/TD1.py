import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import load_digits

digits = load_digits(as_frame=True).frame

print(digits.shape)

plt.imshow(digits)