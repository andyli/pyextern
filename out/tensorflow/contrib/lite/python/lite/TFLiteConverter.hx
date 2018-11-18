/* This file is generated, do not edit! */
package tensorflow.contrib.lite.python.lite;
@:pythonImport("tensorflow.contrib.lite.python.lite", "TFLiteConverter") extern class TFLiteConverter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructor for TFLiteConverter.
		
		Args:
		  graph_def: Frozen TensorFlow GraphDef.
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.get_shape()` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  input_arrays_with_shape: Tuple of strings representing input tensor names
		    and list of integers representing input shapes
		    (e.g., [("foo" : [1, 16, 16, 3])]). Use only when graph cannot be loaded
		      into TensorFlow and when `input_tensors` and `output_tensors` are
		      None. (default None)
		  output_arrays: List of output tensors to freeze graph with. Use only when
		    graph cannot be loaded into TensorFlow and when `input_tensors` and
		    `output_tensors` are None. (default None)
		
		Raises:
		  ValueError: Invalid arguments.
	**/
	@:native("__init__")
	public function ___init__(graph_def:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, ?input_arrays_with_shape:Dynamic, ?output_arrays:Dynamic):Dynamic;
	/**
		Constructor for TFLiteConverter.
		
		Args:
		  graph_def: Frozen TensorFlow GraphDef.
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.get_shape()` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  input_arrays_with_shape: Tuple of strings representing input tensor names
		    and list of integers representing input shapes
		    (e.g., [("foo" : [1, 16, 16, 3])]). Use only when graph cannot be loaded
		      into TensorFlow and when `input_tensors` and `output_tensors` are
		      None. (default None)
		  output_arrays: List of output tensors to freeze graph with. Use only when
		    graph cannot be loaded into TensorFlow and when `input_tensors` and
		    `output_tensors` are None. (default None)
		
		Raises:
		  ValueError: Invalid arguments.
	**/
	public function new(graph_def:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, ?input_arrays_with_shape:Dynamic, ?output_arrays:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Checks if the input and output tensors have been initialized.
		
		Returns:
		  Bool.
	**/
	public function _has_valid_tensors():Dynamic;
	/**
		Sets the first dimension of the input tensor to `batch_size`.
		
		Args:
		  batch_size: Batch size for the model. Replaces the first dimension of an
		    input size array if undefined. (default 1)
		
		Raises:
		  ValueError: input_tensor is not defined.
	**/
	public function _set_batch_size(batch_size:Dynamic):Dynamic;
	/**
		Converts a TensorFlow GraphDef based on instance variables.
		
		Returns:
		  The converted data in serialized format. Either a TFLite Flatbuffer or a
		  Graphviz graph depending on value in `output_format`.
		
		Raises:
		  ValueError:
		    Input shape is not specified.
		    None value for dimension in input_tensor.
		    ConverterMode option is unsupported for the model.
	**/
	public function convert():Dynamic;
	/**
		Creates a TFLiteConverter class from a file containing a frozen GraphDef.
		
		Args:
		  graph_def_file: Full filepath of file containing frozen GraphDef.
		  input_arrays: List of input tensors to freeze graph with.
		  output_arrays: List of output tensors to freeze graph with.
		  input_shapes: Dict of strings representing input tensor names to list of
		    integers representing input shapes (e.g., {"foo" : [1, 16, 16, 3]}).
		    Automatically determined when input shapes is None (e.g., {"foo" :
		      None}). (default None)
		
		Returns:
		  TFLiteConverter class.
		
		Raises:
		  IOError:
		    File not found.
		    Unable to parse input file.
		  ValueError:
		    The graph is not frozen.
		    input_arrays or output_arrays contains an invalid tensor name.
		    input_shapes is not correctly defined when required
	**/
	static public function from_frozen_graph(graph_def_file:Dynamic, input_arrays:Dynamic, output_arrays:Dynamic, ?input_shapes:Dynamic):Dynamic;
	/**
		Creates a TFLiteConverter class from a tf.keras model file.
		
		Args:
		  model_file: Full filepath of HDF5 file containing the tf.keras model.
		  input_arrays: List of input tensors to freeze graph with. Uses input
		    arrays from SignatureDef when none are provided. (default None)
		  input_shapes: Dict of strings representing input tensor names to list of
		    integers representing input shapes (e.g., {"foo" : [1, 16, 16, 3]}).
		    Automatically determined when input shapes is None (e.g., {"foo" :
		      None}). (default None)
		  output_arrays: List of output tensors to freeze graph with. Uses output
		    arrays from SignatureDef when none are provided. (default None)
		
		Returns:
		  TFLiteConverter class.
	**/
	static public function from_keras_model_file(model_file:Dynamic, ?input_arrays:Dynamic, ?input_shapes:Dynamic, ?output_arrays:Dynamic):Dynamic;
	/**
		Creates a TFLiteConverter class from a SavedModel.
		
		Args:
		  saved_model_dir: SavedModel directory to convert.
		  input_arrays: List of input tensors to freeze graph with. Uses input
		    arrays from SignatureDef when none are provided. (default None)
		  input_shapes: Dict of strings representing input tensor names to list of
		    integers representing input shapes (e.g., {"foo" : [1, 16, 16, 3]}).
		    Automatically determined when input shapes is None (e.g., {"foo" :
		      None}). (default None)
		  output_arrays: List of output tensors to freeze graph with. Uses output
		    arrays from SignatureDef when none are provided. (default None)
		  tag_set: Set of tags identifying the MetaGraphDef within the SavedModel to
		    analyze. All tags in the tag set must be present. (default set("serve"))
		  signature_key: Key identifying SignatureDef containing inputs and outputs.
		    (default DEFAULT_SERVING_SIGNATURE_DEF_KEY)
		
		Returns:
		  TFLiteConverter class.
	**/
	static public function from_saved_model(saved_model_dir:Dynamic, ?input_arrays:Dynamic, ?input_shapes:Dynamic, ?output_arrays:Dynamic, ?tag_set:Dynamic, ?signature_key:Dynamic):Dynamic;
	/**
		Creates a TFLiteConverter class from a TensorFlow Session.
		
		Args:
		  sess: TensorFlow Session.
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.get_shape()` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		
		Returns:
		  TFLiteConverter class.
	**/
	static public function from_session(sess:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic):Dynamic;
	/**
		Returns a list of the names of the input tensors.
		
		Returns:
		  List of strings.
	**/
	public function get_input_arrays():Dynamic;
}