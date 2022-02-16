/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_utils;
@:pythonImport("tensorflow.python.keras.engine.training_utils") extern class Training_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Retrieves input shape and input dtype of layer if applicable.
		
		Args:
		  layer: Layer (or model) instance.
		
		Returns:
		  Tuple (input_shape, input_dtype). Both could be None if the layer
		    does not have a defined input shape.
		
		Raises:
		  ValueError: in case an empty Sequential or Functional model is passed.
	**/
	static public function get_input_shape_and_dtype(layer:Dynamic):Dynamic;
	/**
		Gets the static batch size of a Layer.
		
		Args:
		  layer: a `Layer` instance.
		
		Returns:
		  The static batch size of a Layer.
	**/
	static public function get_static_batch_size(layer:Dynamic):Dynamic;
	/**
		Adds 1.0 as sample weights for the outputs for which there is no weight.
		
		Args:
		  outputs: List of model outputs.
		  sample_weights: List of sample weight inputs.
		  sample_weight_modes: List of sample weight modes or None.
		  check_all_flat: Ensure that inputs are not nested structures. This is not
		    a free check, so we may not want to run it eagerly every iteration.
		
		Returns:
		  Tuple of sample weights, one sample weight for every output, and booleans
		  describing the raw sample weights.
	**/
	static public function handle_partial_sample_weights(outputs:Dynamic, sample_weights:Dynamic, sample_weight_modes:Dynamic, ?check_all_flat:Dynamic):Dynamic;
	/**
		Datasets will stack the list of tensor, so switch them to tuples.
	**/
	static public function list_to_tuple(maybe_list:Dynamic):Dynamic;
	/**
		Slices batches out of provided arrays (workaround for eager tensors).
		
		Unfortunately eager tensors don't have the same slicing behavior as
		Numpy arrays (they follow the same slicing behavior as symbolic TF tensors),
		hence we cannot use `generic_utils.slice_arrays` directly
		and we have to implement this workaround based on `concat`. This has a
		performance cost.
		
		Args:
		  arrays: Single array or list of arrays.
		  indices: List of indices in the array that should be included in the output
		    batch.
		  contiguous: Boolean flag indicating whether the indices are contiguous.
		
		Returns:
		  Slice of data (either single array or list of arrays).
	**/
	static public function slice_arrays(arrays:Dynamic, indices:Dynamic, ?contiguous:Dynamic):Dynamic;
}