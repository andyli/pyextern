/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.batch_norm_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.batch_norm_ops") extern class Batch_norm_ops_Module {
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
		Adds a Batch Normalization layer from http://arxiv.org/abs/1502.03167.
		
		  "Batch Normalization: Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift"
		
		  Sergey Ioffe, Christian Szegedy
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Args:
		  inputs: a tensor of size `[batch_size, height, width, channels]`
		          or `[batch_size, channels]`.
		  decay: decay for the moving average.
		  center: If True, subtract `beta`. If False, `beta` is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  epsilon: small float added to variance to avoid dividing by zero.
		  activation_fn: Optional activation function.
		  updates_collections: collections to collect the update ops for computation.
		    If None, a control dependency would be added to make sure the updates are
		    computed.
		  is_training: whether or not the layer is in training mode. In training mode
		    it would accumulate the statistics of the moments into `moving_mean` and
		    `moving_variance` using an exponential moving average with the given
		    `decay`. When it is not in training mode then it would use the values of
		    the `moving_mean` and the `moving_variance`.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional collections for the variables.
		  outputs_collections: collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: if rank or last dimension of `inputs` is undefined.
	**/
	static public function batch_norm(inputs:Dynamic, ?decay:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?updates_collections:Dynamic, ?is_training:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Batch normalization. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-15.
		Instructions for updating:
		Please use tf.contrib.layers.batch_norm instead.
		
		  Instead, please use contrib.layers.batch_norm. You can get is_training
		  via `tf.python.framework.ops.get_collection("IS_TRAINING")`.
		
		  Args:
		    tensor_in: input `Tensor`, 4D shape: [batch, in_height, in_width, in_depth].
		    epsilon : A float number to avoid being divided by 0.
		    convnet: Whether this is for convolutional net use (ignored)
		    decay: Decay rate for exponential moving average.
		    scale_after_normalization: Whether to scale after normalization.
		
		  Returns:
		    A batch-normalized `Tensor`.
		  
	**/
	static public function batch_normalize(tensor_in:Dynamic, ?epsilon:Dynamic, ?convnet:Dynamic, ?decay:Dynamic, ?scale_after_normalization:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String. The date the function is scheduled to be removed. Must be
		    ISO 8601 (YYYY-MM-DD).
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not in ISO 8601 format, or instructions are empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}