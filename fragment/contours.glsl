// Draws elevation contours every 'spacing' as applied to 'height'. For accurate real-world elevation inputs, exceeding 1., some extra math will be needed for variable 'spacing'
// Borrowing heavily from https://github.com/CesiumGS/cesium/blob/9aba485e3654dae237c9a348a3ed38db76a79e48/packages/engine/Source/Shaders/Materials/ElevationContourMaterial.glsl

float contours(float height, float spacing, float width, float pixelRatio) {
    float distanceToContour = mod(height, spacing);
    float derivX = abs(dFdx(height));
    float derivY = abs(dFdy(height));
    float deltaM = max(derivX, derivY) * pixelRatio * width;
    float contour = step(distanceToContour, deltaM);
    return contour;
}
