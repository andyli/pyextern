/* This file is generated, do not edit! */
package tensorflow.python.estimator.model_fn;
@:pythonImport("tensorflow.python.estimator.model_fn") extern class Model_fn_Module {
	static public var AVERAGE_LOSS_METRIC_KEY : Dynamic;
	static public var EXPORT_TAG_MAP : Dynamic;
	static public var LOSS_METRIC_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns `x` if it is a `Tensor`, raises TypeError otherwise.
	**/
	static public function _check_is_tensor(x:Dynamic, tensor_name:Dynamic):Dynamic;
	static public function _check_is_tensor_or_operation(x:Dynamic, name:Dynamic):Dynamic;
	/**
		Validate export_outputs or create default export_outputs.
		
		Args:
		  export_outputs: Describes the output signatures to be exported to
		    `SavedModel` and used during serving. Should be a dict or None.
		  predictions:  Predictions `Tensor` or dict of `Tensor`.
		
		Returns:
		  Valid export_outputs dict
		
		Raises:
		  TypeError: if export_outputs is not a dict or its values are not
		    ExportOutput instances.
	**/
	static public function _get_export_outputs(export_outputs:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Add a default serving output to the export_outputs if not present.
		
		Args:
		  export_outputs: Describes the output signatures to be exported to
		    `SavedModel` and used during serving. Should be a dict.
		
		Returns:
		  export_outputs dict with default serving signature added if necessary
		
		Raises:
		  ValueError: if multiple export_outputs were provided without a default
		    serving key.
	**/
	static public function _maybe_add_default_serving_output(export_outputs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Util function for constructing a `ExportOutput` dict given a mode.
		
		The returned dict can be directly passed to `build_all_signature_defs` helper
		function as the `export_outputs` argument, used for generating a SignatureDef
		map.
		
		Args:
		  mode: A `ModeKeys` specifying the mode.
		  serving_export_outputs: Describes the output signatures to be exported to
		    `SavedModel` and used during serving. Should be a dict or None.
		  predictions: A dict of Tensors or single Tensor representing model
		      predictions. This argument is only used if serving_export_outputs is not
		      set.
		  loss: A dict of Tensors or single Tensor representing calculated loss.
		  metrics: A dict of (metric_value, update_op) tuples, or a single tuple.
		    metric_value must be a Tensor, and update_op must be a Tensor or Op
		
		Returns:
		  Dictionary mapping the a key to an `tf.estimator.export.ExportOutput` object
		  The key is the expected SignatureDef key for the mode.
		
		Raises:
		  ValueError: if an appropriate ExportOutput cannot be found for the mode.
	**/
	static public function export_outputs_for_mode(mode:Dynamic, ?serving_export_outputs:Dynamic, ?predictions:Dynamic, ?loss:Dynamic, ?metrics:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}