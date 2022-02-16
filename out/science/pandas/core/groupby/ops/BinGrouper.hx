/* This file is generated, do not edit! */
package pandas.core.groupby.ops;
@:pythonImport("pandas.core.groupby.ops", "BinGrouper") extern class BinGrouper {
	static public var __annotations__ : Dynamic;
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
	public function ___init__(bins:Dynamic, binlabels:Dynamic, ?mutated:Dynamic, ?indexer:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(bins:Dynamic, binlabels:Dynamic, ?mutated:Dynamic, ?indexer:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _aggregate_series_fast(obj:Dynamic, func:Dynamic):Dynamic;
	public function _aggregate_series_pure_python(obj:Dynamic, func:Dynamic):Dynamic;
	/**
		Returns the values of a cython operation.
	**/
	public function _cython_operation(kind:Dynamic, values:Dynamic, how:Dynamic, axis:Dynamic, ?min_count:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _get_compressed_codes():Dynamic;
	/**
		We are a grouper as part of another's groupings.
		
		We have a specific method of grouping, so cannot
		convert to a Index for our grouper.
	**/
	public function _get_grouper():Dynamic;
	/**
		Returns
		-------
		Generator yielding subsetted objects
		
		__finalize__ has not been called for the subsetted objects returned.
	**/
	public function _get_splitter(data:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Parameters
		----------
		obj : Series
		func : function taking a Series and returning a scalar-like
		preserve_dtype : bool
		    Whether the aggregation is known to be dtype-preserving.
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	public function agg_series(obj:Dynamic, func:Dynamic, ?preserve_dtype:Dynamic):Dynamic;
	public function apply(f:Dynamic, data:Dynamic, ?axis:Dynamic):Dynamic;
	public var codes : Dynamic;
	public var codes_info : Dynamic;
	public function get_group_levels():Dynamic;
	/**
		Groupby iterator
		
		Returns
		-------
		Generator yielding sequence of (name, subsetted object)
		for each group
	**/
	public function get_iterator(data:Dynamic, ?axis:Dynamic):Dynamic;
	public var group_info : Dynamic;
	public var group_keys_seq : Dynamic;
	public var groupings : Dynamic;
	/**
		dict {group name -> group labels}
	**/
	public var groups : Dynamic;
	public var indices : Dynamic;
	public var is_monotonic : Dynamic;
	public var levels : Dynamic;
	public var names : Dynamic;
	public var ngroups : Dynamic;
	public var nkeys : Dynamic;
	public var reconstructed_codes : Dynamic;
	/**
		Analogous to result_index, but returning an ndarray/ExtensionArray
		allowing us to retain ExtensionDtypes not supported by Index.
	**/
	public var result_arraylike : Dynamic;
	public var result_index : Dynamic;
	public var shape : Dynamic;
	/**
		Compute group sizes.
	**/
	public function size():Dynamic;
}