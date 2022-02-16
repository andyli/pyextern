/* This file is generated, do not edit! */
package scipy.fftpack.convolve;
@:pythonImport("scipy.fftpack.convolve") extern class Convolve_Module {
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
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
	/**
		r2r_fftpack(a: numpy.ndarray, axes: object, real2hermitian: bool, forward: bool, inorm: int = 0, out: object = None, nthreads: int = 1) -> numpy.ndarray
		
		Performs a real-valued FFT using the FFTPACK storage scheme.
		
		Parameters
		----------
		a : numpy.ndarray (any real type)
		    The input data
		axes : list of integers
		    The axes along which the FFT is carried out.
		    If not set, all axes will be transformed.
		real2hermitian : bool
		    if True, the input is purely real and the output will have Hermitian
		    symmetry and be stored in FFTPACK's halfcomplex ordering, otherwise the
		    opposite.
		forward : bool
		    If `True`, a negative sign is used in the exponent, else a positive one.
		inorm : int
		    Normalization type
		      0 : no normalization
		      1 : divide by sqrt(N)
		      2 : divide by N
		    where N is the length of `axis`.
		out : numpy.ndarray (same shape and data type as `a`)
		    May be identical to `a`, but if it isn't, it must not overlap with `a`.
		    If None, a new array is allocated to store the output.
		nthreads : int
		    Number of threads to use. If 0, use the system default (typically governed
		    by the `OMP_NUM_THREADS` environment variable).
		
		Returns
		-------
		numpy.ndarray (same shape and data type as `a`)
		    The transformed data. The shape is identical to that of the input array.
	**/
	static public function r2r_fftpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
}