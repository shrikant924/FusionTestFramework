import json
import os


def read_Json_file(jsonfilepath):
    ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    jsonfile = os.path.join(ROOT_DIR, jsonfilepath)

    try:
        with open(jsonfile, mode='r') as jsonObject:
            return json.load(jsonObject)

    except:
        raise "file not found error..."


class reader:
    pass
