import sys
import argparse
import cv2

def change_resolution(image_in, factor):

    new_size = (int(image_in.shape[1]*factor), int(image_in.shape[0]*factor))
    
    return cv2.resize(image_in, new_size)

def readArguments():
    ap = argparse.ArgumentParser()

    # Add the arguments to the parser
    ap.add_argument("-p", "--image_in_path", required=True, help="The path to the input image")
    ap.add_argument("-s", "--scale_factor", required=True, help="The multiplier factor to set new image size")
    return vars(ap.parse_args())

if __name__ == '__main__':

    args = readArguments()

    image_out = change_resolution(cv2.imread(args["image_in_path"]), float(args["scale_factor"]))

    cv2.imwrite('resized_image.png', image_out)
