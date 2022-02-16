/* This file is generated, do not edit! */
package tensorflow.python.data.ops.dataset_ops;
@:pythonImport("tensorflow.python.data.ops.dataset_ops", "StructuredFunctionWrapper") extern class StructuredFunctionWrapper {
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
		Creates a new `StructuredFunctionWrapper` for the given function.
		
		Args:
		  func: A function from a (nested) structure to another (nested) structure.
		  transformation_name: Human-readable name of the transformation in which
		    this function is being instantiated, for error messages.
		  dataset: (Optional.) A `tf.data.Dataset`. If given, the structure of this
		    dataset will be assumed as the structure for `func` arguments; otherwise
		    `input_classes`, `input_shapes`, and `input_types` must be defined.
		  input_classes: (Optional.) A (nested) structure of `type`. If given, this
		    argument defines the Python types for `func` arguments.
		  input_shapes: (Optional.) A (nested) structure of `tf.TensorShape`. If
		    given, this argument defines the shapes and structure for `func`
		    arguments.
		  input_types: (Optional.) A (nested) structure of `tf.DType`. If given,
		    this argument defines the element types and structure for `func`
		    arguments.
		  input_structure: (Optional.) A `Structure` object. If given, this argument
		    defines the element types and structure for `func` arguments.
		  add_to_graph: (Optional.) If `True`, the function will be added to the
		    default graph, if it exists.
		  use_legacy_function: (Optional.) A boolean that determines whether the
		    function be created using `tensorflow.python.eager.function.defun`
		    (default behavior) or `tensorflow.python.framework.function.Defun`
		    (legacy behavior).
		  defun_kwargs: (Optional.) A dictionary mapping string argument names to
		    values. If supplied, will be passed to `function` as keyword arguments.
		
		Raises:
		  ValueError: If an invalid combination of `dataset`, `input_classes`,
		    `input_shapes`, and `input_types` is passed.
	**/
	@:native("__init__")
	public function ___init__(func:Dynamic, transformation_name:Dynamic, ?dataset:Dynamic, ?input_classes:Dynamic, ?input_shapes:Dynamic, ?input_types:Dynamic, ?input_structure:Dynamic, ?add_to_graph:Dynamic, ?use_legacy_function:Dynamic, ?defun_kwargs:Dynamic):Dynamic;
	/**
		Creates a new `StructuredFunctionWrapper` for the given function.
		
		Args:
		  func: A function from a (nested) structure to another (nested) structure.
		  transformation_name: Human-readable name of the transformation in which
		    this function is being instantiated, for error messages.
		  dataset: (Optional.) A `tf.data.Dataset`. If given, the structure of this
		    dataset will be assumed as the structure for `func` arguments; otherwise
		    `input_classes`, `input_shapes`, and `input_types` must be defined.
		  input_classes: (Optional.) A (nested) structure of `type`. If given, this
		    argument defines the Python types for `func` arguments.
		  input_shapes: (Optional.) A (nested) structure of `tf.TensorShape`. If
		    given, this argument defines the shapes and structure for `func`
		    arguments.
		  input_types: (Optional.) A (nested) structure of `tf.DType`. If given,
		    this argument defines the element types and structure for `func`
		    arguments.
		  input_structure: (Optional.) A `Structure` object. If given, this argument
		    defines the element types and structure for `func` arguments.
		  add_to_graph: (Optional.) If `True`, the function will be added to the
		    default graph, if it exists.
		  use_legacy_function: (Optional.) A boolean that determines whether the
		    function be created using `tensorflow.python.eager.function.defun`
		    (default behavior) or `tensorflow.python.framework.function.Defun`
		    (legacy behavior).
		  defun_kwargs: (Optional.) A dictionary mapping string argument names to
		    values. If supplied, will be passed to `function` as keyword arguments.
		
		Raises:
		  ValueError: If an invalid combination of `dataset`, `input_classes`,
		    `input_shapes`, and `input_types` is passed.
	**/
	public function new(func:Dynamic, transformation_name:Dynamic, ?dataset:Dynamic, ?input_classes:Dynamic, ?input_shapes:Dynamic, ?input_types:Dynamic, ?input_structure:Dynamic, ?add_to_graph:Dynamic, ?use_legacy_function:Dynamic, ?defun_kwargs:Dynamic):Void;
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
	@:native("function")
	public var _function : Dynamic;
	public var output_classes : Dynamic;
	public var output_shapes : Dynamic;
	public var output_structure : Dynamic;
	public var output_types : Dynamic;
}