/* This file is generated, do not edit! */
package tensorflow.python.framework.ops;
@:pythonImport("tensorflow.python.framework.ops", "GraphKeys") extern class GraphKeys {
	static public var ACTIVATIONS : Dynamic;
	static public var ASSET_FILEPATHS : Dynamic;
	static public var BIASES : Dynamic;
	static public var CONCATENATED_VARIABLES : Dynamic;
	static public var COND_CONTEXT : Dynamic;
	static public var EVAL_STEP : Dynamic;
	static public var GLOBAL_STEP : Dynamic;
	static public var GLOBAL_VARIABLES : Dynamic;
	static public var INIT_OP : Dynamic;
	static public var LOCAL_INIT_OP : Dynamic;
	static public var LOCAL_RESOURCES : Dynamic;
	static public var LOCAL_VARIABLES : Dynamic;
	static public var LOSSES : Dynamic;
	static public var METRIC_VARIABLES : Dynamic;
	static public var MODEL_VARIABLES : Dynamic;
	static public var MOVING_AVERAGE_VARIABLES : Dynamic;
	static public var QUEUE_RUNNERS : Dynamic;
	static public var READY_FOR_LOCAL_INIT_OP : Dynamic;
	static public var READY_OP : Dynamic;
	static public var REGULARIZATION_LOSSES : Dynamic;
	static public var RESOURCES : Dynamic;
	static public var SAVEABLE_OBJECTS : Dynamic;
	static public var SAVERS : Dynamic;
	static public var SUMMARIES : Dynamic;
	static public var SUMMARY_OP : Dynamic;
	static public var TABLE_INITIALIZERS : Dynamic;
	static public var TRAINABLE_RESOURCE_VARIABLES : Dynamic;
	static public var TRAINABLE_VARIABLES : Dynamic;
	static public var TRAIN_OP : Dynamic;
	static public var UPDATE_OPS : Dynamic;
	static public var VARIABLES : Dynamic;
	static public var WEIGHTS : Dynamic;
	static public var WHILE_CONTEXT : Dynamic;
	static public var _STREAMING_MODEL_PORTS : Dynamic;
	static public var _SUMMARY_COLLECTION : Dynamic;
	static public var _VARIABLE_COLLECTIONS : Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
}