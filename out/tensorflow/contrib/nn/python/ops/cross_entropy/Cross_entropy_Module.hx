/* This file is generated, do not edit! */
package tensorflow.contrib.nn.python.ops.cross_entropy;
@:pythonImport("tensorflow.contrib.nn.python.ops.cross_entropy") extern class Cross_entropy_Module {
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
		Computes sigmoid cross entropy given `logits`.
		
		This function diffs from tf.nn.sigmoid_cross_entropy_with_logits only in the
		argument order.
		
		Measures the probability error in discrete classification tasks in which each
		class is independent and not mutually exclusive.  For instance, one could
		perform multilabel classification where a picture can contain both an elephant
		and a dog at the same time.
		
		For brevity, let `x = logits`, `z = targets`.  The logistic loss is
		
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
		
		`logits` and `targets` must have the same type and shape.
		
		Args:
		  logits: A `Tensor` of type `float32` or `float64`.
		  targets: A `Tensor` of the same type and shape as `logits`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `targets` do not have the same shape.
	**/
	static public function deprecated_flipped_sigmoid_cross_entropy_with_logits(logits:Dynamic, targets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`.
		
		This function diffs from tf.nn.softmax_cross_entropy_with_logits only in the
		argument order.
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  While the classes are mutually exclusive, their probabilities
		need not be.  All that is required is that each row of `labels` is
		a valid probability distribution.  If they are not, the computation of the
		gradient will be incorrect.
		
		If using exclusive `labels` (wherein one and only
		one class is true at a time), see `sparse_softmax_cross_entropy_with_logits`.
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		`logits` and `labels` must have the same shape `[batch_size, num_classes]`
		and the same dtype (either `float16`, `float32`, or `float64`).
		
		Args:
		  logits: Unscaled log probabilities.
		  labels: Each row `labels[i]` must be a valid probability distribution.
		  dim: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A 1-D `Tensor` of length `batch_size` of the same type as `logits` with the
		  softmax cross entropy loss.
	**/
	static public function deprecated_flipped_softmax_cross_entropy_with_logits(logits:Dynamic, labels:Dynamic, ?dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sparse softmax cross entropy between `logits` and `labels`.
		
		This function diffs from tf.nn.sparse_softmax_cross_entropy_with_logits only
		in the argument order.
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  For this operation, the probability of a given label is considered
		exclusive.  That is, soft classes are not allowed, and the `labels` vector
		must provide a single specific index for the true class for each row of
		`logits` (each minibatch entry).  For soft softmax classification with
		a probability distribution for each entry, see
		`softmax_cross_entropy_with_logits`.
		
		**WARNING:** This op expects unscaled logits, since it performs a softmax
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits of shape `[batch_size, num_classes]` and
		labels of shape `[batch_size]`. But higher dimensions are supported.
		
		Args:
		
		  logits: Unscaled log probabilities of rank `r` and shape
		    `[d_0, d_1, ..., d_{r-2}, num_classes]` and dtype `float32` or `float64`.
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-2}]` and dtype `int32` or
		    `int64`. Each entry in `labels` must be an index in `[0, num_classes)`.
		    Other values will raise an exception when this op is run on CPU, and
		    return `NaN` for corresponding corresponding loss and gradient rows
		    on GPU.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `labels` and of the same type as `logits`
		  with the softmax cross entropy loss.
		
		Raises:
		  ValueError: If logits are scalars (need to have rank >= 1) or if the rank
		    of the labels is not equal to the rank of the labels minus one.
	**/
	static public function deprecated_flipped_sparse_softmax_cross_entropy_with_logits(logits:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}