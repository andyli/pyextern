/* This file is generated, do not edit! */
package tensorflow.python.ops.losses.util;
@:pythonImport("tensorflow.python.ops.losses.util") extern class Util_Module {
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
		Adds a externally defined loss to the collection of losses.
		
		Args:
		  loss: A loss `Tensor`.
		  loss_collection: Optional collection to add the loss to.
	**/
	static public function add_loss(loss:Dynamic, ?loss_collection:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Gets the list of losses from the loss_collection.
		
		Args:
		  scope: An optional scope for filtering the losses to return.
		  loss_collection: Optional losses collection.
		
		Returns:
		  a list of loss tensors.
	**/
	static public function get_losses(?scope:Dynamic, ?loss_collection:Dynamic):Dynamic;
	/**
		Gets the total regularization loss.
		
		Args:
		  scope: An optional scope for filtering the losses to return.
		  name: The name of the returned tensor.
		
		Returns:
		  A scalar regularization loss.
	**/
	static public function get_regularization_loss(?scope:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gets the list of regularization losses.
		
		Args:
		  scope: An optional scope for filtering the losses to return.
		
		Returns:
		  A list of regularization losses as Tensors.
	**/
	static public function get_regularization_losses(?scope:Dynamic):Dynamic;
	/**
		Returns a tensor whose value represents the total loss.
		
		In particular, this adds any losses you have added with `tf.add_loss()` to
		any regularization losses that have been added by regularization parameters
		on layers constructors e.g. `tf.layers`. Be very sure to use this if you
		are constructing a loss_op manually. Otherwise regularization arguments
		on `tf.layers` methods will not function.
		
		Args:
		  add_regularization_losses: A boolean indicating whether or not to use the
		    regularization losses in the sum.
		  name: The name of the returned tensor.
		
		Returns:
		  A `Tensor` whose value represents the total loss.
		
		Raises:
		  ValueError: if `losses` is not iterable.
	**/
	static public function get_total_loss(?add_regularization_losses:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}