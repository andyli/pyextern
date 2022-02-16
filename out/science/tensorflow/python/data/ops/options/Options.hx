/* This file is generated, do not edit! */
package tensorflow.python.data.ops.options;
@:pythonImport("tensorflow.python.data.ops.options", "Options") extern class Options {
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
		The autotuning options associated with the dataset. See `tf.data.experimental.AutotuneOptions` for more details.
	**/
	public var autotune : Dynamic;
	/**
		Whether the outputs need to be produced in deterministic order. If None, defaults to True.
	**/
	public var deterministic : Dynamic;
	/**
		DEPRECATED. Use `deterministic` instead.
	**/
	public var experimental_deterministic : Dynamic;
	/**
		The distribution strategy options associated with the dataset. See `tf.data.experimental.DistributeOptions` for more details.
	**/
	public var experimental_distribute : Dynamic;
	/**
		This option can be used to override the default policy for how to handle external state when serializing a dataset or checkpointing its iterator. There are three settings available - IGNORE: External state is ignored without a warning; WARN: External state is ignored and a warning is logged; FAIL: External state results in an error.
	**/
	public var experimental_external_state_policy : Dynamic;
	/**
		The optimization options associated with the dataset. See `tf.data.experimental.OptimizationOptions` for more details.
	**/
	public var experimental_optimization : Dynamic;
	/**
		Whether to introduce 'slack' in the last `prefetch` of the input pipeline, if it exists. This may reduce CPU contention with accelerator host-side activity at the start of a step. The slack frequency is determined by the number of devices attached to this input pipeline. If None, defaults to False.
	**/
	public var experimental_slack : Dynamic;
	/**
		DEPRECATED. Use `threading` instead.
	**/
	public var experimental_threading : Dynamic;
	/**
		Merges itself with the given `tf.data.Options`.
		
		If this object and the `options` to merge set an option differently, a
		warning is generated and this object's value is updated with the `options`
		object's value.
		
		Args:
		  options: The `tf.data.Options` to merge with.
		
		Returns:
		  New `tf.data.Options` object which is the result of merging self with
		  the input `tf.data.Options`.
	**/
	public function merge(options:Dynamic):Dynamic;
	/**
		The threading options associated with the dataset. See `tf.data.ThreadingOptions` for more details.
	**/
	public var threading : Dynamic;
}