/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.conv_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.conv_ops") extern class Conv_ops_Module {
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
		Creates 2D convolutional subgraph with bank of filters. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-15.
		Instructions for updating:
		Please use tf.contrib.layers.conv2d instead.
		
		  This is deprecated. Please use contrib.layers.convolution2d.
		
		  Uses tf.nn.conv2d under the hood.
		  Creates a filter bank:
		    [filter_shape[0], filter_shape[1], tensor_in[3], n_filters]
		  and applies it to the input tensor.
		
		  Args:
		    tensor_in: input Tensor, 4D shape:
		      [batch, in_height, in_width, in_depth].
		    n_filters: number of filters in the bank.
		    filter_shape: Shape of filters, a list of ints, 1-D of length 2.
		    strides: A list of ints, 1-D of length 4. The stride of the sliding
		      window for each dimension of input.
		    padding: A string: 'SAME' or 'VALID'. The type of padding algorthim to use.
		      See the [comment here]
		      (https://www.tensorflow.org/api_docs/python/nn.html#convolution)
		    bias: Boolean, if to add bias.
		    activation: Activation Op, optional. If provided applied on the output.
		    batch_norm: Whether to apply batch normalization.
		
		  Returns:
		    A Tensor with resulting convolution.
		  
	**/
	static public function conv2d(tensor_in:Dynamic, n_filters:Dynamic, filter_shape:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?bias:Dynamic, ?activation:Dynamic, ?batch_norm:Dynamic):Dynamic;
	/**
		Adds a 2D convolution followed by an optional batch_norm layer.
		
		`convolution2d` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved with the `inputs` to produce a
		`Tensor` of activations. If a `normalizer_fn` is provided (such as
		`batch_norm`), it is then applied. Otherwise, if `normalizer_fn` is
		None and a `biases_initializer` is provided then a `biases` variable would be
		created and added the activations. Finally, if `activation_fn` is not `None`,
		it is applied to the activations as well.
		
		Performs a'trous convolution with input stride equal to rate if rate is
		greater than one.
		
		Args:
		  inputs: a 4-D tensor  `[batch_size, height, width, channels]`.
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 `[kernel_height, kernel_width]` of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: one of `VALID` or `SAME`.
		  rate: integer. If less than or equal to 1, a standard convolution is used.
		    If greater than 1, than the a'trous convolution is applied and `stride`
		    must be set to 1.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if both 'rate' and `stride` are larger than one.
	**/
	static public function convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
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