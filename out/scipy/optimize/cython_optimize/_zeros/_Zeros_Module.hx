/* This file is generated, do not edit! */
package scipy.optimize.cython_optimize._zeros;
@:pythonImport("scipy.optimize.cython_optimize._zeros") extern class _Zeros_Module {
	static public var EXAMPLES_MAP : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Example of Cython optimize zeros functions with full output.
		
		Parameters
		----------
		args : sequence of float
		    extra arguments of zero function
		xa : float
		    first boundary of zero function
		xb : float
		    second boundary of zero function
		xtol : float
		    absolute tolerance of zero function
		rtol : float
		    relative tolerance of zero function
		mitr : int
		    max. iteration of zero function
		
		Returns
		-------
		full_output : dict
		    the root, number of function calls, number of iterations, and the zero
		    function error number 
		
		This example finds the roots of a 3rd order polynomial with coefficients
		given as `args`.
	**/
	static public function full_output_example(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example of Cython optimize zeros functions with map.
		
		Parameters
		----------
		method : str
		    name of the Cython optimize zeros function to call
		a0 : sequence of float
		    first extra argument which is mapped to output
		args : sequence of float
		    the remaining extra arguments which are constant
		xa : float
		    first bound of zero function
		xb : float
		    second bound of zero function
		xtol : float
		    absolute tolerance of zero function
		rtol : float
		    relative tolerance of zero function
		mitr : int
		    max. iteration of zero function
		
		Returns
		-------
		roots : sequence of float
		    the root for each of the values of `a0`
		
		This example finds the roots of a 3rd order polynomial given a sequence of
		constant terms as `a0` and fixed 1st, 2nd, and 3rd order terms in `args`.
	**/
	static public function loop_example(args:haxe.extern.Rest<Dynamic>):Dynamic;
}