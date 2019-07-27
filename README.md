## GeoSay: A geometric saliency for extracting buildings in remote sensing images

Here we provide the matlab source codes for the paper "GeoSay: A geometric saliency for extracting buildings in remote sensing images", which was accepted by the journal of Computer Vision and Image Understanding (CVIU).
It was written by Jin Huang and tested in Windows 10. This code should also be runnable in Linux but I have not checked it.

## Requirements

Using this demo requires the ASJ detetecor, which could be found in https://github.com/cherubicXN/anisotropic-scale-junction-detector.

## Demo

To run the demo code in Windows, you should compile the ASJ detector and change the path of ASJ in 'demo.m'.
In this repository, I aslo provide a zip file which contains the compiled ASJ in my computer.
But I'm not sure whether it is runnable in every other computer or not.
So you'd better compile the ASJ by yourself.

## Results

We compared several methods with proposed GBI. The quantative results in three datasets are shown here.

![](https://raw.githubusercontent.com/Huang-Jin/GeoSay/master/images/results.png)

Further results could be found in http://captain.whu.edu.cn/project/geosay.html.

## Citation
If you find our work useful in your research, please consider citing:
```
@article{XIA2019,
title = "GeoSay: A geometric saliency for extracting buildings in remote sensing images",
journal = "Computer Vision and Image Understanding",
year = "2019",
issn = "1077-3142",
doi = "https://doi.org/10.1016/j.cviu.2019.06.001",
url = "http://www.sciencedirect.com/science/article/pii/S1077314219300918",
author = "Gui-Song Xia and Jin Huang and Nan Xue and Qikai Lu and Xiaoxiang Zhu",
keywords = "Building detection, Geometric saliency, Junction, Remote sensing image"
}
```
