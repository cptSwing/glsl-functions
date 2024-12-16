# glsl-functions
GLSL functions I reuse frequently

Functions should be imported separately and included in 'parent' glsl via `#include` statement. I use [vite](https://vite.dev/) and [vite-plugin-glsl](https://www.npmjs.com/package/vite-plugin-glsl), otherwise look into implementing the [ARB_shading_language_include](https://registry.khronos.org/OpenGL/extensions/ARB/ARB_shading_language_include.txt) extension for your usecase.
