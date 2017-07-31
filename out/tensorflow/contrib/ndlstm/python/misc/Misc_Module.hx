/* This file is generated, do not edit! */
package tensorflow.contrib.ndlstm.python.misc;
@:pythonImport("tensorflow.contrib.ndlstm.python.misc") extern class Misc_Module {
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
}