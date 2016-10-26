/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.distribution_util;
@:pythonImport("tensorflow.contrib.distributions.python.ops.distribution_util") extern class Distribution_util_Module {
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
		Assert that that x and y are within machine epsilon of each other.
		
		Args:
		  x: Numeric `Tensor`
		  y: Numeric `Tensor`
		  data: The tensors to print out if the condition is `False`. Defaults to
		    error message and first few entries of `x` and `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		
		Returns:
		  Op raising `InvalidArgumentError` if |x - y| > machine epsilon.
	**/
	static public function assert_close(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that x has integer components (or floats equal to integers).
		
		Args:
		  x: Numeric `Tensor`
		  data: The tensors to print out if the condition is `False`. Defaults to
		    error message and first few entries of `x` and `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		
		Returns:
		  Op raising `InvalidArgumentError` if round(x) != x.
	**/
	static public function assert_integer_form(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Converts logits to probabilities and vice-versa, and returns both.
		
		Args:
		  logits: Numeric `Tensor` representing log-odds.
		  p: Numeric `Tensor` representing probabilities.
		  multidimensional: Given `p` a [N1, N2, ... k] dimensional tensor,
		    whether the last dimension represents the probability between k classes.
		    This will additionally assert that the values in the last dimension
		    sum to one. If `False`, will instead assert that each value is in
		    `[0, 1]`.
		  validate_args: Whether to assert `0 <= p <= 1` if multidimensional is
		    `False`, otherwise that the last dimension of `p` sums to one.
		  name: A name for this operation (optional).
		
		Returns:
		  Tuple with `logits` and `p`. If `p` has an entry that is `0` or `1`, then
		  the corresponding entry in the returned logits will be `-Inf` and `Inf`
		  respectively.
		
		Raises:
		  ValueError: if neither `p` nor `logits` were passed in, or both were.
	**/
	static public function get_logits_and_prob(?logits:Dynamic, ?p:Dynamic, ?multidimensional:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multinomial coefficient.
		
		Given `n` and `counts`, where `counts` has last dimension `k`, we compute
		the multinomial coefficient as:
		
		```n! / sum_i n_i!```
		
		where `i` runs over all `k` classes.
		
		Args:
		  n: Numeric `Tensor` broadcastable with `counts`. This represents `n`
		    outcomes.
		  counts: Numeric `Tensor` broadcastable with `n`. This represents counts
		    in `k` classes, where `k` is the last dimension of the tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  `Tensor` representing the multinomial coefficient between `n` and `counts`.
	**/
	static public function log_combinations(n:Dynamic, counts:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}