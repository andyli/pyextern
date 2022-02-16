/* This file is generated, do not edit! */
package pandas.core.window.rolling;
@:pythonImport("pandas.core.window.rolling", "BaseWindow") extern class BaseWindow {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class_getitem__(params:Dynamic):Dynamic;
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
	public function __getattr__(attr:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
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
	public function ___init__(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic, ?on:Dynamic, ?closed:Dynamic, ?method:Dynamic, ?selection:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic, ?on:Dynamic, ?closed:Dynamic, ?method:Dynamic, ?selection:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __orig_bases__ : Dynamic;
	static public var __parameters__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Provide a nice str repr of our rolling object.
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
	static public var __slots__ : Dynamic;
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
	/**
		Rolling statistical measure using supplied function.
		
		Designed to be used with passed-in Cython array-based functions.
		
		Parameters
		----------
		func : callable function to apply
		name : str,
		numba_cache_key : tuple
		    caching key to be used to store a compiled numba func
		numba_args : tuple
		    args to be passed when func is a numba func
		**kwargs
		    additional arguments for rolling function and window function
		
		Returns
		-------
		y : type of input
	**/
	public function _apply(func:Dynamic, ?name:Dynamic, ?numba_cache_key:Dynamic, ?numba_args:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply the given function to the DataFrame broken down into homogeneous
		sub-frames.
	**/
	public function _apply_blockwise(homogeneous_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Apply the given pairwise function given 2 pandas objects (DataFrame/Series)
	**/
	public function _apply_pairwise(target:Dynamic, other:Dynamic, pairwise:Dynamic, func:Dynamic):Dynamic;
	/**
		Series version of _apply_blockwise
	**/
	public function _apply_series(homogeneous_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Apply the given function to the DataFrame across the entire object
	**/
	public function _apply_tablewise(homogeneous_func:Dynamic, ?name:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
	public function _check_window_bounds(start:Dynamic, end:Dynamic, num_vals:Dynamic):Dynamic;
	/**
		Split data into blocks & return conformed data.
	**/
	public function _create_data(obj:Dynamic):Dynamic;
	public function _dir_additions():Dynamic;
	/**
		Return an indexer class that will compute the window start and end bounds
	**/
	public function _get_window_indexer():Dynamic;
	/**
		Sub-classes to define. Return a sliced object.
		
		Parameters
		----------
		key : str / list of selections
		ndim : {1, 2}
		    requested ndim of result
		subset : object, default None
		    subset to act on
	**/
	public function _gotitem(key:Dynamic, ndim:Dynamic, ?subset:Dynamic):Dynamic;
	public var _index_array : Dynamic;
	public function _insert_on_column(result:Dynamic, obj:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	static public var _is_protocol : Dynamic;
	public function _numba_apply(func:Dynamic, numba_cache_key_str:Dynamic, ?engine_kwargs:Dynamic, ?func_args:python.VarArgs<Dynamic>):Dynamic;
	public var _obj_with_exclusions : Dynamic;
	/**
		Convert input to numpy arrays for Cython routines
	**/
	public function _prep_values(values:Dynamic):Dynamic;
	/**
		Validate and finalize result.
	**/
	public function _resolve_output(out:Dynamic, obj:Dynamic):Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	public function _validate():Dynamic;
	public function agg(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function aggregate(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	public var is_datetimelike : Dynamic;
	public var ndim : Dynamic;
	public function validate():Dynamic;
	public var win_type : Dynamic;
}