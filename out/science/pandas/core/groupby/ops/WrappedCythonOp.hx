/* This file is generated, do not edit! */
package pandas.core.groupby.ops;
@:pythonImport("pandas.core.groupby.ops", "WrappedCythonOp") extern class WrappedCythonOp {
	static public var _CYTHON_FUNCTIONS : Dynamic;
	static public var _MASKED_CYTHON_FUNCTIONS : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(kind:Dynamic, how:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(kind:Dynamic, how:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _call_cython_op(values:Dynamic, min_count:Dynamic, ngroups:Dynamic, comp_ids:Dynamic, mask:Dynamic, result_mask:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _cython_arity : Dynamic;
	public function _cython_op_ndim_compat(values:Dynamic, min_count:Dynamic, ngroups:Dynamic, comp_ids:Dynamic, ?mask:Dynamic, ?result_mask:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check if we can do this operation with our cython functions.
		
		Raises
		------
		NotImplementedError
		    This is either not a valid function for this dtype, or
		    valid but not implemented in cython.
	**/
	public function _disallow_invalid_ops(dtype:Dynamic, ?is_numeric:Dynamic):Dynamic;
	/**
		If we have an ExtensionArray, unwrap, call _cython_operation, and
		re-wrap if appropriate.
	**/
	public function _ea_wrap_cython_operation(values:Dynamic, min_count:Dynamic, ngroups:Dynamic, comp_ids:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _get_cython_function(kind:Dynamic, how:Dynamic, dtype:Dynamic, is_numeric:Dynamic):Dynamic;
	public function _get_output_shape(ngroups:Dynamic, values:Dynamic):Dynamic;
	/**
		Get the desired dtype of a result based on the
		input dtype and how it was computed.
		
		Parameters
		----------
		dtype : np.dtype or ExtensionDtype
		    Input dtype.
		
		Returns
		-------
		np.dtype or ExtensionDtype
		    The desired dtype of the result.
	**/
	public function _get_result_dtype(dtype:Dynamic):Dynamic;
	/**
		Equivalent of `_ea_wrap_cython_operation`, but optimized for masked EA's
		and cython algorithms which accept a mask.
	**/
	public function _masked_ea_wrap_cython_operation(values:Dynamic, min_count:Dynamic, ngroups:Dynamic, comp_ids:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct an ExtensionArray result from an ndarray result.
	**/
	public function _reconstruct_ea_result(values:Dynamic, res_values:Dynamic):Dynamic;
	static public var cast_blocklist : Dynamic;
	/**
		Call our cython function, with appropriate pre- and post- processing.
	**/
	public function cython_operation(values:Dynamic, axis:Dynamic, ?min_count:Dynamic, comp_ids:Dynamic, ngroups:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find the appropriate cython function, casting if necessary.
		
		Parameters
		----------
		values : np.ndarray
		is_numeric : bool
		
		Returns
		-------
		func : callable
		values : np.ndarray
	**/
	public function get_cython_func_and_vals(values:Dynamic, is_numeric:Dynamic):Dynamic;
	public function get_out_dtype(dtype:Dynamic):Dynamic;
	public function uses_mask():Dynamic;
}