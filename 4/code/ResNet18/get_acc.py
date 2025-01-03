import pickle
import torch
import sys


with open("./runs/" + str(sys.argv[1]) + "/stats.pt", "rb") as fp:

    p = torch.load(fp)
    print(p['acc1'][int(sys.argv[2])])
    print("x")

