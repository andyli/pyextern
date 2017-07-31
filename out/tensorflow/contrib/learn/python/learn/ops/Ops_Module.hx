/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops") extern class Ops_Module {
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
		Creates an embedding for categorical variable with given number of classes. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-01.
		Instructions for updating:
		Use `tf.contrib.layers.embed_sequence` instead.
		
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
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Provides a N dimensional version of tf.embedding_lookup. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-01.
		Instructions for updating:
		Use `tf.embedding_lookup` instead.
		
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
		Returns prediction and loss for mean squared error regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-01.
		Instructions for updating:
		Use `tf.contrib.losses.mean_squared_error` and explicit logits computation.
	**/
	static public function mean_squared_error_regressor(tensor_in:Dynamic, labels:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
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
		Returns prediction and loss for softmax classifier. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-01.
		Instructions for updating:
		Use `tf.contrib.losses.softmax_cross_entropy` and explicit logits computation.
		
		This function returns "probabilities" and a cross entropy loss. To obtain
		predictions, use `tf.argmax` on the returned probabilities.
		
		This function requires labels to be passed in one-hot encoding.
		
		Args:
		  tensor_in: Input tensor, [batch_size, feature_size], features.
		  labels: Tensor, [batch_size, n_classes], one-hot labels of the output
		    classes.
		  weights: Tensor, [batch_size, feature_size], linear transformation
		    matrix.
		  biases: Tensor, [batch_size], biases.
		  class_weight: Tensor, optional, [n_classes], weight for each class.
		    If not given, all classes are supposed to have weight one.
		  name: Operation name.
		
		Returns:
		  `tuple` of softmax predictions and loss `Tensor`s.
	**/
	static public function softmax_classifier(tensor_in:Dynamic, labels:Dynamic, weights:Dynamic, biases:Dynamic, ?class_weight:Dynamic, ?name:Dynamic):Dynamic;
}