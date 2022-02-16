/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.save_impl;
@:pythonImport("tensorflow.python.keras.saving.saved_model.save_impl") extern class Save_impl_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Appends activity regularizer loss to losses returned by the wrapped fn.
	**/
	static public function _append_activity_regularizer_loss(layer:Dynamic, call_fn_with_losses:Dynamic, activity_regularizer_fn:Dynamic):Dynamic;
	static public function _create_call_fn_decorator(layer:Dynamic, wrapped_call:Dynamic):Dynamic;
	/**
		Returns a function that returns only call function outputs.
	**/
	static public function _extract_outputs_from_fn(layer:Dynamic, call_and_return_conditional_losses:Dynamic):Dynamic;
	static public function _filtered_inputs(inputs:Dynamic):Dynamic;
	static public function _get_layer_call_method(layer:Dynamic):Dynamic;
	/**
		Replaces functions in the children layers with wrapped tf.functions.
		
		This step allows functions from parent layers to reference the wrapped
		functions from their children layers instead of retracing the ops.
		
		This function also resets all losses stored in the layer. These are stored in
		the returned dictionary. Use `_restore_child_layer_functions` to restore
		the original attributes.
		
		Args:
		  layer: Keras Layer object.
		  serialization_cache: Dictionary shared between all objects during
		    serialization.
		
		Returns:
		  Dictionary mapping layer objects -> original functions and losses:
		    { Child layer 1: {
		        'losses': Original losses,
		        'call': Original call function
		        '_activity_regularizer': Original activity regularizer},
		      Child layer 2: ...
		    }
	**/
	static public function _replace_child_layer_functions(layer:Dynamic, serialization_cache:Dynamic):Dynamic;
	/**
		Resets losses of layer and its sublayers, and returns original losses.
	**/
	static public function _reset_layer_losses(parent_layer:Dynamic):Dynamic;
	/**
		Restores attributes replaced with `_replace_child_layer_functions`.
	**/
	static public function _restore_child_layer_functions(original_fns:Dynamic):Dynamic;
	static public function _restore_layer_losses(losses_dict:Dynamic):Dynamic;
	static public var _thread_local_data : Dynamic;
	/**
		Wraps the activity regularizer.
	**/
	static public function _wrap_activity_regularizer(layer:Dynamic):Dynamic;
	/**
		Wraps call function that returns a tuple of (outputs, losses).
		
		The losses returned are conditional on the inputs passed to the call function.
		Unconditional losses (e.g. weight regularizeration) are wrapped separately.
		
		Args:
		  layer: a Keras layer object
		
		Returns:
		  python call function that returns outputs and conditional losses -- excludes
		  activity regularizer
	**/
	static public function _wrap_call_and_conditional_losses(layer:Dynamic):Dynamic;
	/**
		Wraps callable/unconditional loss, returning a serializable function.
	**/
	static public function _wrap_unconditional_loss(loss_fn:Dynamic, index:Dynamic):Dynamic;
	static public function add_trace_to_queue(fn:Dynamic, args:Dynamic, kwargs:Dynamic, ?training:Dynamic):Dynamic;
	static public function default_save_signature(layer:Dynamic):Dynamic;
	/**
		Ensures layer losses are kept the same, and runs method in call context.
	**/
	static public function layer_call_wrapper(call_collection:Dynamic, method:Dynamic, name:Dynamic):Dynamic;
	/**
		Skip serializing extra objects and functions if layer inputs aren't set.
	**/
	static public function should_skip_serialization(layer:Dynamic):Dynamic;
	/**
		Whether to add extra traces to the queue.
	**/
	static public function tracing_enabled():Dynamic;
	/**
		Enables tracing scope.
	**/
	static public function tracing_scope():Dynamic;
	/**
		Returns dict of wrapped layer call function and losses in tf.functions.
		
		Args:
		  layer: Keras Layer object.
		  serialization_cache: Dictionary shared between all objects during
		    serialization.
		
		Returns:
		  A dictionary containing all keras tf.functions to serialize. See
		  LayerAttributes and ModelAttributes for the list of all attributes.
	**/
	static public function wrap_layer_functions(layer:Dynamic, serialization_cache:Dynamic):Dynamic;
	/**
		Returns extra trackable objects to attach to the serialized layer.
		
		Args:
		  layer: Keras Layer object.
		  serialization_cache: Dictionary shared between all objects during
		    serialization.
		
		Returns:
		  A dictionary containing all checkpointable objects from a
		  SerializedAttributes object. See LayerAttributes and ModelAttributes for
		  entire list of objects
	**/
	static public function wrap_layer_objects(layer:Dynamic, serialization_cache:Dynamic):Dynamic;
}