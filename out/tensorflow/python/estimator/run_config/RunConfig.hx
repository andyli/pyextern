/* This file is generated, do not edit! */
package tensorflow.python.estimator.run_config;
@:pythonImport("tensorflow.python.estimator.run_config", "RunConfig") extern class RunConfig {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		See `replace`.
		
		N.B.: This implementation assumes that for key named "foo", the underlying
		property the RunConfig holds is "_foo" (with one leading underscore).
		
		Args:
		  allowed_properties_list: The property name list allowed to be replaced.
		  **kwargs: keyword named properties with new values.
		
		Raises:
		  ValueError: If any property name in `kwargs` does not exist or is not
		    allowed to be replaced, or both `save_checkpoints_steps` and
		    `save_checkpoints_secs` are set.
		
		Returns:
		  a new instance of `RunConfig`.
	**/
	public function _replace(?allowed_properties_list:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var cluster_spec : Dynamic;
	public var evaluation_master : Dynamic;
	public var is_chief : Dynamic;
	public var keep_checkpoint_every_n_hours : Dynamic;
	public var keep_checkpoint_max : Dynamic;
	public var master : Dynamic;
	public var model_dir : Dynamic;
	public var num_ps_replicas : Dynamic;
	public var num_worker_replicas : Dynamic;
	/**
		Returns a new instance of `RunConfig` replacing specified properties.
		
		Only the properties in the following list are allowed to be replaced:
		  - `model_dir`.
		  - `tf_random_seed`,
		  - `save_summary_steps`,
		  - `save_checkpoints_steps`,
		  - `save_checkpoints_secs`,
		  - `session_config`,
		  - `keep_checkpoint_max`,
		  - `keep_checkpoint_every_n_hours`,
		
		In addition, either `save_checkpoints_steps` or `save_checkpoints_secs`
		can be set (should not be both).
		
		Args:
		  **kwargs: keyword named properties with new values.
		
		Raises:
		  ValueError: If any property name in `kwargs` does not exist or is not
		    allowed to be replaced, or both `save_checkpoints_steps` and
		    `save_checkpoints_secs` are set.
		
		Returns:
		  a new instance of `RunConfig`.
	**/
	public function replace(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var save_checkpoints_secs : Dynamic;
	public var save_checkpoints_steps : Dynamic;
	public var save_summary_steps : Dynamic;
	public var session_config : Dynamic;
	public var task_id : Dynamic;
	public var task_type : Dynamic;
	public var tf_random_seed : Dynamic;
}