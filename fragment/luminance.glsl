// Grayscale brightness of a pixel - "magic" values as per https://gamedev.stackexchange.com/a/21355
float luminance(vec3 color) {
    return dot(color, vec3(0.2126, 0.7152, 0.0722));
}
