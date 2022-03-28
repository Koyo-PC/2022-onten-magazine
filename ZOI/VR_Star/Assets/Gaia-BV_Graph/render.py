from cmath import sqrt
import os
import numpy as np
import matplotlib.pyplot as plt
from PIL import Image

fig, ax = plt.subplots()
plt.xlim(-0.82, 2.08)
plt.ylim(-1.67, 0.23)

x1 = np.arange(-1.1, 2.08, 0.01)
y1 = -0.03704 - 0.3915*x1 + 0.01855*x1**2 - 0.03239*x1**3
y2 = np.arange(-1.5, 0.2, 0.01)
def f(y):
    if(y >= -0.5):
        return -2.4*y-0.075
    else:
        #-2.1y^2-4.2y-0.45
        return -2.1 * y ** 2 - 4.2 * y - 0.45
x2 = np.vectorize(f)(y2)

c1,c2 = "black","red"
l1,l2 = "original","this graph"

ax.set_xlabel('$B-V[mag]$')
ax.set_ylabel('$G-H_P[mag]$')
ax.grid()
ax.plot(x1, y1, color=c1, label=l1)
ax.plot(x2, y2, color=c2, label=l2)
ax.legend(loc=0)
im = Image.open(os.path.dirname(__file__) + "/img/cu5pho_PhotTransf_GHvsBV.png")
ax.imshow(im, extent=[*ax.get_xlim(), *ax.get_ylim()], aspect='auto', alpha=0.6)
fig.tight_layout()
plt.savefig(os.path.dirname(__file__) + '/out.png', dpi=300)
plt.show()