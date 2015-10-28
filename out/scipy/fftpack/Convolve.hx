/* This file is generated, do not edit! */
package scipy.fftpack;
@:pythonImport("scipy.fftpack.convolve") extern class Convolve {
	static public function convolve(x:Dynamic, omega:Dynamic, swap_real_imag:Dynamic, overwrite_x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convolve_z(x:Dynamic, omega_real:Dynamic, omega_imag:Dynamic, overwrite_x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function destroy_convolve_cache(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function init_convolution_kernel(n:Dynamic, kernel_func:Dynamic, d:Dynamic, zero_nyquist:Dynamic, kernel_func_extra_args:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}