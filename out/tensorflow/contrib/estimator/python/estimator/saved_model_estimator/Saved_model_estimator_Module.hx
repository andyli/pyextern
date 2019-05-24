/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.saved_model_estimator;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.saved_model_estimator") extern class Saved_model_estimator_Module {
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validate that tensor has the same properties as the TensorInfo proto.
		
		Args:
		  tensor: a `Tensor` object.
		  tensor_info: a `TensorInfo` proto.
		  name: Name of the input (to identify Tensor if an error is raised).
		
		Raises:
		  ValueError: If the tensor shape or dtype don't match the TensorInfo
	**/
	static public function _check_same_dtype_and_shape(tensor:Dynamic, tensor_info:Dynamic, name:Dynamic):Dynamic;
	/**
		Clear collections that are expected empty when exporting a SavedModel.
		
		The SavedModel builder uses these collections to track ops necessary to
		restore the graph state. These collections are expected to be empty before
		MetaGraphs are added to the builder.
	**/
	static public function _clear_saved_model_collections():Dynamic;
	/**
		Return a eval metric dict extracted from the output_dict.
		
		Eval metrics consist of a value tensor and an update op. Both must be in the
		passed-in tensor dictionary for an eval metric to be added to the returned
		dictionary.
		
		Args:
		  output_dict: a dict that maps strings to tensors.
		
		Returns:
		  dict mapping strings to (value, update_op) tuples.
	**/
	static public function _extract_eval_metrics(output_dict:Dynamic):Dynamic;
	/**
		Return dict mapping an input tensor name to a feature or label tensor.
		
		Args:
		  signature_def: SignatureDef loaded from SavedModel
		  features: A `Tensor`, `SparseTensor`, or dict of string to `Tensor` or
		    `SparseTensor`, specifying the features to be passed to the model.
		  labels: A `Tensor`, `SparseTensor`, or dict of string to `Tensor` or
		    `SparseTensor`, specifying the labels to be passed to the model. May be
		    `None`.
		
		Returns:
		  dict mapping string names of inputs to features or labels tensors
		
		Raises:
		  ValueError: if SignatureDef inputs are not completely mapped by the input
		    features and labels.
	**/
	static public function _generate_input_map(signature_def:Dynamic, features:Dynamic, labels:Dynamic):Dynamic;
	/**
		Extract values from SignatureDef output dictionary.
		
		Args:
		  mode: One of the modes enumerated in `tf.estimator.ModeKeys`.
		  output_dict: dict of string SignatureDef keys to `Tensor`.
		  method_name: Method name of the SignatureDef as a string.
		
		Returns:
		  Tuple of (
		    loss: `Tensor` object,
		    predictions: dictionary mapping string keys to `Tensor` objects,
		    metrics: dictionary mapping string keys to a tuple of two `Tensor` objects
		  )
		
		Raises:
		  RuntimeError: raised if SignatureDef has an invalid method name for the mode
	**/
	static public function _validate_and_extract_outputs(mode:Dynamic, output_dict:Dynamic, method_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}