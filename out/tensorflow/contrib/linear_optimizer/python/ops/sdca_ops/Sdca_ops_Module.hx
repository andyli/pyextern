/* This file is generated, do not edit! */
package tensorflow.contrib.linear_optimizer.python.ops.sdca_ops;
@:pythonImport("tensorflow.contrib.linear_optimizer.python.ops.sdca_ops") extern class Sdca_ops_Module {
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
	static public var division : Dynamic;
	/**
		Implementation of the public convert_to_tensor.
	**/
	static public function internal_convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic, ?preferred_dtype:Dynamic, ?ctx:Dynamic, ?accept_symbolic_tensors:Dynamic):Dynamic;
	/**
		Computes log Poisson loss given `log_input`.
		
		Gives the log-likelihood loss between the prediction and the target under the
		assumption that the target has a Poisson distribution.
		Caveat: By default, this is not the exact loss, but the loss minus a
		  constant term [log(z!)]. That has no effect for optimization, but
		  does not play well with relative loss comparisons. To compute an
		  approximation of the log factorial term, specify
		  compute_full_loss=True to enable Stirling's Approximation.
		
		For brevity, let `c = log(x) = log_input`, `z = targets`.  The log Poisson
		loss is
		
		      -log(exp(-x) * (x^z) / z!)
		    = -log(exp(-x) * (x^z)) + log(z!)
		    ~ -log(exp(-x)) - log(x^z) [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		        [ Note the second term is the Stirling's Approximation for log(z!).
		          It is invariant to x and does not affect optimization, though
		          important for correct relative loss comparisons. It is only
		          computed when compute_full_loss == True. ]
		    = x - z * log(x) [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		    = exp(c) - z * c [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		
		Args:
		  targets: A `Tensor` of the same type and shape as `log_input`.
		  log_input: A `Tensor` of type `float32` or `float64`.
		  compute_full_loss: whether to compute the full loss. If false, a constant
		    term is dropped in favor of more efficient optimization.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `log_input` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `log_input` and `targets` do not have the same shape.
	**/
	static public function log_poisson_loss(targets:Dynamic, log_input:Dynamic, ?compute_full_loss:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes sigmoid cross entropy given `logits`.
		
		Measures the probability error in discrete classification tasks in which each
		class is independent and not mutually exclusive.  For instance, one could
		perform multilabel classification where a picture can contain both an elephant
		and a dog at the same time.
		
		For brevity, let `x = logits`, `z = labels`.  The logistic loss is
		
		      z * -log(sigmoid(x)) + (1 - z) * -log(1 - sigmoid(x))
		    = z * -log(1 / (1 + exp(-x))) + (1 - z) * -log(exp(-x) / (1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (-log(exp(-x)) + log(1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (x + log(1 + exp(-x))
		    = (1 - z) * x + log(1 + exp(-x))
		    = x - x * z + log(1 + exp(-x))
		
		For x < 0, to avoid overflow in exp(-x), we reformulate the above
		
		      x - x * z + log(1 + exp(-x))
		    = log(exp(x)) - x * z + log(1 + exp(-x))
		    = - x * z + log(1 + exp(x))
		
		Hence, to ensure stability and avoid overflow, the implementation uses this
		equivalent formulation
		
		    max(x, 0) - x * z + log(1 + exp(-abs(x)))
		
		`logits` and `labels` must have the same type and shape.
		
		Args:
		  _sentinel: Used to prevent positional parameters. Internal, do not use.
		  labels: A `Tensor` of the same type and shape as `logits`.
		  logits: A `Tensor` of type `float32` or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function sigmoid_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
}