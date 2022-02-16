/* This file is generated, do not edit! */
package torch.distributions.utils;
@:pythonImport("torch.distributions.utils") extern class Utils_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _standard_normal(shape:Dynamic, dtype:Dynamic, device:Dynamic):Dynamic;
	/**
		Sum out ``dim`` many rightmost dimensions of a given tensor.
		
		Args:
		    value (Tensor): A tensor of ``.dim()`` at least ``dim``.
		    dim (int): The number of rightmost dims to sum out.
	**/
	static public function _sum_rightmost(value:Dynamic, dim:Dynamic):Dynamic;
	/**
		Given a list of values (possibly containing numbers), returns a list where each
		value is broadcasted based on the following rules:
		  - `torch.*Tensor` instances are broadcasted as per :ref:`_broadcasting-semantics`.
		  - numbers.Number instances (scalars) are upcast to tensors having
		    the same size and type as the first tensor passed to `values`.  If all the
		    values are scalars, then they are upcasted to scalar Tensors.
		
		Args:
		    values (list of `numbers.Number`, `torch.*Tensor` or objects implementing __torch_function__)
		
		Raises:
		    ValueError: if any of the values is not a `numbers.Number` instance,
		        a `torch.*Tensor` instance, or an instance implementing __torch_function__
	**/
	static public function broadcast_all(?values:python.VarArgs<Dynamic>):Dynamic;
	static public function clamp_probs(probs:Dynamic):Dynamic;
	static public var euler_constant : Dynamic;
	/**
		Check for __torch_function__ implementations in the elements of an iterable.
		Considers exact ``Tensor`` s and ``Parameter`` s non-dispatchable.
		Arguments
		---------
		relevant_args : iterable
		    Iterable or aguments to check for __torch_function__ methods.
		Returns
		-------
		bool
		    True if any of the elements of relevant_args have __torch_function__
		    implementations, False otherwise.
		See Also
		________
		torch.is_tensor_like
		    Checks if something is a Tensor-like, including an exact ``Tensor``.
	**/
	static public function has_torch_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts a tensor of logits into probabilities. Note that for the
		binary case, each value denotes log odds, whereas for the
		multi-dimensional case, the values along the last dimension denote
		the log probabilities (possibly unnormalized) of the events.
	**/
	static public function logits_to_probs(logits:Dynamic, ?is_binary:Dynamic):Dynamic;
	/**
		Converts a tensor of probabilities into logits. For the binary case,
		this denotes the probability of occurrence of the event indexed by `1`.
		For the multi-dimensional case, the values along the last dimension
		denote the probabilities of occurrence of each of the events.
	**/
	static public function probs_to_logits(probs:Dynamic, ?is_binary:Dynamic):Dynamic;
	/**
		Convert a `D x D` matrix or a batch of matrices into a (batched) vector
		which comprises of lower triangular elements from the matrix in row order.
	**/
	static public function tril_matrix_to_vec(mat:Dynamic, ?diag:Dynamic):Dynamic;
	/**
		Update a wrapper function to look like the wrapped function
		
		wrapper is the function to be updated
		wrapped is the original function
		assigned is a tuple naming the attributes assigned directly
		from the wrapped function to the wrapper function (defaults to
		functools.WRAPPER_ASSIGNMENTS)
		updated is a tuple naming the attributes of the wrapper that
		are updated with the corresponding attribute from the wrapped
		function (defaults to functools.WRAPPER_UPDATES)
	**/
	static public function update_wrapper(wrapper:Dynamic, wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
	/**
		Convert a vector or a batch of vectors into a batched `D x D`
		lower triangular matrix containing elements from the vector in row order.
	**/
	static public function vec_to_tril_matrix(vec:Dynamic, ?diag:Dynamic):Dynamic;
}