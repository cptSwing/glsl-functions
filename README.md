# glsl-functions
GLSL functions I reuse frequently

```yarn add glsl-functions```

Functions to be imported separately and included in 'parent' glsl via `#include` statement.
I use [vite](https://vite.dev/) and [vite-plugin-glsl](https://www.npmjs.com/package/vite-plugin-glsl), otherwise look into implementing the [ARB_shading_language_include](https://registry.khronos.org/OpenGL/extensions/ARB/ARB_shading_language_include.txt) extension for your usecase.
Or import and concatenate strings when passing in a shader string (Not tested yet).

- fragment/luminance.glsl
  
  convert rgb to brightness value
  
- fragment/printNumbers.glsl
  
  print numbers, used for debugging values
  
- fragment/rotateUv.glsl
  
  rotate Uv's via radian value

- utility/orthogonal.glsl
  
  get non-zero orthogonal vector
  
- utility/remap.glsl
  
  remap a value from one range to another range
  
- utility/safeSign.glsl
  
  return a non-zero sign()
  
- utility/saturate.glsl
  
  clamp value at 0,1
