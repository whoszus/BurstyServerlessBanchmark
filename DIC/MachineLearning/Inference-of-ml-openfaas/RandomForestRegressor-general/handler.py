import time
import numpy
import pickle


def main(args):
    startTime = time.time()
    model_path = "./model/RandomForestRegressor-general"
    data_path = "./data/RandomForestRegressor-general"
    with open(model_path, 'rb') as f:
        clf = pickle.load(f)
    with open(data_path, 'rb') as d:
        data = pickle.load(d)
    clf.predict(data)

    return {'token':  'inference finished', 'startTime': int(round(startTime * 1000))}