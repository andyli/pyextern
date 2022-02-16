/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding_gradient;
@:pythonImport("tensorflow.python.tpu.tpu_embedding_gradient") extern class Tpu_embedding_gradient_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create dummy embedding table variables.
		
		The sole purpose of these dummy variables are to trigger gradient
		calculation wrt them so that the gradients wrt activation can be captured
		and later sent to TPU embedding.
		
		Args:
		  tpu_embedding: TPUEmbedding, dummy table variables will be created for use
		    with tpu_embedding.
		
		Returns:
		  A tuple of dummy variables and their initializer.
		
		Raises:
		  RuntimeError: if collection to store gradients already exists and is not
		  empty.
	**/
	static public function create_dummy_table_variables(tpu_embedding:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute gradients to send to TPU embedding.
		
		Args:
		  optimizer: a subclass of optimizer.Optimizer, usually CrossShardOptimizer.
		    Used to call compute_gradients().
		  loss: a Tensor to call optimizer.compute_gradients() on.
		  activations: an OrderedDict mapping feature_name to Tensors of activations.
		
		Returns:
		  An OrderedDict mapping from feature name Strings to Tensors of gradients of
		    the loss wrt the activations of the features.
	**/
	static public function get_gradients_through_compute_gradients(optimizer:Dynamic, loss:Dynamic, activations:Dynamic):Dynamic;
	/**
		Get gradients wrt the activations of each feature.
		
		Args:
		  tpu_embedding: TPUEmbedding, create dummy table variable to be used with
		    tpu_embedding.
		
		Returns:
		  An OrderedDict mapping feature name to gradient.
		
		Raises:
		  ValueError: if some gradients are not defined.
	**/
	static public function get_gradients_through_dummy_table_variables(tpu_embedding:Dynamic):Dynamic;
	/**
		Have activations depend on dummy table variables for gradient intercept.
		
		Args:
		  tpu_embedding: TPUEmbedding, activations and dummy_table_variables are from
		    tpu_embedding.
		  activations: An OrderedDict of feature name String to activation tensors.
		  dummy_table_variables: An OrderedDict of table name String to dummy table
		    variables.
		
		Returns:
		  An OrderedDict of feature name String to activation tensors, which can be
		    used just as the activations input.
	**/
	static public function hook_dummy_table_variables_to_activations(tpu_embedding:Dynamic, activations:Dynamic, dummy_table_variables:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}