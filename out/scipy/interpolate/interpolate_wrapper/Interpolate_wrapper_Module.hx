/* This file is generated, do not edit! */
package scipy.interpolate.interpolate_wrapper;
@:pythonImport("scipy.interpolate.interpolate_wrapper") extern class Interpolate_wrapper_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function atleast_1d_and_contiguous(ary:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		`block` is deprecated!
		'block' is deprecated in SciPy 1.0.0
		
		
		    Essentially a step function.
		
		    For each `new_x`, finds largest j such that``x[j] < new_x[j]`` and
		    returns ``y[j]``.
		
		    Parameters
		    ----------
		    x : array_like
		        Independent values.
		    y : array_like
		        Dependent values.
		    new_x : array_like
		        The x values used to calculate the interpolated y.
		
		    Returns
		    -------
		    block : ndarray
		        Return array, of same length as `x_new`.
		
		    
	**/
	static public function block(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`block_average_above` is deprecated!
		'block_average_above' is deprecated in SciPy 1.0.0
		
		
		    Linearly interpolates values in new_x based on the values in x and y.
		
		    Parameters
		    ----------
		    x : array_like
		        Independent values.
		    y : array_like
		        Dependent values.
		    new_x : array_like
		        The x values to interpolate y values.
		
		    
	**/
	static public function block_average_above(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		`linear` is deprecated!
		'linear' is deprecated in SciPy 1.0.0
		
		
		    Linearly interpolates values in new_x based on the values in x and y
		
		    Parameters
		    ----------
		    x : array_like
		        Independent values
		    y : array_like
		        Dependent values
		    new_x : array_like
		        The x values to return the interpolated y values.
		
		    
	**/
	static public function linear(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`logarithmic` is deprecated!
		'logarithmic' is deprecated in SciPy 1.0.0
		
		
		    Linearly interpolates values in new_x based in the log space of y.
		
		    Parameters
		    ----------
		    x : array_like
		        Independent values.
		    y : array_like
		        Dependent values.
		    new_x : array_like
		        The x values to return interpolated y values at.
		
		    
	**/
	static public function logarithmic(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`nearest` is deprecated!
		'nearest' is deprecated in SciPy 1.0.0
		
		
		    Rounds each new x to nearest input x and returns corresponding input y.
		
		    Parameters
		    ----------
		    x : array_like
		        Independent values.
		    y : array_like
		        Dependent values.
		    new_x : array_like
		        The x values to return the interpolate y values.
		
		    Returns
		    -------
		    nearest : ndarray
		        Rounds each `new_x` to nearest `x` and returns the corresponding `y`.
		
		    
	**/
	static public function nearest(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}