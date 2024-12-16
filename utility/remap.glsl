// remap a value from range [min1,max1] to range [min2,max2]
// https://gist.github.com/companje/29408948f1e8be54dd5733a74ca49bb9

float remap(float value, float min1, float max1, float min2, float max2) {
    return min2 + (value - min1) * (max2 - min2) / (max1 - min1);
}
