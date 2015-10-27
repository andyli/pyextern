/* This file is generated, do not edit! */
package scipy.fftpack;
@:native("scipy.fftpack.convolve") extern class Convolve {
	static public function convolve(x:Dynamic, omega:Dynamic, swap_real_imag:Dynamic, overwrite_x:Dynamic):Dynamic;
	static public function convolve_z(x:Dynamic, omega_real:Dynamic, omega_imag:Dynamic, overwrite_x:Dynamic):Dynamic;
	static public function destroy_convolve_cache(args:haxe.extern.Rest<Dynamic>):Void;
	static public function init_convolution_kernel(n:Dynamic, kernel_func:Dynamic, d:Dynamic, zero_nyquist:Dynamic, kernel_func_extra_args:Dynamic):Dynamic;
}