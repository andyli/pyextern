/* This file is generated, do not edit! */
package tensorflow.contrib.ndlstm.python;
@:pythonImport("tensorflow.contrib.ndlstm.python") extern class Python_Module {
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
	static public var division : Dynamic;
	/**
		Run an LSTM bidirectionally over all the rows of each image.
		
		Args:
		  images: (num_images, height, width, depth) tensor
		  num_filters_out: output depth
		  scope: optional scope name
		
		Returns:
		  (num_images, height, width, num_filters_out) tensor, where
		  num_steps is width and new num_batches is num_image_batches * height
	**/
	static public function horizontal_lstm(images:Dynamic, num_filters_out:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Convert a batch of images into a batch of sequences.
		
		Args:
		  tensor: a (num_images, height, width, depth) tensor
		
		Returns:
		  (width, num_images*height, depth) sequence tensor
	**/
	static public function images_to_sequence(tensor:Dynamic):Dynamic;
	/**
		Implements a 1D LSTM, either forward or backward.
		
		This is a base case for multidimensional LSTM implementations, which
		tend to be used differently from sequence-to-sequence
		implementations.  For general 1D sequence to sequence
		transformations, you may want to consider another implementation
		from TF slim.
		
		Args:
		  inputs: input sequence (length, batch_size, ninput)
		  noutput: depth of output
		  scope: optional scope name
		  reverse: run LSTM in reverse
		  dynamic: use dynamic_rnn
		
		Returns:
		  Output sequence (length, batch_size, noutput)
	**/
	static public function ndlstm_base(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?reverse:Dynamic, ?_dynamic:Dynamic):Dynamic;
	/**
		Run an LSTM, either forward or backward.
		
		This is a 1D LSTM implementation using dynamic_rnn and
		the TensorFlow LSTM op.
		
		Args:
		  inputs: input sequence (length, batch_size, ninput)
		  noutput: depth of output
		  scope: optional scope name
		  reverse: run LSTM in reverse
		
		Returns:
		  Output sequence (length, batch_size, noutput)
	**/
	static public function ndlstm_base_dynamic(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?reverse:Dynamic):Dynamic;
	/**
		Run an LSTM, either forward or backward.
		
		This is a 1D LSTM implementation using unrolling and the TensorFlow
		LSTM op.
		
		Args:
		  inputs: input sequence (length, batch_size, ninput)
		  noutput: depth of output
		  scope: optional scope name
		  reverse: run LSTM in reverse
		
		Returns:
		  Output sequence (length, batch_size, noutput)
	**/
	static public function ndlstm_base_unrolled(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?reverse:Dynamic):Dynamic;
	/**
		Compute 1-hot encodings for masks.
		
		Given a label image, this computes the one hot encoding at
		each pixel.
		
		Args:
		  labels: (batch_size, width, height, 1) tensor containing labels.
		  num_classes: number of classes
		  scope: optional scope name
		
		Returns:
		  Tensor of shape (batch_size, width, height, num_classes) with
		  a 1-hot encoding.
	**/
	static public function one_hot_mask(labels:Dynamic, num_classes:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Compute 1-hot encodings for planes.
		
		Given a label, this computes a label image that contains
		1 at all pixels in the plane corresponding to the target
		class and 0 in all other planes.
		
		Args:
		  labels: (batch_size,) tensor
		  num_classes: number of classes
		  scope: optional scope name
		
		Returns:
		  Tensor of shape (batch_size, 1, 1, num_classes) with a 1-hot encoding.
	**/
	static public function one_hot_planes(labels:Dynamic, num_classes:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Reduce images to vectors by combining all pixels.
	**/
	static public function pixels_as_vector(images:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Reduce images to vectors by averaging all pixels.
	**/
	static public function pool_as_vector(images:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reduce an image to a final state by running two LSTMs.
		
		Args:
		  images: (num_images, height, width, depth) tensor
		  num_filters_out: output layer depth
		  nhidden: hidden layer depth (defaults to num_filters_out)
		  scope: optional scope name
		
		Returns:
		  A (num_images, num_filters_out) batch.
	**/
	static public function reduce_to_final(images:Dynamic, num_filters_out:Dynamic, ?nhidden:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Reduce an image to a sequence by scanning an LSTM vertically.
		
		Args:
		  images: (num_images, height, width, depth) tensor
		  num_filters_out: output layer depth
		  scope: optional scope name
		
		Returns:
		  A (width, num_images, num_filters_out) sequence.
	**/
	static public function reduce_to_sequence(images:Dynamic, num_filters_out:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Run bidirectional LSTMs first horizontally then vertically.
		
		Args:
		  images: (num_images, height, width, depth) tensor
		  num_filters_out: output layer depth
		  nhidden: hidden layer depth
		  scope: optional scope name
		
		Returns:
		  (num_images, height, width, num_filters_out) tensor
	**/
	static public function separable_lstm(images:Dynamic, num_filters_out:Dynamic, ?nhidden:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Run a softmax layer over all the time steps of an input sequence.
		
		Args:
		  inputs: (length, batch_size, depth) tensor
		  noutput: output depth
		  scope: optional scope name
		  name: optional name for output tensor
		  linear_name: name for linear (pre-softmax) output
		
		Returns:
		  A tensor of size (length, batch_size, noutput).
	**/
	static public function sequence_softmax(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?name:Dynamic, ?linear_name:Dynamic):Dynamic;
	/**
		Run an LSTM across all steps and returns only the final state.
		
		Args:
		  inputs: (length, batch_size, depth) tensor
		  noutput: size of output vector
		  scope: optional scope name
		  name: optional name for output tensor
		  reverse: run in reverse
		
		Returns:
		  Batch of size (batch_size, noutput).
	**/
	static public function sequence_to_final(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?name:Dynamic, ?reverse:Dynamic):Dynamic;
	/**
		Convert a batch of sequences into a batch of images.
		
		Args:
		  tensor: (num_steps, num_batches, depth) sequence tensor
		  num_image_batches: the number of image batches
		
		Returns:
		  (num_images, height, width, depth) tensor
	**/
	static public function sequence_to_images(tensor:Dynamic, num_image_batches:Dynamic):Dynamic;
}