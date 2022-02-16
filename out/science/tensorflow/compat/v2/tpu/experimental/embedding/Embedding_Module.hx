/* This file is generated, do not edit! */
package tensorflow.compat.v2.tpu.experimental.embedding;
@:pythonImport("tensorflow.compat.v2.tpu.experimental.embedding") extern class Embedding_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function serving_embedding_lookup(inputs:Dynamic, weights:Dynamic, tables:Dynamic, feature_config:Dynamic):Dynamic;
}