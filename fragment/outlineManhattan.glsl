// Draws lines with 'width', around values at 'threshold'. From https ://stackoverflow.com/a/12031147

float outlineManhattan(float t, float threshold, float width) {
    return clamp(width - abs(threshold - t) / fwidth(t), 0.0, 1.0);
}
