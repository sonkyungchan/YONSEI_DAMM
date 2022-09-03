import matplotlib.pyplot as plt
import matplotlib.image as image
import numpy as np
import math

viz_list = [
    './sample/figure_depth0.npy',
    './sample/figure_rgb0.png',
    './sample/figure_depth0_new.npy',
    './sample/figure_rgb0_new.png',
]

for i, path in enumerate(viz_list):
    if path[-3:] == 'npy':
        im = np.load(path)
    elif path[-3:] in ['jpg', 'png']:
        im = image.imread(path)
    else:
        print('error: not support file type "{}"'.format(path[-3]))
    plt.subplot(1, len(viz_list), i+1)
    plt.imshow(im)

plt.show()