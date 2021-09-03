#include <iostream>
#include "opencv2/opencv.hpp"

int main()
{
    cv::Mat srcImage = cv::imread("./data/input.png");
    cv::Mat dstImage;
    cv::resize(srcImage, dstImage, cv::Size(100, 100));
    cv::imwrite("./data/input_resized.png", dstImage);
    std::cout << "hello world" << std::endl;
    return 0;
}