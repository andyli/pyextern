/* This file is generated, do not edit! */
package tensorflow.contrib.labeled_tensor.python.ops.nn;
@:pythonImport("tensorflow.contrib.labeled_tensor.python.ops.nn") extern class Nn_Module {
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
		LabeledTensor version of `tf.crelu`.
		
		See `tf.crelu` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.crelu` elementwise.
	**/
	static public function crelu(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		LabeledTensor version of `tf.elu`.
		
		See `tf.elu` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.elu` elementwise.
	**/
	static public function elu(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.l2_loss`.
		
		See `tf.l2_loss` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.l2_loss` elementwise.
	**/
	static public function l2_loss(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.log_softmax`.
		
		See `tf.log_softmax` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.log_softmax` elementwise.
	**/
	static public function log_softmax(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		LabeledTensor version of `tf.relu`.
		
		See `tf.relu` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.relu` elementwise.
	**/
	static public function relu(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.relu6`.
		
		See `tf.relu6` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.relu6` elementwise.
	**/
	static public function relu6(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.sigmoid_cross_entropy_with_logits` with label based alignment.
		
		See `tf.sigmoid_cross_entropy_with_logits` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.sigmoid_cross_entropy_with_logits` elementwise.
	**/
	static public function sigmoid_cross_entropy_with_logits(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.softmax`.
		
		See `tf.softmax` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.softmax` elementwise.
	**/
	static public function softmax(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.softmax_cross_entropy_with_logits` with label based alignment.
		
		See `tf.softmax_cross_entropy_with_logits` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.softmax_cross_entropy_with_logits` elementwise.
	**/
	static public function softmax_cross_entropy_with_logits(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.softplus`.
		
		See `tf.softplus` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.softplus` elementwise.
	**/
	static public function softplus(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.sparse_softmax_cross_entropy_with_logits` with label based alignment.
		
		See `tf.sparse_softmax_cross_entropy_with_logits` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.sparse_softmax_cross_entropy_with_logits` elementwise.
	**/
	static public function sparse_softmax_cross_entropy_with_logits(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
}