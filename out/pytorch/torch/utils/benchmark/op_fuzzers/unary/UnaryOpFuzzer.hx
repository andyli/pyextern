/* This file is generated, do not edit! */
package torch.utils.benchmark.op_fuzzers.unary;
@:pythonImport("torch.utils.benchmark.op_fuzzers.unary", "UnaryOpFuzzer") extern class UnaryOpFuzzer {
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
		Args:
		    parameters:
		        List of FuzzedParameters which provide specifications
		        for generated parameters. Iterable elements will be
		        unpacked, though arbitrary nested structures will not.
		    tensors:
		        List of FuzzedTensors which define the Tensors which
		        will be created each step based on the parameters for
		        that step. Iterable elements will be unpacked, though
		        arbitrary nested structures will not.
		    constraints:
		        List of callables. They will be called with params
		        as kwargs, and if any of them return False the current
		        set of parameters will be rejected.
		    seed:
		        Seed for the RandomState used by the Fuzzer. This will
		        also be used to set the PyTorch random seed so that random
		        ops will create reproducible Tensors.
	**/
	@:native("__init__")
	public function ___init__(seed:Dynamic, ?dtype:Dynamic, ?cuda:Dynamic):Dynamic;
	/**
		Args:
		    parameters:
		        List of FuzzedParameters which provide specifications
		        for generated parameters. Iterable elements will be
		        unpacked, though arbitrary nested structures will not.
		    tensors:
		        List of FuzzedTensors which define the Tensors which
		        will be created each step based on the parameters for
		        that step. Iterable elements will be unpacked, though
		        arbitrary nested structures will not.
		    constraints:
		        List of callables. They will be called with params
		        as kwargs, and if any of them return False the current
		        set of parameters will be rejected.
		    seed:
		        Seed for the RandomState used by the Fuzzer. This will
		        also be used to set the PyTorch random seed so that random
		        ops will create reproducible Tensors.
	**/
	public function new(seed:Dynamic, ?dtype:Dynamic, ?cuda:Dynamic):Void;
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
	public function _generate(state:Dynamic):Dynamic;
	static public function _resolve_aliases(params:Dynamic):Dynamic;
	static public function _unpack(values:Dynamic, cls:Dynamic):Dynamic;
	public var rejection_rate : Dynamic;
	public function take(n:Dynamic):Dynamic;
}