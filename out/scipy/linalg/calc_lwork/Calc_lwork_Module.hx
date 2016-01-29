/* This file is generated, do not edit! */
package scipy.linalg.calc_lwork;
@:pythonImport("scipy.linalg.calc_lwork") extern class Calc_lwork_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		`scipy.linalg.calc_lwork` is deprecated!
		
		calc_lwork was an internal module in Scipy and has been removed.
		
		Several functions in scipy.linalg.lapack have *_lwork variants
		that perform the lwork calculation (from Scipy >= 0.15.0), or
		allow passing in LWORK=-1 argument to perform the computation.
	**/
	static public function _deprecated(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Issues a DeprecationWarning, adds warning to `old_name`'s
		docstring, rebinds ``old_name.__name__`` and returns the new
		function object.
		
		This function may also be used as a decorator.
		
		Parameters
		----------
		func : function
		    The function to be deprecated.
		old_name : str, optional
		    The name of the function to be deprecated. Default is None, in
		    which case the name of `func` is used.
		new_name : str, optional
		    The new name for the function. Default is None, in which case the
		    deprecation message is that `old_name` is deprecated. If given, the
		    deprecation message is that `old_name` is deprecated and `new_name`
		    should be used instead.
		message : str, optional
		    Additional explanation of the deprecation.  Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		old_func : function
		    The deprecated function.
		
		Examples
		--------
		Note that ``olduint`` returns a value after printing Deprecation
		Warning:
		
		>>> olduint = np.deprecate(np.uint)
		>>> olduint(6)
		/usr/lib/python2.5/site-packages/numpy/lib/utils.py:114:
		DeprecationWarning: uint32 is deprecated
		  warnings.warn(str1, DeprecationWarning)
		6
	**/
	static public function deprecate(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	static public var division : Dynamic;
	/**
		gees - Function signature:
		  minwrk,maxwrk = gees(prefix,n,[compute_v])
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Optional arguments:
		  compute_v := 1 input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geev - Function signature:
		  minwrk,maxwrk = geev(prefix,n,[compute_vl,compute_vr])
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function geev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gehrd - Function signature:
		  minwrk,maxwrk = gehrd(prefix,n,lo,hi)
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		  lo : input int
		  hi : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gelss - Function signature:
		  minwrk,maxwrk = gelss(prefix,m,n,nrhs)
		Required arguments:
		  prefix : input string(len=1)
		  m : input int
		  n : input int
		  nrhs : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geqrf - Function signature:
		  minwrk,maxwrk = geqrf(prefix,m,n)
		Required arguments:
		  prefix : input string(len=1)
		  m : input int
		  n : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function geqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gesdd - Function signature:
		  minwrk,maxwrk = gesdd(prefix,m,n,compute_uv)
		Required arguments:
		  prefix : input string(len=1)
		  m : input int
		  n : input int
		  compute_uv : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getri - Function signature:
		  minwrk,maxwrk = getri(prefix,n)
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function getri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gqr - Function signature:
		  minwrk,maxwrk = gqr(prefix,m,n)
		Required arguments:
		  prefix : input string(len=1)
		  m : input int
		  n : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heev - Function signature:
		  minwrk,maxwrk = heev(prefix,n,[lower])
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Optional arguments:
		  lower := 0 input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function heev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		syev - Function signature:
		  minwrk,maxwrk = syev(prefix,n,[lower])
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Optional arguments:
		  lower := 0 input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function syev(args:haxe.extern.Rest<Dynamic>):Dynamic;
}