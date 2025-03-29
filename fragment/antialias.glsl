// Approximate the smooth edges from any continuous function
// From https://mini.gmshaders.com/p/antialiasing and the associated ShaderToy

float antialias(float dist, float radius) {
    vec2 derivXY = vec2(dFdx(dist), dFdy(dist));
    float width = length(derivXY);
    return clamp(dist / width / radius, 0.0, 1.0);
}
