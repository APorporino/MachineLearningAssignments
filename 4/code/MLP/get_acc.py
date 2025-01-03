import pickle
import torch
import sys


with open("./runs/" + str(sys.argv[1]) + "/stats.pth", "rb") as fp:

    p = torch.load(fp)
    print(p['acc'][int(sys.argv[2])])
    print("x")

