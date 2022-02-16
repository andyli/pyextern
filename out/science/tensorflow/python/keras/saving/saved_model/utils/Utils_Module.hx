/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.utils;
@:pythonImport("tensorflow.python.keras.saving.saved_model.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _save_options_context : Dynamic;
	static public function get_training_arg(index:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns the index of 'training' in the layer call function arguments.
		
		Args:
		  call_fn: Call function.
		
		Returns:
		  - n: index of 'training' in the call function arguments.
		  - -1: if 'training' is not found in the arguments, but layer.call accepts
		        variable keyword arguments
		  - None: if layer doesn't expect a training argument.
	**/
	static public function get_training_arg_index(call_fn:Dynamic):Dynamic;
	static public function keras_option_scope(save_traces:Dynamic):Dynamic;
	/**
		Returns whether this layer or any of its children uses the training arg.
	**/
	static public function layer_uses_training_bool(layer:Dynamic):Dynamic;
	static public function list_all_layers(obj:Dynamic):Dynamic;
	static public function list_all_layers_and_sublayers(obj:Dynamic):Dynamic;
	/**
		Decorate call and optionally adds training argument.
		
		If a layer expects a training argument, this function ensures that 'training'
		is present in the layer args or kwonly args, with the default training value.
		
		Args:
		  original_call: Original call function.
		  wrapped_call: Wrapped call function.
		  expects_training_arg: Whether to include 'training' argument.
		  default_training_value: Default value of the training kwarg to include in
		    the arg spec. If `None`, the default is `K.learning_phase()`.
		
		Returns:
		  Tuple of (
		    function that calls `wrapped_call` and sets the training arg,
		    Argspec of returned function or `None` if the argspec is unchanged)
	**/
	static public function maybe_add_training_arg(original_call:Dynamic, wrapped_call:Dynamic, expects_training_arg:Dynamic, default_training_value:Dynamic):Dynamic;
	/**
		A context that disables automatic dependency tracking when assigning attrs.
		
		Objects that inherit from Autotrackable automatically creates dependencies
		to trackable objects through attribute assignments, and wraps data structures
		(lists or dicts) with trackable classes. This scope may be used to temporarily
		disable this behavior. This works similar to the decorator
		`no_automatic_dependency_tracking`.
		
		Example usage:
		```
		model = tf.keras.Model()
		model.arr1 = []  # Creates a ListWrapper object
		with no_automatic_dependency_tracking_scope(model):
		  model.arr2 = []  # Creates a regular, untracked python list
		```
		
		Args:
		  obj: A trackable object.
		
		Yields:
		  a scope in which the object doesn't track dependencies.
	**/
	static public function no_automatic_dependency_tracking_scope(obj:Dynamic):Dynamic;
	static public function remove_training_arg(index:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function set_training_arg(training:Dynamic, index:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Whether to trace layer functions-can be disabled in the save_traces arg.
	**/
	static public function should_save_traces():Dynamic;
	/**
		Creates fn that adds the losses returned by call_fn & returns the outputs.
		
		Args:
		  layer: A Keras layer object
		  call_fn: tf.function that takes layer inputs (and possibly a training arg),
		    and returns a tuple of (outputs, list of losses).
		  default_training_value: Default value of the training kwarg. If `None`, the
		    default is `K.learning_phase()`.
		  return_method: Whether to return a method bound to the layer.
		
		Returns:
		  function that calls call_fn and returns the outputs. Losses returned by
		  call_fn are added to the layer losses.
	**/
	static public function use_wrapped_call(layer:Dynamic, call_fn:Dynamic, ?default_training_value:Dynamic, ?return_method:Dynamic):Dynamic;
}