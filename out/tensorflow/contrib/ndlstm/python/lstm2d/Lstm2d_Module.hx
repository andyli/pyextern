/* This file is generated, do not edit! */
package tensorflow.contrib.ndlstm.python.lstm2d;
@:pythonImport("tensorflow.contrib.ndlstm.python.lstm2d") extern class Lstm2d_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get the shape of a tensor as an int list.
	**/
	static public function _shape(tensor:Dynamic):Dynamic;
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
		Convert a batch of sequences into a batch of images.
		
		Args:
		  tensor: (num_steps, num_batches, depth) sequence tensor
		  num_image_batches: the number of image batches
		
		Returns:
		  (num_images, height, width, depth) tensor
	**/
	static public function sequence_to_images(tensor:Dynamic, num_image_batches:Dynamic):Dynamic;
}