/* This file is generated, do not edit! */
package tensorflow.lite.python.interpreter;
@:pythonImport("tensorflow.lite.python.interpreter", "SignatureRunner") extern class SignatureRunner {
	/**
		Runs the SignatureDef given the provided inputs in arguments.
		
		Args:
		  **kwargs: key,value for inputs to the model. Key is the SignatureDef input
		    name. Value is numpy array with the value.
		
		Returns:
		  dictionary of the results from the model invoke.
		  Key in the dictionary is SignatureDef output name.
		  Value is the result Tensor.
	**/
	public function __call__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Constructor.
		
		Args:
		  interpreter: Interpreter object that is already initialized with the
		    requested model.
		  signature_key: SignatureDef key to be used.
	**/
	@:native("__init__")
	public function ___init__(?interpreter:Dynamic, ?signature_key:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  interpreter: Interpreter object that is already initialized with the
		    requested model.
		  signature_key: SignatureDef key to be used.
	**/
	public function new(?interpreter:Dynamic, ?signature_key:Dynamic):Void;
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
		Gets input tensor details.
		
		Returns:
		  A dictionary from input name to tensor details where each item is a
		  dictionary with details about an input tensor. Each dictionary contains
		  the following fields that describe the tensor:
		
		  + `name`: The tensor name.
		  + `index`: The tensor index in the interpreter.
		  + `shape`: The shape of the tensor.
		  + `shape_signature`: Same as `shape` for models with known/fixed shapes.
		    If any dimension sizes are unkown, they are indicated with `-1`.
		  + `dtype`: The numpy data type (such as `np.int32` or `np.uint8`).
		  + `quantization`: Deprecated, use `quantization_parameters`. This field
		    only works for per-tensor quantization, whereas
		    `quantization_parameters` works in all cases.
		  + `quantization_parameters`: A dictionary of parameters used to quantize
		    the tensor:
		    ~ `scales`: List of scales (one if per-tensor quantization).
		    ~ `zero_points`: List of zero_points (one if per-tensor quantization).
		    ~ `quantized_dimension`: Specifies the dimension of per-axis
		    quantization, in the case of multiple scales/zero_points.
		  + `sparsity_parameters`: A dictionary of parameters used to encode a
		    sparse tensor. This is empty if the tensor is dense.
	**/
	public function get_input_details():Dynamic;
	/**
		Gets output tensor details.
		
		Returns:
		  A dictionary from input name to tensor details where each item is a
		  dictionary with details about an output tensor. The dictionary contains
		  the same fields as described for `get_input_details()`.
	**/
	public function get_output_details():Dynamic;
}