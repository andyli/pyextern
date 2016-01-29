/* This file is generated, do not edit! */
package scipy.fftpack.convolve;
@:pythonImport("scipy.fftpack.convolve") extern class Convolve_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		convolve - Function signature:
		  y = convolve(x,omega,[swap_real_imag,overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (n)
		  omega : input rank-1 array('d') with bounds (n)
		Optional arguments:
		  overwrite_x := 0 input int
		  swap_real_imag := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (n) and x storage
	**/
	static public function convolve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convolve_z - Function signature:
		  y = convolve_z(x,omega_real,omega_imag,[overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (n)
		  omega_real : input rank-1 array('d') with bounds (n)
		  omega_imag : input rank-1 array('d') with bounds (n)
		Optional arguments:
		  overwrite_x := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (n) and x storage
	**/
	static public function convolve_z(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_convolve_cache - Function signature:
		destroy_convolve_cache()
	**/
	static public function destroy_convolve_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		init_convolution_kernel - Function signature:
		  omega = init_convolution_kernel(n,kernel_func,[d,zero_nyquist,kernel_func_extra_args])
		Required arguments:
		  n : input int
		  kernel_func : call-back function
		Optional arguments:
		  d := 0 input int
		  kernel_func_extra_args := () input tuple
		  zero_nyquist := d%2 input int
		Return objects:
		  omega : rank-1 array('d') with bounds (n)
		Call-back functions:
		  def kernel_func(k): return kernel_func
		  Required arguments:
		    k : input int
		  Return objects:
		    kernel_func : float
	**/
	static public function init_convolution_kernel(args:haxe.extern.Rest<Dynamic>):Dynamic;
}