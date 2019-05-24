/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.optimization_options;
@:pythonImport("tensorflow.python.data.experimental.ops.optimization_options", "OptimizationOptions") extern class OptimizationOptions {
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
	public function __eq__(other:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
	public function __ne__(other:Dynamic):Dynamic;
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
	/**
		Produces the list of enabled static optimizations.
	**/
	public function _static_optimizations():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Whether to apply default static optimizations. If False, only static optimizations that have been explicitly enabled will be applied.
	**/
	public var apply_default_optimizations : Dynamic;
	/**
		Whether to fuse filter transformations. If None, defaults to False.
	**/
	public var filter_fusion : Dynamic;
	/**
		Whether to hoist `tf.random_uniform()` ops out of map transformations. If None, defaults to False.
	**/
	public var hoist_random_uniform : Dynamic;
	/**
		Whether to fuse map and batch transformations. If None, defaults to True.
	**/
	public var map_and_batch_fusion : Dynamic;
	/**
		Whether to fuse map and filter transformations. If None, defaults to False.
	**/
	public var map_and_filter_fusion : Dynamic;
	/**
		Whether to fuse map transformations. If None, defaults to False.
	**/
	public var map_fusion : Dynamic;
	/**
		Whether to parallelize stateless map transformations. If None, defaults to False.
	**/
	public var map_parallelization : Dynamic;
	/**
		Whether to vectorize map transformations. If None, defaults to False.
	**/
	public var map_vectorization : Dynamic;
	/**
		Whether to eliminate no-op transformations. If None, defaults to True.
	**/
	public var noop_elimination : Dynamic;
	/**
		Whether to fuse shuffle and repeat transformations. If None, defaults to True.
	**/
	public var shuffle_and_repeat_fusion : Dynamic;
}