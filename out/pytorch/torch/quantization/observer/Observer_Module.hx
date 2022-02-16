/* This file is generated, do not edit! */
package torch.quantization.observer;
@:pythonImport("torch.quantization.observer") extern class Observer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_activation_post_process(module:Dynamic):Dynamic;
	static public function _is_per_channel_script_obs_instance(module:Dynamic):Dynamic;
	/**
		Wrapper that allows creation of class factories.
		
		This can be useful when there is a need to create classes with the same
		constructor arguments, but different instances. Can be used in conjunction with
		_callable_args
		
		Example::
		
		    >>> Foo.with_args = classmethod(_with_args)
		    >>> foo_builder = Foo.with_args(a=3, b=4).with_args(answer=42)
		    >>> foo_instance1 = foo_builder()
		    >>> foo_instance2 = foo_builder()
		    >>> id(foo_instance1) == id(foo_instance2)
		    False
	**/
	static public function _with_args(cls_or_self:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper that allows creation of class factories args that need to be
		called at construction time.
		
		This can be useful when there is a need to create classes with the same
		constructor arguments, but different instances and those arguments should only
		be calculated at construction time. Can be used in conjunction with _with_args
		
		Example::
		
		    >>> Foo.with_callable_args = classmethod(_with_callable_args)
		    >>> Foo.with_args = classmethod(_with_args)
		    >>> foo_builder = Foo.with_callable_args(cur_time=get_time_func).with_args(name="dan")
		    >>> foo_instance1 = foo_builder()
		    >>> wait 50
		    >>> foo_instance2 = foo_builder()
		    >>> id(foo_instance1.creation_time) == id(foo_instance2.creation_time)
		    False
	**/
	static public function _with_callable_args(cls_or_self:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function default_dynamic_quant_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_float_qparams_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_histogram_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_per_channel_weight_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_weight_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the state dict corresponding to the observer stats.
		Traverse the model state_dict and extract out the stats.
	**/
	static public function get_observer_state_dict(mod:Dynamic):Dynamic;
	/**
		Given input model and a state_dict containing model observer stats,
		load the stats back into the model. The observer state_dict can be saved
		using torch.quantization.get_observer_state_dict
	**/
	static public function load_observer_state_dict(mod:Dynamic, obs_dict:Dynamic):Dynamic;
}