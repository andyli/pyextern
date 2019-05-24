/* This file is generated, do not edit! */
package torch.distributions.categorical;
@:pythonImport("torch.distributions.categorical") extern class Categorical_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given a list of values (possibly containing numbers), returns a list where each
		value is broadcasted based on the following rules:
		  - `torch.*Tensor` instances are broadcasted as per :ref:`_broadcasting-semantics`.
		  - numbers.Number instances (scalars) are upcast to tensors having
		    the same size and type as the first tensor passed to `values`.  If all the
		    values are scalars, then they are upcasted to scalar Tensors.
		
		Args:
		    values (list of `numbers.Number` or `torch.*Tensor`)
		
		Raises:
		    ValueError: if any of the values is not a `numbers.Number` or
		        `torch.*Tensor` instance
	**/
	static public function broadcast_all(?values:python.VarArgs<Dynamic>):Dynamic;
	/**
		Converts a tensor of logits into probabilities. Note that for the
		binary case, each value denotes log odds, whereas for the
		multi-dimensional case, the values along the last dimension denote
		the log probabilities (possibly unnormalized) of the events.
	**/
	static public function logits_to_probs(logits:Dynamic, ?is_binary:Dynamic):Dynamic;
	static public var nan : Dynamic;
	/**
		Converts a tensor of probabilities into logits. For the binary case,
		this denotes the probability of occurrence of the event indexed by `1`.
		For the multi-dimensional case, the values along the last dimension
		denote the probabilities of occurrence of each of the events.
	**/
	static public function probs_to_logits(probs:Dynamic, ?is_binary:Dynamic):Dynamic;
}