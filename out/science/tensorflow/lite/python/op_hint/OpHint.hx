/* This file is generated, do not edit! */
package tensorflow.lite.python.op_hint;
@:pythonImport("tensorflow.lite.python.op_hint", "OpHint") extern class OpHint {
	static public var AGGREGATE_FIRST : Dynamic;
	static public var AGGREGATE_LAST : Dynamic;
	static public var AGGREGATE_STACK : Dynamic;
	static public var CHILDREN_INPUTS_MAPPINGS : Dynamic;
	static public var FUNCTION_AGGREGATE_ATTR : Dynamic;
	static public var FUNCTION_INPUT_INDEX_ATTR : Dynamic;
	static public var FUNCTION_LEVEL_ATTR : Dynamic;
	static public var FUNCTION_NAME_ATTR : Dynamic;
	static public var FUNCTION_OUTPUT_INDEX_ATTR : Dynamic;
	static public var FUNCTION_SORT_INDEX_ATTR : Dynamic;
	static public var FUNCTION_UUID_ATTR : Dynamic;
	/**
		Conceptually tracks indices of arguments of "OpHint functions".
		
		The inputs and arguments of these functions both use an instance
		of the class so they can have independent numbering.
	**/
	static public function OpHintArgumentTracker(function_name:Dynamic, unique_function_id:Dynamic, node_name_prefix:Dynamic, attr_name:Dynamic, ?level:Dynamic, ?children_inputs_mappings:Dynamic):Dynamic;
	static public var TFLITE_INPUT_INDICES : Dynamic;
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
		Create a OpHint. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please follow instructions under https://www.tensorflow.org/lite/convert/operation_fusion for operationfusion in tflite.
		
		Args:
		  function_name: Name of the function (the custom op name in tflite)
		  level: OpHint level.
		  children_inputs_mappings: Children OpHint inputs/outputs mapping.
		    children_inputs_mappings should like below:
		    "parent_first_child_input":
		        [{"parent_input_index": num, "child_input_index": num}, ...]
		    "parent_last_child_output":
		        [{"parent_output_index": num, "child_output_index": num}, ...]
		    "internal_children_input_output":
		        [{"child_input_index": num, "child_output_index": num}, ...]
		  **kwargs: Keyword arguments of any constant attributes for the function.
	**/
	@:native("__init__")
	public function ___init__(function_name:Dynamic, ?level:Dynamic, ?children_inputs_mappings:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a OpHint. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please follow instructions under https://www.tensorflow.org/lite/convert/operation_fusion for operationfusion in tflite.
		
		Args:
		  function_name: Name of the function (the custom op name in tflite)
		  level: OpHint level.
		  children_inputs_mappings: Children OpHint inputs/outputs mapping.
		    children_inputs_mappings should like below:
		    "parent_first_child_input":
		        [{"parent_input_index": num, "child_input_index": num}, ...]
		    "parent_last_child_output":
		        [{"parent_output_index": num, "child_output_index": num}, ...]
		    "internal_children_input_output":
		        [{"child_input_index": num, "child_output_index": num}, ...]
		  **kwargs: Keyword arguments of any constant attributes for the function.
	**/
	public function new(function_name:Dynamic, ?level:Dynamic, ?children_inputs_mappings:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _setattr(dest_op:Dynamic, name:Dynamic, value:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Validate children inputs mappings is in the right format.
		
		Args:
		  children_inputs_mappings: the Children ophint inputs/outputs mapping.
	**/
	public function _validate_children_inputs_mappings(children_inputs_mappings:Dynamic):Dynamic;
	/**
		Add a wrapped input argument to the hint.
		
		Args:
		  *args: The input tensor.
		  **kwargs:
		    "name" label
		    "tag" a tag to group multiple arguments that will be aggregated. I.e.
		      a string like 'cool_input'. Basically multiple inputs can be added
		      to the same hint for parallel operations that will eventually be
		      combined. An example would be static_rnn which creates multiple copies
		      of state or inputs.
		    "aggregate" aggregation strategy that is valid only for tag non None.
		      Acceptable values are OpHint.AGGREGATE_FIRST, OpHint.AGGREGATE_LAST,
		      and OpHint.AGGREGATE_STACK.
		    "index_override" The global index to use. This corresponds to the
		      argument order in the final stub that will be generated.
		Returns:
		  The wrapped input tensor.
	**/
	public function add_input(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a sequence of inputs to the function invocation.
		
		Args:
		  *args: List of inputs to be converted (should be Tf.Tensor).
		  **kwargs: This allows 'names' which should be a list of names.
		
		Returns:
		  Wrapped inputs (identity standins that have additional metadata). These
		  are also are also tf.Tensor's.
	**/
	public function add_inputs(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a wrapped output argument to the hint.
		
		Args:
		  *args: The output tensor.
		  **kwargs:
		    "name" label
		    "tag" a tag to group multiple arguments that will be aggregated. I.e.
		      a string like 'cool_input'. Basically multiple inputs can be added
		      to the same hint for parallel operations that will eventually be
		      combined. An example would be static_rnn which creates multiple copies
		      of state or inputs.
		    "aggregate" aggregation strategy that is valid only for tag non None.
		      Acceptable values are OpHint.AGGREGATE_FIRST, OpHint.AGGREGATE_LAST,
		      and OpHint.AGGREGATE_STACK.
		    "index_override" The global index to use. This corresponds to the
		      argument order in the final stub that will be generated.
		Returns:
		  The wrapped output tensor.
	**/
	public function add_output(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a sequence of outputs to the function invocation.
		
		Args:
		  *args: List of outputs to be converted (should be tf.Tensor).
		  **kwargs: See
		
		Returns:
		  Wrapped outputs (identity standins that have additional metadata). These
		  are also tf.Tensor's.
	**/
	public function add_outputs(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}