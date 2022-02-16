/* This file is generated, do not edit! */
package tensorflow.python.data.ops.options;
@:pythonImport("tensorflow.python.data.ops.options", "OptimizationOptions") extern class OptimizationOptions {
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
	public function __eq__(other:Dynamic):Dynamic;
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
		Convert protocol buffer to options.
	**/
	public function _from_proto(pb:Dynamic):Dynamic;
	/**
		Change the mutability value to `mutable` on this options and children.
	**/
	public function _set_mutable(mutable:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Convert options to protocol buffer.
	**/
	public function _to_proto():Dynamic;
	/**
		Whether to apply default graph optimizations. If False, only graph optimizations that have been explicitly enabled will be applied.
	**/
	public var apply_default_optimizations : Dynamic;
	/**
		Whether to fuse filter transformations. If None, defaults to False.
	**/
	public var filter_fusion : Dynamic;
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
		Whether to parallelize stateless map transformations. If None, defaults to True.
	**/
	public var map_parallelization : Dynamic;
	/**
		Whether to eliminate no-op transformations. If None, defaults to True.
	**/
	public var noop_elimination : Dynamic;
	/**
		Whether to parallelize copying of batch elements. This optimization is highly experimental and can cause performance degradation (e.g. when the parallelization overhead exceeds the benefits of performing the data copies in parallel). You should only enable this optimization if a) your input pipeline is bottlenecked on batching and b) you have validated that this optimization improves performance. If None, defaults to False.
	**/
	public var parallel_batch : Dynamic;
	/**
		Whether to fuse shuffle and repeat transformations. If None, defaults to True.
	**/
	public var shuffle_and_repeat_fusion : Dynamic;
}