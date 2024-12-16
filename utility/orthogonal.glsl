// Given a non-zero vector v in 3D space, returns a normalized non-zero vector orthogonal to v
// https://web.archive.org/web/20221130164825/http://lolengine.net/blog/2013/09/21/picking-orthogonal-vector-combing-coconuts

vec3 orthogonal(vec3 v) {
    return normalize(abs(v.x) > abs(v.z) ? vec3(-v.y, v.x, 0.0) : vec3(0.0, -v.z, v.y));
}
