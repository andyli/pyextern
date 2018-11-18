/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.regularizers;
@:pythonImport("tensorflow.contrib.layers.python.layers.regularizers") extern class Regularizers_Module {
	static public var __all__ : Dynamic;
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
		Returns the summed penalty by applying `regularizer` to the `weights_list`.
		
		Adding a regularization penalty over the layer weights and embedding weights
		can help prevent overfitting the training data. Regularization over layer
		biases is less common/useful, but assuming proper data preprocessing/mean
		subtraction, it usually shouldn't hurt much either.
		
		Args:
		  regularizer: A function that takes a single `Tensor` argument and returns
		    a scalar `Tensor` output.
		  weights_list: List of weights `Tensors` or `Variables` to apply
		    `regularizer` over. Defaults to the `GraphKeys.WEIGHTS` collection if
		    `None`.
		
		Returns:
		  A scalar representing the overall regularization penalty.
		
		Raises:
		  ValueError: If `regularizer` does not return a scalar output, or if we find
		      no weights.
	**/
	static public function apply_regularization(regularizer:Dynamic, ?weights_list:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a function that can be used to apply L1 L2 regularizations.
		
		Args:
		  scale_l1: A scalar multiplier `Tensor` for L1 regularization.
		  scale_l2: A scalar multiplier `Tensor` for L2 regularization.
		  scope: An optional scope name.
		
		Returns:
		  A function with signature `l1_l2(weights)` that applies a weighted sum of
		  L1 L2 regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l1_l2_regularizer(?scale_l1:Dynamic, ?scale_l2:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns a function that can be used to apply L1 regularization to weights.
		
		L1 regularization encourages sparsity.
		
		Args:
		  scale: A scalar multiplier `Tensor`. 0.0 disables the regularizer.
		  scope: An optional scope name.
		
		Returns:
		  A function with signature `l1(weights)` that apply L1 regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l1_regularizer(scale:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns a function that can be used to apply L2 regularization to weights.
		
		Small values of L2 can help prevent overfitting the training data.
		
		Args:
		  scale: A scalar multiplier `Tensor`. 0.0 disables the regularizer.
		  scope: An optional scope name.
		
		Returns:
		  A function with signature `l2(weights)` that applies L2 regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l2_regularizer(scale:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns a function that applies the sum of multiple regularizers.
		
		Args:
		  regularizer_list: A list of regularizers to apply.
		  scope: An optional scope name
		
		Returns:
		  A function with signature `sum_reg(weights)` that applies the
		  sum of all the input regularizers.
	**/
	static public function sum_regularizer(regularizer_list:Dynamic, ?scope:Dynamic):Dynamic;
}