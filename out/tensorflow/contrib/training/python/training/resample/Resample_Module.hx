/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.resample;
@:pythonImport("tensorflow.contrib.training.python.training.resample") extern class Resample_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Repeat integers given by range(len(counts)) each the given number of times.
		
		Example behavior:
		[0, 1, 2, 3] -> [1, 2, 2, 3, 3, 3]
		
		Args:
		  counts: 1D tensor with dtype=int32.
		  name: optional name for operation.
		
		Returns:
		  1D tensor with dtype=int32 and dynamic length giving the repeated integers.
	**/
	static public function _repeat_range(counts:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Given `inputs` tensors, stochastically resamples each at a given rate.
		
		For example, if the inputs are `[[a1, a2], [b1, b2]]` and the rates
		tensor contains `[3, 1]`, then the return value may look like `[[a1,
		a2, a1, a1], [b1, b2, b1, b1]]`. However, many other outputs are
		possible, since this is stochastic -- averaged over many repeated
		calls, each set of inputs should appear in the output `rate` times
		the number of invocations.
		
		Args:
		  inputs: A list of tensors, each of which has a shape of `[batch_size, ...]`
		  rates: A tensor of shape `[batch_size]` containing the resampling rates
		     for each input.
		  scope: Scope for the op.
		  seed: Random seed to use.
		  back_prop: Whether to allow back-propagation through this op.
		
		Returns:
		  Selections from the input tensors.
	**/
	static public function resample_at_rate(inputs:Dynamic, rates:Dynamic, ?scope:Dynamic, ?seed:Dynamic, ?back_prop:Dynamic):Dynamic;
	/**
		Performs an approximate weighted resampling of `inputs`.
		
		This method chooses elements from `inputs` where each item's rate of
		selection is proportional to its value in `weights`, and the average
		rate of selection across all inputs (and many invocations!) is
		`overall_rate`.
		
		Args:
		  inputs: A list of tensors whose first dimension is `batch_size`.
		  weights: A `[batch_size]`-shaped tensor with each batch member's weight.
		  overall_rate: Desired overall rate of resampling.
		  scope: Scope to use for the op.
		  mean_decay: How quickly to decay the running estimate of the mean weight.
		  seed: Random seed.
		
		Returns:
		  A list of tensors exactly like `inputs`, but with an unknown (and
		    possibly zero) first dimension.
		  A tensor containing the effective resampling rate used for each output.
	**/
	static public function weighted_resample(inputs:Dynamic, weights:Dynamic, overall_rate:Dynamic, ?scope:Dynamic, ?mean_decay:Dynamic, ?seed:Dynamic):Dynamic;
}