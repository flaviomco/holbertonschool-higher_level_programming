#!/usr/bin/python3
def print_matrix_integer(matrix=[[]]):
    for i in range(len(matrix)):
        print ("{}".format(matrix[i]).translate({ord(j): None for j in '[]'}))
