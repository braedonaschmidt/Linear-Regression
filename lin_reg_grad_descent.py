import matplotlib.pyplot as plt
import numpy as np

points = [[90, 13],
          [100, 5],
          [9, 80],
          [50, 50],
          [25, 60],
          [126, -15]]
learning_rate = 0.0001
m = 1
b = 0

#------------------------------------------------------------------------------------------

def abline(slope, intercept):
    """Plot a line from slope and intercept"""
    axes = plt.gca()
    x_vals = np.array(axes.get_xlim())
    y_vals = intercept + slope * x_vals
    plt.plot(x_vals, y_vals, '--')


def calcAvgCost(totalError, n):
    return (totalError / n)**2

def column(matrix, i):
    return [row[i] for row in matrix]

def gradDescent(points, m, b):
    totalError = 0
    for point in points:
        x = point[0]
        y = point[1]
        guess = m * x + b
        error = y - guess
        totalError += error

        m += (error * x * learning_rate)
        b += (error * learning_rate)
    print(str(m) + "x + " + str(b), calcAvgCost(totalError, len(points)))
    return [m, b]

if __name__ == "__main__":
    for i in range(0, 15000):
        [m, b] = gradDescent(points, m, b)
    plt.scatter(column(points, 0), column(points, 1))
    abline(m, b)
    plt.show()
        # plt.pyplot.close()
