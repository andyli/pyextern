/* This file is generated, do not edit! */
package scipy.signal.spline;
@:pythonImport("scipy.signal.spline") extern class Spline_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		cspline2d(input {, lambda, precision}) -> ck
		
		Description:
		
		  Return the third-order B-spline coefficients over a regularly spacedi
		  input grid for the two-dimensional input image.  The lambda argument
		  specifies the amount of smoothing.  The precision argument allows specifying
		  the precision used when computing the infinite sum needed to apply mirror-
		  symmetric boundary conditions.
	**/
	static public function cspline2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qspline2d(input {, lambda, precision}) -> qk
		
		Description:
		
		  Return the second-order B-spline coefficients over a regularly spaced
		  input grid for the two-dimensional input image.  The lambda argument
		  specifies the amount of smoothing.  The precision argument allows specifying
		  the precision used when computing the infinite sum needed to apply mirror-
		  symmetric boundary conditions.
	**/
	static public function qspline2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sepfir2d(input, hrow, hcol) -> output
		
		Description:
		
		  Convolve the rank-2 input array with the separable filter defined by the
		  rank-1 arrays hrow, and hcol. Mirror symmetric boundary conditions are
		  assumed.  This function can be used to find an image given its B-spline
		  representation.
	**/
	static public function sepfir2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		symiirorder1(input, c0, z1 {, precision}) -> output
		
		Implement a smoothing IIR filter with mirror-symmetric boundary conditions
		using a cascade of first-order sections.  The second section uses a
		reversed sequence.  This implements a system with the following
		transfer function and mirror-symmetric boundary conditions::
		
		                       c0              
		       H(z) = ---------------------    
		               (1-z1/z) (1 - z1 z)     
		
		The resulting signal will have mirror symmetric boundary conditions as well.
		
		Parameters
		----------
		input : ndarray
		    The input signal.
		c0, z1 : scalar
		    Parameters in the transfer function.
		precision :
		    Specifies the precision for calculating initial conditions
		    of the recursive filter based on mirror-symmetric input.
		
		Returns
		-------
		output : ndarray
		    The filtered signal.
	**/
	static public function symiirorder1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		symiirorder2(input, r, omega {, precision}) -> output
		
		Implement a smoothing IIR filter with mirror-symmetric boundary conditions
		using a cascade of second-order sections.  The second section uses a
		reversed sequence.  This implements the following transfer function::
		
		                              cs^2
		     H(z) = ---------------------------------------
		            (1 - a2/z - a3/z^2) (1 - a2 z - a3 z^2 )
		
		where::
		
		      a2 = (2 r cos omega)
		      a3 = - r^2
		      cs = 1 - 2 r cos omega + r^2
		
		Parameters
		----------
		input : ndarray
		    The input signal.
		r, omega : scalar
		    Parameters in the transfer function.
		precision :
		    Specifies the precision for calculating initial conditions
		    of the recursive filter based on mirror-symmetric input.
		
		Returns
		-------
		output : ndarray
		    The filtered signal.
	**/
	static public function symiirorder2(args:haxe.extern.Rest<Dynamic>):Dynamic;
}