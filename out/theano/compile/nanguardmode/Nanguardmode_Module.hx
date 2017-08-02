/* This file is generated, do not edit! */
package theano.compile.nanguardmode;
@:pythonImport("theano.compile.nanguardmode") extern class Nanguardmode_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks a variable against non-numeric types such as types, slices,
		empty arrays, and None, that need not be checked for NaN and Inf values.
		
		Parameters
		----------
		arr : the data of that correspond to any Theano Variable
		var : The corresponding Theano variable
		
		Returns
		-------
		is_non_numeric : bool
		    `True` the value is non-numeric.
	**/
	static public function _is_numeric_value(arr:Dynamic, _var:Dynamic):Bool;
	static public function _name_for_ctx(ctx:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		compile utility function used by contains_nan and contains_inf
		    
	**/
	static public function compile_gpu_func(nan_is_error:Dynamic, inf_is_error:Dynamic, big_is_error:Dynamic):Dynamic;
	static public var config : Dynamic;
	/**
		Test whether a numpy.ndarray contains any `np.inf` values.
		
		Parameters
		----------
		arr : np.ndarray or output of any Theano op
		node : None or an Apply instance.
		    If the output of a Theano op, the node associated to it.
		var : The Theano symbolic variable.
		
		Returns
		-------
		contains_inf : bool
		    `True` if the array contains any `np.inf` values, `False` otherwise.
		
		Notes
		-----
		Tests for the presence of `np.inf`'s by determining whether the
		values returned by `np.nanmin(arr)` and `np.nanmax(arr)` are finite.
		This approach is more memory efficient than the obvious alternative,
		calling `np.any(np.isinf(ndarray))`, which requires the construction of a
		boolean array with the same shape as the input array.
	**/
	static public function contains_inf(arr:Dynamic, ?node:Dynamic, ?_var:Dynamic):Bool;
	/**
		Test whether a numpy.ndarray contains any `np.nan` values.
		
		Parameters
		----------
		arr : np.ndarray or output of any Theano op
		node : None or an Apply instance.
		    If arr is the output of a Theano op, the node associated to it.
		var : The Theano symbolic variable.
		
		Returns
		-------
		contains_nan : bool
		    `True` if the array contains any `np.nan` values, `False` otherwise.
		
		Notes
		-----
		Tests for the presence of `np.nan`'s using `np.isnan(np.min(ndarray))`.
		This approach is faster and more memory efficient than the obvious
		alternative, calling `np.any(np.isnan(ndarray))`, which requires the
		construction of a boolean array with the same shape as the input array.
	**/
	static public function contains_nan(arr:Dynamic, ?node:Dynamic, ?_var:Dynamic):Bool;
	static public var division : Dynamic;
	static public function f_compute(op:Dynamic):Dynamic;
	static public function f_gpua_absmax(inp:Dynamic):Dynamic;
	static public function f_gpua_max(inp:Dynamic):Dynamic;
	static public function f_gpua_min(inp:Dynamic):Dynamic;
	static public var f_gpuabsmax : Dynamic;
	static public var f_gpumax : Dynamic;
	static public var f_gpumin : Dynamic;
	/**
		Turns a nested graph of lists/tuples/other objects into a list of objects.
		
		Parameters
		----------
		l : list/tuple/other objects
		    Might be nested.
		
		Returns
		-------
		object
		    A flattened list of objects.
	**/
	static public function flatten(l:Dynamic):Dynamic;
	static public function get_mode(orig_string:Dynamic):Dynamic;
	static public var logger : Dynamic;
	static public var print_function : Dynamic;
	static public var pygpu_available : Dynamic;
}