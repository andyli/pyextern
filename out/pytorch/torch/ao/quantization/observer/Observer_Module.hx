/* This file is generated, do not edit! */
package torch.ao.quantization.observer;
@:pythonImport("torch.ao.quantization.observer") extern class Observer_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_activation_post_process(module:Dynamic):Dynamic;
	/**
		Returns true if given mod is an instance of Observer script module.
	**/
	static public function _is_observer_script_module(mod:Dynamic, obs_type_name:Dynamic):Dynamic;
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
	/**
		A decorator indicating abstract methods.
		
		Requires that the metaclass is ABCMeta or derived from it.  A
		class that has a metaclass derived from ABCMeta cannot be
		instantiated unless all of its abstract methods are overridden.
		The abstract methods can be called using any of the normal
		'super' call mechanisms.  abstractmethod() may be used to declare
		abstract methods for properties and descriptors.
		
		Usage:
		
		    class C(metaclass=ABCMeta):
		        @abstractmethod
		        def my_abstract_method(self, ...):
		            ...
	**/
	static public function abstractmethod(funcobj:Dynamic):Dynamic;
	/**
		Calculates actual qmin and qmax based on the quantization range,
		observer datatype and if range is reduced.
	**/
	static public function calculate_qmin_qmax(quant_min:Dynamic, quant_max:Dynamic, has_customized_qrange:Dynamic, dtype:Dynamic, reduce_range:Dynamic):Dynamic;
	/**
		Checks if the given minimum and maximum values are valid, meaning that
		they exist and the min value is less than the max value.
	**/
	static public function check_min_max_valid(min_val:Dynamic, max_val:Dynamic):Dynamic;
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