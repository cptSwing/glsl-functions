// Adapted from https://thebookofshaders.com/07
// vec4 borders = bottom/left/top/right values, respectively

float drawRectangle(vec2 coord, vec4 borders) {
    vec2 bl = step(vec2(borders.x, borders.y), coord);          // bottom-left
    vec2 tr = step(vec2(borders.z, borders.w), 1.0 - coord);    // top-right
    return bl.x * bl.y * tr.x * tr.y;
}
