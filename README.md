## GeoSay: A geometric saliency for extracting buildings in remote sensing images

Here we provide the matlab source codes for the paper "GeoSay: A geometric saliency for extracting buildings in remote sensing images", which is accepted by the Computer Vision and Image Understanding (CVIU).
It was written by Jin Huang and tested in Windows 10. This code could also run in Linux but I have not checked it.

## Requirements

Using requires the ASJ detetecor, which could be found in https://github.com/cherubicXN/anisotropic-scale-junction-detector.

## Demo

To run the demo code in Windows, you should compile the ASJ detector and change the path of ASJ in 'demo.m'.
In this repository, I provide a zip file which contains the compiled ASJ in my computer.
But I'm not sure whether it is runnable in every other computer.
So you'd better compile the ASJ yourself.

## Results

We compared several methods with our GBI. The quantative results in three datasets are shown here.
![results](https://github.com/Huang-Jin/GeoSay/master/images/results.png)

Further results could be found in http://captain.whu.edu.cn/project/geosay.html.
