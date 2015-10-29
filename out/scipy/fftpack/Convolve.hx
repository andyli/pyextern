/* This file is generated, do not edit! */
package scipy.fftpack;
@:pythonImport("scipy.fftpack.convolve") extern class Convolve {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		y = convolve(x,omega,[swap_real_imag,overwrite_x])
		
		Wrapper for ``convolve``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (n)
		omega : input rank-1 array('d') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		swap_real_imag : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (n) and x storage
	**/
	static public function convolve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = convolve_z(x,omega_real,omega_imag,[overwrite_x])
		
		Wrapper for ``convolve_z``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (n)
		omega_real : input rank-1 array('d') with bounds (n)
		omega_imag : input rank-1 array('d') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (n) and x storage
	**/
	static public function convolve_z(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_convolve_cache()
		
		Wrapper for ``destroy_convolve_cache``.
	**/
	static public function destroy_convolve_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		omega = init_convolution_kernel(n,kernel_func,[d,zero_nyquist,kernel_func_extra_args])
		
		Wrapper for ``init_convolution_kernel``.
		
		Parameters
		----------
		n : input int
		kernel_func : call-back function
		
		Other Parameters
		----------------
		d : input int, optional
		    Default: 0
		kernel_func_extra_args : input tuple, optional
		    Default: ()
		zero_nyquist : input int, optional
		    Default: d%2
		
		Returns
		-------
		omega : rank-1 array('d') with bounds (n)
		
		Notes
		-----
		Call-back functions::
		
		  def kernel_func(k): return kernel_func
		  Required arguments:
		    k : input int
		  Return objects:
		    kernel_func : float
	**/
	static public function init_convolution_kernel(args:haxe.extern.Rest<Dynamic>):Dynamic;
}