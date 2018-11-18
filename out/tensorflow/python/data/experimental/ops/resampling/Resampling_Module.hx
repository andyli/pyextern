/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.resampling;
@:pythonImport("tensorflow.python.data.experimental.ops.resampling") extern class Resampling_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculates the acceptance probabilities and mixing ratio.
		
		In this case, we assume that we can *either* sample from the original data
		distribution with probability `m`, or sample from a reshaped distribution
		that comes from rejection sampling on the original distribution. This
		rejection sampling is done on a per-class basis, with `a_i` representing the
		probability of accepting data from class `i`.
		
		This method is based on solving the following analysis for the reshaped
		distribution:
		
		Let F be the probability of a rejection (on any example).
		Let p_i be the proportion of examples in the data in class i (init_probs)
		Let a_i is the rate the rejection sampler should *accept* class i
		Let t_i is the target proportion in the minibatches for class i (target_probs)
		
		```
		F = sum_i(p_i * (1-a_i))
		  = 1 - sum_i(p_i * a_i)     using sum_i(p_i) = 1
		```
		
		An example with class `i` will be accepted if `k` rejections occur, then an
		example with class `i` is seen by the rejector, and it is accepted. This can
		be written as follows:
		
		```
		t_i = sum_k=0^inf(F^k * p_i * a_i)
		    = p_i * a_j / (1 - F)    using geometric series identity, since 0 <= F < 1
		    = p_i * a_i / sum_j(p_j * a_j)        using F from above
		```
		
		Note that the following constraints hold:
		```
		0 <= p_i <= 1, sum_i(p_i) = 1
		0 <= a_i <= 1
		0 <= t_i <= 1, sum_i(t_i) = 1
		```
		
		A solution for a_i in terms of the other variables is the following:
		  ```a_i = (t_i / p_i) / max_i[t_i / p_i]```
		
		If we try to minimize the amount of data rejected, we get the following:
		
		M_max = max_i [ t_i / p_i ]
		M_min = min_i [ t_i / p_i ]
		
		The desired probability of accepting data if it comes from class `i`:
		
		a_i = (t_i/p_i - m) / (M_max - m)
		
		The desired probability of pulling a data element from the original dataset,
		rather than the filtered one:
		
		m = M_min
		
		Args:
		  initial_probs: A Tensor of the initial probability distribution, given or
		    estimated.
		  target_probs: A Tensor of the corresponding classes.
		
		Returns:
		  (A 1D Tensor with the per-class acceptance probabilities, the desired
		  probability of pull from the original distribution.)
	**/
	static public function _calculate_acceptance_probs_with_mixing(initial_probs:Dynamic, target_probs:Dynamic):Dynamic;
	/**
		Estimate data distribution as labels are seen.
		
		Args:
		  c: The class labels.  Type `int32`, shape `[batch_size]`.
		  num_examples_per_class_seen: Type `int64`, shape `[num_classes]`,
		    containing counts.
		
		Returns:
		  num_examples_per_lass_seen: Updated counts.  Type `int64`, shape
		    `[num_classes]`.
		  dist: The updated distribution.  Type `float32`, shape `[num_classes]`.
	**/
	static public function _estimate_data_distribution(c:Dynamic, num_examples_per_class_seen:Dynamic):Dynamic;
	static public function _estimate_initial_dist_ds(target_dist_t:Dynamic, class_values_ds:Dynamic, ?dist_estimation_batch_size:Dynamic, ?smoothing_constant:Dynamic):Dynamic;
	/**
		Filters a dataset based on per-class acceptance probabilities.
		
		Args:
		  dataset: The dataset to be filtered.
		  acceptance_dist_ds: A dataset of acceptance probabilities.
		  initial_dist_ds: A dataset of the initial probability distribution, given or
		      estimated.
		  class_values_ds: A dataset of the corresponding classes.
		  seed: (Optional.) Python integer seed for the resampler.
		
		Returns:
		  A dataset of (class value, data) after filtering.
	**/
	static public function _filter_ds(dataset:Dynamic, acceptance_dist_ds:Dynamic, initial_dist_ds:Dynamic, class_values_ds:Dynamic, seed:Dynamic):Dynamic;
	/**
		Returns the static probability of sampling from the original.
		
		`tensor_util.constant_value(prob_of_original)` returns `None` if it encounters
		an Op that it isn't defined for. We have some custom logic to avoid this.
		
		Args:
		  initial_dist_t: A tensor of the initial distribution.
		  target_dist_t: A tensor of the target distribution.
		
		Returns:
		  The probability of sampling from the original distribution as a constant,
		  if it is a constant, or `None`.
	**/
	static public function _get_prob_original_static(initial_dist_t:Dynamic, target_dist_t:Dynamic):Dynamic;
	static public function _get_target_to_initial_ratio(initial_probs:Dynamic, target_probs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		A transformation that resamples a dataset to achieve a target distribution.
		
		**NOTE** Resampling is performed via rejection sampling; some fraction
		of the input values will be dropped.
		
		Args:
		  class_func: A function mapping an element of the input dataset to a scalar
		    `tf.int32` tensor. Values should be in `[0, num_classes)`.
		  target_dist: A floating point type tensor, shaped `[num_classes]`.
		  initial_dist: (Optional.)  A floating point type tensor, shaped
		    `[num_classes]`.  If not provided, the true class distribution is
		    estimated live in a streaming fashion.
		  seed: (Optional.) Python integer seed for the resampler.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function rejection_resample(class_func:Dynamic, target_dist:Dynamic, ?initial_dist:Dynamic, ?seed:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}