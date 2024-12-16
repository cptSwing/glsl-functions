import orthogonal from './utility/orthogonal.glsl';
import remap from './utility/remap.glsl';
import safeSign from './utility/safeSign.glsl';
import luminance from './fragment/luminance.glsl';
import printNumbers from './fragment/printNumbers.glsl';
import rotateUv from './fragment/rotateUv.glsl';

export default {
	orthogonal,
	remap,
	safeSign,
	fragment: {
		luminance,
		printNumbers,
		rotateUv,
	},
};
