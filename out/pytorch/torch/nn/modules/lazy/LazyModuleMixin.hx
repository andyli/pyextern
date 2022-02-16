/* This file is generated, do not edit! */
package torch.nn.modules.lazy;
@:pythonImport("torch.nn.modules.lazy", "LazyModuleMixin") extern class LazyModuleMixin {
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
	/**
		Infers the size and initializes the parameters according to the
		provided input batch.
		Given a module that contains parameters that were declared inferrable
		using :class:`torch.nn.parameter.ParameterMode.Infer`, runs a forward pass
		in the complete module using the provided input to initialize all the parameters
		as needed.
		The module is set into evaluation mode before running the forward pass in order
		to avoid saving statistics or calculating gradients
	**/
	public function _infer_parameters(module:Dynamic, input:Dynamic):Dynamic;
	/**
		load_state_dict pre-hook function for lazy buffers and parameters.
		
		The purpose of this hook is to adjust the current state and/or
		``state_dict`` being loaded so that a module instance serialized in
		both un/initialized state can be deserialized onto both un/initialized
		module instance.
		See comment in ``torch.nn.Module._register_load_state_dict_pre_hook``
		for the details of the hook specification.
	**/
	public function _lazy_load_hook(state_dict:Dynamic, prefix:Dynamic, local_metadata:Dynamic, strict:Dynamic, missing_keys:Dynamic, unexpected_keys:Dynamic, error_msgs:Dynamic):Dynamic;
	public function _replicate_for_data_parallel():Dynamic;
	public function _save_to_state_dict(destination:Dynamic, prefix:Dynamic, keep_vars:Dynamic):Dynamic;
	static public var cls_to_become : Dynamic;
	/**
		Check if a module has parameters that are not initialized
		        
	**/
	public function has_uninitialized_params():Dynamic;
	/**
		Initialize parameters according to the input batch properties.
		This adds an interface to isolate parameter initialization from the
		forward pass when doing parameter shape inference.
	**/
	public function initialize_parameters(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}