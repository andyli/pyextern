/* This file is generated, do not edit! */
package pandas.core.internals.blocks;
@:pythonImport("pandas.core.internals.blocks", "NonConsolidatableMixIn") extern class NonConsolidatableMixIn {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize a non-consolidatable block.
		
		'ndim' may be inferred from 'placement'.
		
		This will call continue to call __init__ for the other base
		classes mixed in with this Mixin.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic, placement:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Initialize a non-consolidatable block.
		
		'ndim' may be inferred from 'placement'.
		
		This will call continue to call __init__ for the other base
		classes mixed in with this Mixin.
	**/
	public function new(values:Dynamic, placement:Dynamic, ?ndim:Dynamic):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var _can_consolidate : Dynamic;
	/**
		Get the placement, values, and mask for a Block unstack.
		
		This is shared between ObjectBlock and ExtensionBlock. They
		differ in that ObjectBlock passes the values, while ExtensionBlock
		passes the dummy ndarray of positions to be used by a take
		later.
		
		Parameters
		----------
		unstacker : pandas.core.reshape.reshape._Unstacker
		new_columns : Index
		    All columns of the unstacked BlockManager.
		
		Returns
		-------
		new_placement : ndarray[int]
		    The placement of the new columns in `new_columns`.
		new_values : Union[ndarray, ExtensionArray]
		    The first return value from _Unstacker.get_new_values.
		mask : ndarray[bool]
		    The second return value from _Unstacker.get_new_values.
	**/
	public function _get_unstack_items(unstacker:Dynamic, new_columns:Dynamic):Dynamic;
	public function _try_cast_result(result:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var _validate_ndim : Dynamic;
	static public var _verify_integrity : Dynamic;
	public function iget(col:Dynamic):Dynamic;
	/**
		putmask the data to the block; we must be a single block and not
		generate other blocks
		
		return the resulting block
		
		Parameters
		----------
		mask  : the condition to respect
		new : a ndarray/object
		align : boolean, perform alignment on other/cond, default is True
		inplace : perform inplace modification, default is False
		
		Returns
		-------
		a new block, the result of the putmask
	**/
	public function putmask(mask:Dynamic, _new:Dynamic, ?align:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?transpose:Dynamic):Dynamic;
	public function set(locs:Dynamic, values:Dynamic, ?check:Dynamic):Dynamic;
	public var shape : Dynamic;
	public function should_store(value:Dynamic):Dynamic;
}