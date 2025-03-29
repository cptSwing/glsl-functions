float fresnel(vec3 normalizedNormalWS, vec3 normalizedViewDir, float outlinePower) {
    return pow(1.0 - clamp(dot(normalizedNormalWS, normalizedViewDir), 0., 1.), outlinePower);
}
