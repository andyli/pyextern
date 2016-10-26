/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops") extern class Ops_Module {
	static public var DROPOUTS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
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
		Creates an embedding for categorical variable with given number of classes.
		
		Args:
		  tensor_in: Input tensor with class identifier (can be batch or
		    N-dimensional).
		  n_classes: Number of classes.
		  embedding_size: Size of embedding vector to represent each class.
		  name: Name of this categorical variable.
		Returns:
		  Tensor of input shape, with additional dimension for embedding.
		
		Example:
		  Calling categorical_variable([1, 2], 5, 10, "my_cat"), will return 2 x 10
		  tensor, where each row is representation of the class.
	**/
	static public function categorical_variable(tensor_in:Dynamic, n_classes:Dynamic, embedding_size:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns a dropout op applied to the input.
		
		With probability `keep_prob`, outputs the input element scaled up by
		`1 / keep_prob`, otherwise outputs `0`.  The scaling is so that the expected
		sum is unchanged.
		
		Args:
		  inputs: the tensor to pass to the nn.dropout op.
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  is_training: A bool `Tensor` indicating whether or not the model
		    is in training mode. If so, dropout is applied and values scaled.
		    Otherwise, inputs is returned.
		  outputs_collections: collection to add the outputs.
		  scope: Optional scope for op_scope.
		
		Returns:
		  a tensor representing the output of the operation.
	**/
	static public function contrib_dropout(inputs:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?is_training:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
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
	/**
		Creates fully connected deep neural network subgraph. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-01.
		Instructions for updating:
		Please use tf.contrib.layers.stack instead.
		
		  This is deprecated. Please use contrib.layers.dnn instead.
		
		  Args:
		    tensor_in: tensor or placeholder for input features.
		    hidden_units: list of counts of hidden units in each layer.
		    activation: activation function between layers. Can be None.
		    dropout: if not None, will add a dropout layer with given probability.
		
		  Returns:
		    A tensor which would be a deep neural network.
		  
	**/
	static public function dnn(tensor_in:Dynamic, hidden_units:Dynamic, ?activation:Dynamic, ?dropout:Dynamic):Dynamic;
	/**
		Creates fully connected autoencoder subgraph.
		
		Args:
		  tensor_in: tensor or placeholder for input features.
		  hidden_units: list of counts of hidden units in each layer.
		  activation: activation function used to map inner latent layer onto
		              reconstruction layer.
		  add_noise: a function that adds noise to tensor_in,
		         e.g. def add_noise(x):
		                  return(x + np.random.normal(0, 0.1, (len(x), len(x[0]))))
		  dropout: if not None, will add a dropout layer with given
		           probability.
		  scope: the variable scope for this op.
		
		Returns:
		  Tensors for encoder and decoder.
	**/
	static public function dnn_autoencoder(tensor_in:Dynamic, hidden_units:Dynamic, ?activation:Dynamic, ?add_noise:Dynamic, ?dropout:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds dropout node and stores probability tensor into graph collection. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-15.
		Instructions for updating:
		Please use tf.contrib.layers.dropout instead.
		
		  This is deprecated. Please use contrib.layers.dropout instead.
		
		  Args:
		    tensor_in: Input tensor.
		    prob: Float or Tensor.
		    name: Operation name.
		
		  Returns:
		    Tensor of the same shape of `tensor_in`.
		
		  Raises:
		    ValueError: If `keep_prob` is not in `(0, 1]`.
		  
	**/
	static public function dropout(tensor_in:Dynamic, prob:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Provides a N dimensional version of tf.embedding_lookup.
		
		Ids are flattened to a 1d tensor before being passed to embedding_lookup
		then, they are unflattend to match the original ids shape plus an extra
		leading dimension of the size of the embeddings.
		
		Args:
		  params: List of tensors of size D0 x D1 x ... x Dn-2 x Dn-1.
		  ids: N-dimensional tensor of B0 x B1 x .. x Bn-2 x Bn-1.
		    Must contain indexes into params.
		  name: Optional name for the op.
		
		Returns:
		  A tensor of size B0 x B1 x .. x Bn-2 x Bn-1 x D1 x ... x Dn-2 x Dn-1
		  containing the values from the params tensor(s) for indecies in ids.
		
		Raises:
		  ValueError: if some parameters are invalid.
	**/
	static public function embedding_lookup(params:Dynamic, ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Expands inputs on given dimension and then concatenates them. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-15.
		Instructions for updating:
		Please use tf.pack instead.
		
		  Args:
		    dim: Dimension to expand and concatenate on.
		    inputs: List of tensors of the same shape [N1, ... Nx].
		
		  Returns:
		    A tensor of shape [N1, .. Ndim, ... Nx]
		  
	**/
	static public function expand_concat(dim:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Returns prediction and loss for mean squared error regression.
	**/
	static public function mean_squared_error_regressor(tensor_in:Dynamic, labels:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Encodes indices from given tensor as one-hot tensor.
		
		TODO(ilblackdragon): Ideally implementation should be
		part of TensorFlow with Eigen-native operation.
		
		Args:
		  tensor_in: Input tensor of shape [N1, N2].
		  num_classes: Number of classes to expand index into.
		  on_value: Tensor or float, value to fill-in given index.
		  off_value: Tensor or float, value to fill-in everything else.
		Returns:
		  Tensor of shape [N1, N2, num_classes] with 1.0 for each id in original
		  tensor.
	**/
	static public function one_hot_matrix(tensor_in:Dynamic, num_classes:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		RNN Decoder that creates training and sampling sub-graphs.
		
		Args:
		  decoder_inputs: Inputs for decoder, list of tensors.
		    This is used only in training sub-graph.
		  initial_state: Initial state for the decoder.
		  cell: RNN cell to use for decoder.
		  scope: Scope to use, if None new will be produced.
		
		Returns:
		  List of tensors for outputs and states for training and sampling sub-graphs.
	**/
	static public function rnn_decoder(decoder_inputs:Dynamic, initial_state:Dynamic, cell:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		RNN Sequence to Sequence model.
		
		Args:
		  encoder_inputs: List of tensors, inputs for encoder.
		  decoder_inputs: List of tensors, inputs for decoder.
		  encoder_cell: RNN cell to use for encoder.
		  decoder_cell: RNN cell to use for decoder, if None encoder_cell is used.
		  dtype: Type to initialize encoder state with.
		  scope: Scope to use, if None new will be produced.
		
		Returns:
		  List of tensors for outputs and states for trianing and sampling sub-graphs.
	**/
	static public function rnn_seq2seq(encoder_inputs:Dynamic, decoder_inputs:Dynamic, encoder_cell:Dynamic, ?decoder_cell:Dynamic, ?dtype:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Processes inputs for Sequence to Sequence models.
		
		Args:
		  x: Input Tensor [batch_size, input_length, embed_dim].
		  y: Output Tensor [batch_size, output_length, embed_dim].
		  input_length: length of input x.
		  output_length: length of output y.
		  sentinel: optional first input to decoder and final output expected.
		    If sentinel is not provided, zeros are used. Due to fact that y is not
		    available in sampling time, shape of sentinel will be inferred from x.
		  name: Operation name.
		
		Returns:
		  Encoder input from x, and decoder inputs and outputs from y.
	**/
	static public function seq2seq_inputs(x:Dynamic, y:Dynamic, input_length:Dynamic, output_length:Dynamic, ?sentinel:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns predictions and loss for sequence of predictions.
		
		Args:
		  decoding: List of Tensors with predictions.
		  labels: List of Tensors with labels.
		  sampling_decoding: Optional, List of Tensor with predictions to be used
		    in sampling. E.g. they shouldn't have dependncy on outputs.
		    If not provided, decoding is used.
		  name: Operation name.
		
		Returns:
		  Predictions and losses tensors.
	**/
	static public function sequence_classifier(decoding:Dynamic, labels:Dynamic, ?sampling_decoding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns prediction and loss for softmax classifier.
		
		Args:
		  tensor_in: Input tensor, [batch_size, feature_size], features.
		  labels: Tensor, [batch_size, n_classes], labels of the output classes.
		  weights: Tensor, [batch_size, feature_size], linear transformation
		    matrix.
		  biases: Tensor, [batch_size], biases.
		  class_weight: Tensor, optional, [n_classes], weight for each class.
		    If not given, all classes are supposed to have weight one.
		  name: Operation name.
		
		Returns:
		  Prediction and loss tensors.
	**/
	static public function softmax_classifier(tensor_in:Dynamic, labels:Dynamic, weights:Dynamic, biases:Dynamic, ?class_weight:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits input on given dimension and then squeezes that dimension. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-01.
		Instructions for updating:
		Please use tf.unpack instead.
		
		  Args:
		    dim: Dimension to split and squeeze on.
		    num_split: integer, the number of ways to split.
		    tensor_in: Input tensor of shape [N1, N2, .. Ndim, .. Nx].
		
		  Returns:
		    List of tensors [N1, N2, .. Ndim-1, Ndim+1, .. Nx].
		  
	**/
	static public function split_squeeze(dim:Dynamic, num_split:Dynamic, tensor_in:Dynamic):Dynamic;
}