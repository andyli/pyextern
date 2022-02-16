/* This file is generated, do not edit! */
package pandas.core.reshape.merge;
@:pythonImport("pandas.core.reshape.merge", "_MergeOperation") extern class _MergeOperation {
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
	public function ___init__(left:Dynamic, right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?axis:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(left:Dynamic, right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?axis:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic, ?validate:Dynamic):Void;
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
	/**
		Creates the configuration to dispatch the cross operation to inner join,
		e.g. adding a join column and resetting parameters. Join column is added
		to a new object, no inplace modification
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		
		Returns
		-------
		    a tuple (left, right, how, cross_col) representing the adjusted
		    DataFrames with cross_col, the merge operation set to inner and the column
		    to join over.
	**/
	public function _create_cross_configuration(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Create a join index by rearranging one index to match another
		
		Parameters
		----------
		index : Index being rearranged
		other_index : Index used to supply values not found in index
		indexer : np.ndarray[np.intp] how to rearrange index
		how : str
		    Replacement is only necessary if indexer based on other_index.
		
		Returns
		-------
		Index
	**/
	public function _create_join_index(index:Dynamic, other_index:Dynamic, indexer:Dynamic, ?how:Dynamic):Dynamic;
	/**
		return the join indexers
	**/
	public function _get_join_indexers():Dynamic;
	public function _get_join_info():Dynamic;
	/**
		Note: has side effects (copy/delete key columns)
		
		Parameters
		----------
		left
		right
		on
		
		Returns
		-------
		left_keys, right_keys
	**/
	public function _get_merge_keys():Dynamic;
	public function _indicator_post_merge(result:Dynamic):Dynamic;
	public function _indicator_pre_merge(left:Dynamic, right:Dynamic):Dynamic;
	public function _maybe_add_join_keys(result:Dynamic, left_indexer:Dynamic, right_indexer:Dynamic):Dynamic;
	public function _maybe_coerce_merge_keys():Dynamic;
	public function _maybe_drop_cross_column(result:Dynamic, cross_col:Dynamic):Dynamic;
	/**
		Restore index levels specified as `on` parameters
		
		Here we check for cases where `self.left_on` and `self.right_on` pairs
		each reference an index level in their respective DataFrames. The
		joined columns corresponding to these pairs are then restored to the
		index of `result`.
		
		**Note:** This method has side effects. It modifies `result` in-place
		
		Parameters
		----------
		result: DataFrame
		    merge result
		
		Returns
		-------
		None
	**/
	public function _maybe_restore_index_levels(result:Dynamic):Dynamic;
	static public var _merge_type : Dynamic;
	public function _validate(validate:Dynamic):Dynamic;
	public function _validate_specification():Dynamic;
	public function get_result():Dynamic;
}