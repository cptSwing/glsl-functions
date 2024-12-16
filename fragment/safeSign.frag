// Since sign() can also return 0.
vec3 safeSign(vec3 axes) {
    float xSign = axes.x < 0. ? -1. : 1.;
    float ySign = axes.y < 0. ? -1. : 1.;
    float zSign = axes.z < 0. ? -1. : 1.;
    return vec3(xSign, ySign, zSign);
}
