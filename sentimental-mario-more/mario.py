# TODO
from cs50 import get_int
# prompt user for pyramid height
while True:
    height = get_int("Height: ")
    if (height < 9 and height > 0):
        break
# build a pyramid through one loop
for i in range(1, height+1):
    print(" " * (height - i) + "#" * i + "  " + "#" * i)

