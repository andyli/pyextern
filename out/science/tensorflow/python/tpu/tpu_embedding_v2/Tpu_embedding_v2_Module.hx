/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding_v2;
@:pythonImport("tensorflow.python.tpu.tpu_embedding_v2") extern class Tpu_embedding_v2_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _HOOK_KEY : Dynamic;
	static public var _NAME_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_key_attr(op:Dynamic, name:Dynamic):Dynamic;
	/**
		Load embedding tables to onto TPU for each table and host.
		
		Args:
		  config: A serialized TPUEmbeddingConfiguration proto.
		  hosts: A list of CPU devices, on per host.
		  variables: A dictionary of dictionaries of TPUShardedVariables. First key is
		    the table name, second key is 'parameters' or the optimizer slot name.
		  table_config: A list of tf.tpu.experimental.embedding.TableConfig objects.
	**/
	static public function _load_variables_impl(config:Dynamic, hosts:Dynamic, variables:Dynamic, table_config:Dynamic):Dynamic;
	/**
		Compute a ragged lookup followed by a reduce on axis 1.
		
		Args:
		  table: The embedding table.
		  ragged: A RaggedTensor of ids to look up.
		  weights: A RaggedTensor of weights (or None).
		  combiner: One of "mean", "sum", "sqrtn".
		
		Returns:
		  A Tensor.
	**/
	static public function _ragged_embedding_lookup_with_reduce(table:Dynamic, ragged:Dynamic, weights:Dynamic, combiner:Dynamic):Dynamic;
	/**
		Retrieve embedding tables from TPU to host memory.
		
		Args:
		  config: A serialized TPUEmbeddingConfiguration proto.
		  hosts: A list of all the host CPU devices.
		  variables: A dictionary of dictionaries of TPUShardedVariables. First key is
		    the table name, second key is 'parameters' or the optimizer slot name.
		  table_config: A list of tf.tpu.experimental.embedding.TableConfig objects.
	**/
	static public function _retrieve_variables_impl(config:Dynamic, hosts:Dynamic, variables:Dynamic, table_config:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Apply standard lookup ops with `tf.tpu.experimental.embedding` configs.
		
		This function is a utility which allows using the
		`tf.tpu.experimental.embedding` config objects with standard lookup functions.
		This can be used when exporting a model which uses
		`tf.tpu.experimental.embedding.TPUEmbedding` for serving on CPU. In particular
		`tf.tpu.experimental.embedding.TPUEmbedding` only supports lookups on TPUs and
		should not be part of your serving graph.
		
		Note that TPU specific options (such as `max_sequence_length`) in the
		configuration objects will be ignored.
		
		In the following example we take a trained model (see the documentation for
		`tf.tpu.experimental.embedding.TPUEmbedding` for the context) and create a
		saved model with a serving function that will perform the embedding lookup and
		pass the results to your model:
		
		```python
		model = model_fn(...)
		embedding = tf.tpu.experimental.embedding.TPUEmbedding(
		    feature_config=feature_config,
		    batch_size=1024,
		    optimizer=tf.tpu.experimental.embedding.SGD(0.1))
		checkpoint = tf.train.Checkpoint(model=model, embedding=embedding)
		checkpoint.restore(...)
		
		@tf.function(input_signature=[{'feature_one': tf.TensorSpec(...),
		                               'feature_two': tf.TensorSpec(...),
		                               'feature_three': tf.TensorSpec(...)}])
		def serve_tensors(embedding_featurese):
		  embedded_features = tf.tpu.experimental.embedding.serving_embedding_lookup(
		      embedding_features, None, embedding.embedding_tables,
		      feature_config)
		  return model(embedded_features)
		
		model.embedding_api = embedding
		tf.saved_model.save(model,
		                    export_dir=...,
		                    signatures={'serving_default': serve_tensors})
		
		```
		
		NOTE: Its important to assign the embedding api object to a member of your
		model as `tf.saved_model.save` only supports saving variables one `Trackable`
		object. Since the model's weights are in `model` and the embedding table are
		managed by `embedding`, we assign `embedding` to and attribute of `model` so
		that tf.saved_model.save can find the embedding variables.
		
		NOTE: The same `serve_tensors` function and `tf.saved_model.save` call will
		work directly from training.
		
		Args:
		  inputs: a nested structure of Tensors, SparseTensors or RaggedTensors.
		  weights: a nested structure of Tensors, SparseTensors or RaggedTensors or
		    None for no weights. If not None, structure must match that of inputs, but
		    entries are allowed to be None.
		  tables: a dict of mapping TableConfig objects to Variables.
		  feature_config: a nested structure of FeatureConfig objects with the same
		    structure as inputs.
		
		Returns:
		  A nested structure of Tensors with the same structure as inputs.
	**/
	static public function cpu_embedding_lookup(inputs:Dynamic, weights:Dynamic, tables:Dynamic, feature_config:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Extracts the variable creation attributes from the kwargs.
		
		Args:
		  kwargs: a dict of keyword arguments that were passed to a variable creator
		    scope.
		
		Returns:
		  A tuple of variable name, shape, dtype, initialization function.
	**/
	static public function extract_variable_info(kwargs:Dynamic):Dynamic;
	/**
		Returns a sorted list of CPU devices for the remote jobs.
		
		Args:
		  strategy: A TPUStrategy object.
		
		Returns:
		  A sort list of device strings.
	**/
	static public function get_list_of_hosts(strategy:Dynamic):Dynamic;
	/**
		Makes a sharded variable creator given a list of hosts.
		
		Args:
		  hosts: a list of tensorflow devices on which to shard the tensors.
		
		Returns:
		  A variable creator function.
	**/
	static public function make_sharded_variable_creator(hosts:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var unicode_literals : Dynamic;
}