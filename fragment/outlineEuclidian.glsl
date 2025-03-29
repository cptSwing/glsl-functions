// Draws lines with 'width', around values at 'threshold'.
// This one calculates line width in Euclidian distance since "Manhattan distance may overfatten diagonal lines". From https ://stackoverflow.com/a/12031147

float outlineEuclidian(float t, float threshold, float width) {
    float dx = dFdx(t);
    float dy = dFdy(t);
    float ewidth = sqrt(dx * dx + dy * dy);
    return clamp(width - abs(threshold - t) / ewidth, 0.0, 1.0);
}
