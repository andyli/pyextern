/* This file is generated, do not edit! */
package tensorflow.python.ops.parsing_config;
@:pythonImport("tensorflow.python.ops.parsing_config") extern class Parsing_config_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a batched ragged partition tensor to a batched ragged tensor.
		
		Args:
		  rt: A RaggedTensor with shape [batch_size, ...].
		  partition: The partition configuration object.  Specifies the key that
		    should be used to look up the partition tensor (unless partition is a
		    RaggedFeature.UniformRowLength, in which case there is no partition
		    tensor).  The specified tensor must have shape [batch_size, ...].
		  tensor_dict: The dictionary mapping keys to tensors.
		  feature_key: The name of the feature being parsed (for error messages).
		  validate: Whether to validate that the values form a valid RaggedTensor.
		  outer_splits: If not None, then we have two batch dimensions, and this
		    is the row-splits for the collapsed batch dimension.  Every partition
		    tensor must have an outer row_splits that matches this value.
		
		Returns:
		  A new RaggedTensor where each batch item `rt[i]` has been partitioned
		  using the `partition_t[i]`.
	**/
	static public function _add_batched_ragged_partition(rt:Dynamic, partition:Dynamic, tensor_dict:Dynamic, feature_key:Dynamic, validate:Dynamic, ?outer_splits:Dynamic):Dynamic;
	/**
		Creates a RaggedTensor from a values tensor and a partition tensor.
		
		Args:
		  values: The values tensor for the new RaggedTensor.
		  partition: The partition configuration object.  Specifies the key that
		    should be used to look up the partition tensor (unless partition is a
		    RaggedFeature.UniformRowLength, in which case there is no partition
		    tensor).
		  tensor_dict: The dictionary mapping keys to tensors.
		  row_splits_dtype: The dtype for the partition tensor.
		  validate: Whether to validate that the values form a valid RaggedTensor.
		
		Returns:
		  A new RaggedTensor formed from the values and partition tensors.
	**/
	static public function _add_ragged_partition(values:Dynamic, partition:Dynamic, tensor_dict:Dynamic, row_splits_dtype:Dynamic, validate:Dynamic):Dynamic;
	/**
		Builds RaggedTensors from the outputs of a parse op.
	**/
	static public function _build_ragged_tensors(serialized_shape:Dynamic, ragged_values:Dynamic, ragged_row_splits:Dynamic, ?ragged_inner_splits:Dynamic):Dynamic;
	/**
		Creates tensors for SparseFeatures and RaggedFeatures.
		
		Constructs new dict based on `tensor_dict`.
		
		For each key in `features` whose value is a `SparseFeature`:
		
		  * Looks up that SparseFeature's value_key and index_keys in tensor_dict.
		  * Uses those tensors to construct a single SparseTensor.
		  * Stores that SparseTensor in the output dict under the same key.
		
		For each key in `features` whose value is a `RaggedFeature`:
		
		  * Looks up that RaggedFeature's value_key and partition keys in tensor_dict.
		  * Uses those tensors to construct a single RaggedTensor.
		  * Stores that RaggedTensor in the output dict under the same key.
		
		For any other key in `features`:
		
		  * Copies that key and its value from tensor_dict to the output dictionary.
		
		Args:
		  features: A `dict` mapping feature keys to `SparseFeature` or
		    `RaggedFeature` values.  Values of other types will be ignored.
		  tensor_dict: A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		    `RaggedTensor` values.  Expected to contain keys of the `SparseFeature`s'
		    `index_key`s and `value_key`s and mapping them to `SparseTensor`s.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		  `RaggedTensor` values. Similar to `tensor_dict` except each `SparseFeature`
		  in `features` results in a single `SparseTensor`; and each `RaggedFeature`
		  in `features` results in a single `RaggedTensor`.
	**/
	static public function _construct_tensors_for_composite_features(features:Dynamic, tensor_dict:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}