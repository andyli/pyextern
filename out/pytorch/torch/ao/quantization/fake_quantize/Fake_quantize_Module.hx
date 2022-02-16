/* This file is generated, do not edit! */
package torch.ao.quantization.fake_quantize;
@:pythonImport("torch.ao.quantization.fake_quantize") extern class Fake_quantize_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns true if given mod is an instance of FakeQuantize script module.
		    
	**/
	static public function _is_fake_quant_script_module(mod:Dynamic):Dynamic;
	static public function _is_per_channel(qscheme:Dynamic):Dynamic;
	static public function _is_per_tensor(qscheme:Dynamic):Dynamic;
	static public function _is_symmetric_quant(qscheme:Dynamic):Dynamic;
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
	static public function default_affine_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_act_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_per_channel_wt_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_wt_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_histogram_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_per_channel_weight_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_symmetric_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_weight_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function disable_fake_quant(mod:Dynamic):Dynamic;
	static public function disable_observer(mod:Dynamic):Dynamic;
	static public function enable_fake_quant(mod:Dynamic):Dynamic;
	static public function enable_observer(mod:Dynamic):Dynamic;
}