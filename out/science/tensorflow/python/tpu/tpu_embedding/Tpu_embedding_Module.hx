/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.python.tpu.tpu_embedding") extern class Tpu_embedding_Module {
	static public var INFERENCE : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TRAINING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create a per feature list of combiners, ordered by table.
	**/
	static public function _create_combiners(table_to_config_dict:Dynamic, table_to_features_dict:Dynamic):Dynamic;
	/**
		Create device_fn() to use with _create_partitioned_variables().
	**/
	static public function _create_device_fn(hosts:Dynamic):Dynamic;
	/**
		Create an OrderedDict from Dict.
	**/
	static public function _create_ordered_dict(d:Dynamic):Dynamic;
	/**
		Creates PartitionedVariables based on `num_hosts` for `table`.
	**/
	static public function _create_partitioned_variables(name:Dynamic, num_hosts:Dynamic, vocabulary_size:Dynamic, embedding_dimension:Dynamic, initializer:Dynamic, ?collections:Dynamic):Dynamic;
	/**
		Create mapping from table to a list of its features.
	**/
	static public function _create_table_to_features_and_num_features_dicts(feature_to_config_dict:Dynamic):Dynamic;
	/**
		Gets the optimization handler given the parameter type.
	**/
	static public function _get_optimization_handler(optimization_parameters:Dynamic):Dynamic;
	static public function _validate_batch_size(batch_size:Dynamic, num_cores:Dynamic):Dynamic;
	/**
		Validate `feature_to_config_dict`.
	**/
	static public function _validate_feature_to_config_dict(table_to_config_dict:Dynamic, feature_to_config_dict:Dynamic):Dynamic;
	/**
		Validate global optimization_parameters and per table optimizers.
		
		If global optimizer is `None`, all table optimizers should be non `None`.
		
		Args:
		    optimization_parameters: global optimizer provided in `TPUEmbedding`
		      constructor.
		    table_to_config_dict: A dictionary mapping from string of table name to
		      `TableConfig`.
	**/
	static public function _validate_optimization_parameters(optimization_parameters:Dynamic, table_to_config_dict:Dynamic):Dynamic;
	/**
		Validate `table_to_config_dict`.
	**/
	static public function _validate_table_to_config_dict(table_to_config_dict:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Convenient function for generate_enqueue_ops().
		
		Args:
		  rg_tensors_list: a list of dictionary mapping from string of feature names
		    to RaggedTensor. Each dictionary is for one TPU core. Dictionaries for the
		    same host should be contiguous on the list.
		
		Returns:
		  enqueue_datas_list: a list of dictionary mapping from string
		    of feature names to RaggedEnqueueData. Each dictionary is for one
		    TPU core. Dictionaries for the same host should be contiguous
		    on the list.
	**/
	static public function get_enqueue_datas_list_from_ragged_tensors_list(rg_tensors_list:Dynamic):Dynamic;
	/**
		Convenient function for generate_enqueue_ops().
		
		Args:
		  sp_tensors_list: a list of dictionary mapping from string of feature names
		    to SparseTensor. Each dictionary is for one TPU core. Dictionaries for the
		    same host should be contiguous on the list.
		
		Returns:
		  enqueue_datas_list: a list of dictionary mapping from string
		    of feature names to EnqueueData. Each dictionary is for one
		    TPU core. Dictionaries for the same host should be contiguous
		    on the list.
	**/
	static public function get_enqueue_datas_list_from_sparse_tensors_list(sp_tensors_list:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}