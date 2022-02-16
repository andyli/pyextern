/* This file is generated, do not edit! */
package pandas.core.apply;
@:pythonImport("pandas.core.apply", "NDFrameApply") extern class NDFrameApply {
	static public var __abstractmethods__ : Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function ___init__(obj:Dynamic, func:Dynamic, raw:Dynamic, result_type:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, func:Dynamic, raw:Dynamic, result_type:Dynamic, args:Dynamic, kwargs:Dynamic):Void;
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
	static public var _abc_impl : Dynamic;
	/**
		if arg is a string, then try to operate on it:
		- try to find a function (or attribute) on ourselves
		- try to find a numpy function
		- raise
	**/
	public function _try_aggregate_string_function(obj:Dynamic, arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Provide an implementation for the aggregators.
		
		Returns
		-------
		Result of aggregation, or None if agg cannot be performed by
		this method.
	**/
	public function agg():Dynamic;
	public var agg_axis : Dynamic;
	/**
		Compute aggregation in the case of a dict-like argument.
		
		Returns
		-------
		Result of aggregation.
	**/
	public function agg_dict_like():Dynamic;
	/**
		Compute aggregation in the case of a list-like argument.
		
		Returns
		-------
		Result of aggregation.
	**/
	public function agg_list_like():Dynamic;
	public function apply():Dynamic;
	/**
		Compute apply in case of a list-like or dict-like.
		
		Returns
		-------
		result: Series, DataFrame, or None
		    Result when self.f is a list-like or dict-like, None otherwise.
	**/
	public function apply_multiple():Dynamic;
	/**
		Compute apply in case of a string.
		
		Returns
		-------
		result: Series or DataFrame
	**/
	public function apply_str():Dynamic;
	public var index : Dynamic;
	/**
		Handler for dict-like argument.
		
		Ensures that necessary columns exist if obj is a DataFrame, and
		that a nested renamer is not passed. Also normalizes to all lists
		when values consists of a mix of list and non-lists.
	**/
	public function normalize_dictlike_arg(how:Dynamic, obj:Dynamic, func:Dynamic):Dynamic;
	/**
		Transform a DataFrame or Series.
		
		Returns
		-------
		DataFrame or Series
		    Result of applying ``func`` along the given axis of the
		    Series or DataFrame.
		
		Raises
		------
		ValueError
		    If the transform function fails or does not transform.
	**/
	public function transform():Dynamic;
	/**
		Compute transform in the case of a dict-like func
	**/
	public function transform_dict_like(func:Dynamic):Dynamic;
	/**
		Compute transform in the case of a string or callable func
	**/
	public function transform_str_or_callable(func:Dynamic):Dynamic;
}