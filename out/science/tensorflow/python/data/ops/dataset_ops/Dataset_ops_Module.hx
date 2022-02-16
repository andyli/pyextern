/* This file is generated, do not edit! */
package tensorflow.python.data.ops.dataset_ops;
@:pythonImport("tensorflow.python.data.ops.dataset_ops") extern class Dataset_ops_Module {
	static public var AUTOTUNE : Dynamic;
	static public var DEBUG_MODE : Dynamic;
	static public var INFINITE : Dynamic;
	static public var UNKNOWN : Dynamic;
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
		Collects resource inputs for the given ops (and its variant inputs).
	**/
	static public function _collect_resource_inputs(op:Dynamic):Dynamic;
	/**
		Walks the dataset graph to ensure all datasets come from the same graph.
	**/
	static public function _ensure_same_dataset_graph(dataset:Dynamic):Dynamic;
	/**
		Estimate data distribution as labels are seen.
		
		Args:
		  c: The class labels.  Type `int32`, shape `[batch_size]`.
		  num_examples_per_class_seen: Type `int64`, shape `[num_classes]`, containing
		    counts.
		
		Returns:
		  num_examples_per_lass_seen: Updated counts.  Type `int64`, shape
		    `[num_classes]`.
		  dist: The updated distribution.  Type `float32`, shape `[num_classes]`.
	**/
	static public function _estimate_data_distribution(c:Dynamic, num_examples_per_class_seen:Dynamic):Dynamic;
	static public function _estimate_initial_dist_ds(target_dist_t:Dynamic, class_values_ds:Dynamic, ?dist_estimation_batch_size:Dynamic, ?smoothing_constant:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Filters a dataset based on per-class acceptance probabilities.
		
		Args:
		  dataset: The dataset to be filtered.
		  acceptance_dist_ds: A dataset of acceptance probabilities.
		  initial_dist_ds: A dataset of the initial probability distribution, given or
		    estimated.
		  class_func: A function mapping an element of the input dataset to a scalar
		    `tf.int32` tensor. Values should be in `[0, num_classes)`.
		  seed: (Optional.) Python integer seed for the resampler.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A dataset of (class value, data) after filtering.
	**/
	static public function _filter_ds(dataset:Dynamic, acceptance_dist_ds:Dynamic, initial_dist_ds:Dynamic, class_func:Dynamic, seed:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Returns the type of `value` if it is a TypeSpec.
	**/
	static public function _get_type(value:Dynamic):Dynamic;
	/**
		Returns `True` if `input_component_shape` can be padded to `padded_shape`.
		
		Args:
		  padded_shape: A `tf.TensorShape`.
		  input_component_shape: A `tf.TensorShape`.
		
		Returns:
		  `True` if `input_component_shape` can be padded to `padded_shape`, otherwise
		  `False`.
	**/
	static public function _is_padded_shape_compatible_with(padded_shape:Dynamic, input_component_shape:Dynamic):Dynamic;
	/**
		Converts `padded_shape` to a `tf.Tensor` representing that shape.
		
		Args:
		  padded_shape: A shape-like object, which may be a `tf.TensorShape`, a Python
		    sequence, or a 1-D `tf.Tensor` of `tf.int64` elements.
		  input_component_shape: A `tf.TensorShape`, with which `padded_shape` must
		    be compatible.
		
		Returns:
		  A 1-D `tf.Tensor` of `tf.int64` elements, representing `padded_shape`.
		
		Raises:
		  ValueError: If `padded_shape` is not a shape or not compatible with
		    `input_component_shape`.
		  TypeError: If `padded_shape` is not convertible to a `tf.int64` tensor.
	**/
	static public function _padded_shape_to_tensor(padded_shape:Dynamic, input_component_shape:Dynamic):Dynamic;
	/**
		Converts the padding value to a tensor.
		
		Args:
		  value: The padding value.
		  output_type: Its expected dtype.
		
		Returns:
		  A scalar `Tensor`.
		
		Raises:
		  ValueError: if the padding value is not a scalar.
		  TypeError: if the padding value's type does not match `output_type`.
	**/
	static public function _padding_value_to_tensor(value:Dynamic, output_type:Dynamic):Dynamic;
	/**
		Returns padding values with None elements replaced with default values.
	**/
	static public function _padding_values_or_default(padding_values:Dynamic, input_dataset:Dynamic):Dynamic;
	/**
		Updates resource inputs for tf.data ops with indirect dependencies.
	**/
	static public function _resource_resolver(op:Dynamic, resource_reads:Dynamic, resource_writes:Dynamic):Dynamic;
	/**
		Determines whether the caller needs to pack the argument in a tuple.
		
		If user-defined function returns a list of tensors, `nest.flatten()` and
		`ops.convert_to_tensor()` and would conspire to attempt to stack those tensors
		into a single tensor because the tf.data version of `nest.flatten()` does
		not recurse into lists. Since it is more likely that the list arose from
		returning the result of an operation (such as `tf.numpy_function()`) that
		returns a list of not-necessarily-stackable tensors, we treat the returned
		value as a `tuple` instead. A user wishing to pack the return value into a
		single tensor can use an explicit `tf.stack()` before returning.
		
		Args:
		  arg: argument to check
		
		Returns:
		  Indication of whether the caller needs to pack the argument in a tuple.
	**/
	static public function _should_pack(arg:Dynamic):Dynamic;
	/**
		Determines whether the caller needs to unpack the argument from a tuple.
		
		Args:
		  arg: argument to check
		
		Returns:
		  Indication of whether the caller needs to unpack the argument from a tuple.
	**/
	static public function _should_unpack(arg:Dynamic):Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public function _validate_and_encode(name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Enables debug mode for tf.data.
		
		Example usage with pdb module:
		```
		import tensorflow as tf
		import pdb
		
		tf.data.experimental.enable_debug_mode()
		
		def func(x):
		  # Python 3.7 and older requires `pdb.Pdb(nosigint=True).set_trace()`
		  pdb.set_trace()
		  x = x + 1
		  return x
		
		dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		dataset = dataset.map(func)
		
		for item in dataset:
		  print(item)
		```
		
		The effect of debug mode is two-fold:
		
		1) Any transformations that would introduce asynchrony, parallelism, or
		non-determinism to the input pipeline execution will be forced to execute
		synchronously, sequentially, and deterministically.
		
		2) Any user-defined functions passed into tf.data transformations such as
		`map` will be wrapped in `tf.py_function` so that their body is executed
		"eagerly" as a Python function as opposed to a traced TensorFlow graph, which
		is the default behavior. Note that even when debug mode is enabled, the
		user-defined function is still traced  to infer the shape and type of its
		outputs; as a consequence, any `print` statements or breakpoints will be
		triggered once during the tracing before the actual execution of the input
		pipeline.
		
		NOTE: As the debug mode setting affects the construction of the tf.data input
		pipeline, it should be enabled before any tf.data definitions.
		
		Raises:
		  ValueError: When invoked from graph mode.
	**/
	static public function enable_debug_mode():Dynamic;
	/**
		Constructs a dataset from the given variant and (nested) structure.
		
		Args:
		  variant: A scalar `tf.variant` tensor representing a dataset.
		  structure: A (nested) structure of `tf.TypeSpec` objects representing the
		    structure of each element in the dataset.
		
		Returns:
		  A `tf.data.Dataset` instance.
	**/
	static public function from_variant(variant:Dynamic, structure:Dynamic):Dynamic;
	/**
		Returns the output classes for elements of the input dataset / iterator.
		
		Args:
		  dataset_or_iterator: A `tf.data.Dataset` or `tf.data.Iterator`.
		
		Returns:
		  A (nested) structure of Python `type` objects matching the structure of the
		  dataset / iterator elements and specifying the class of the individual
		  components.
		
		@compatibility(TF2)
		This is a legacy API for inspecting the type signature of dataset elements. In
		TF 2, you should use the `tf.data.Dataset.element_spec` attribute instead.
		@end_compatibility
	**/
	static public function get_legacy_output_classes(dataset_or_iterator:Dynamic):Dynamic;
	/**
		Returns the output shapes for elements of the input dataset / iterator.
		
		Args:
		  dataset_or_iterator: A `tf.data.Dataset` or `tf.data.Iterator`.
		
		Returns:
		  A (nested) structure of `tf.TensorShape` objects matching the structure of
		  the dataset / iterator elements and specifying the shape of the individual
		  components.
		
		@compatibility(TF2)
		This is a legacy API for inspecting the type signature of dataset elements. In
		TF 2, you should use the `tf.data.Dataset.element_spec` attribute instead.
		@end_compatibility
	**/
	static public function get_legacy_output_shapes(dataset_or_iterator:Dynamic):Dynamic;
	/**
		Returns the output shapes for elements of the input dataset / iterator.
		
		Args:
		  dataset_or_iterator: A `tf.data.Dataset` or `tf.data.Iterator`.
		
		Returns:
		  A (nested) structure of `tf.DType` objects matching the structure of
		  dataset / iterator elements and specifying the shape of the individual
		  components.
		
		@compatibility(TF2)
		This is a legacy API for inspecting the type signature of dataset elements. In
		TF 2, you should use the `tf.data.Dataset.element_spec` attribute instead.
		@end_compatibility
	**/
	static public function get_legacy_output_types(dataset_or_iterator:Dynamic):Dynamic;
	/**
		Returns the type signature for elements of the input dataset / iterator.
		
		Args:
		  dataset_or_iterator: A `tf.data.Dataset` or an `tf.data.Iterator`.
		
		Returns:
		  A (nested) structure of `tf.TypeSpec` objects matching the structure of an
		  element of `dataset_or_iterator` and specifying the type of individual
		  components.
		
		Raises:
		  TypeError: If input is not a `tf.data.Dataset` or an `tf.data.Iterator`
		    object.
	**/
	static public function get_structure(dataset_or_iterator:Dynamic):Dynamic;
	/**
		Creates an iterator for elements of `dataset`.
		
		Note: The returned iterator will be in an uninitialized state,
		and you must run the `iterator.initializer` operation before using it:
		
		```python
		dataset = ...
		iterator = tf.compat.v1.data.make_initializable_iterator(dataset)
		# ...
		sess.run(iterator.initializer)
		```
		
		Args:
		  dataset: A `tf.data.Dataset`.
		  shared_name: (Optional.) If non-empty, the returned iterator will be shared
		    under the given name across multiple sessions that share the same devices
		    (e.g. when using a remote server).
		
		Returns:
		  A `tf.data.Iterator` for elements of `dataset`.
		
		Raises:
		  RuntimeError: If eager execution is enabled.
		
		@compatibility(TF2)
		This is a legacy API for consuming dataset elements and should only be used
		during transition from TF 1 to TF 2. Note that using this API should be
		a transient state of your code base as there are in general no guarantees
		about the interoperability of TF 1 and TF 2 code.
		
		In TF 2 datasets are Python iterables which means you can consume their
		elements using `for elem in dataset: ...` or by explicitly creating iterator
		via `iterator = iter(dataset)` and fetching its elements via
		`values = next(iterator)`.
		@end_compatibility
	**/
	static public function make_initializable_iterator(dataset:Dynamic, ?shared_name:Dynamic):Dynamic;
	/**
		Creates an iterator for elements of `dataset`.
		
		Note: The returned iterator will be initialized automatically.
		A "one-shot" iterator does not support re-initialization.
		
		Args:
		  dataset: A `tf.data.Dataset`.
		
		Returns:
		  A `tf.data.Iterator` for elements of `dataset`.
		
		@compatibility(TF2)
		This is a legacy API for consuming dataset elements and should only be used
		during transition from TF 1 to TF 2. Note that using this API should be
		a transient state of your code base as there are in general no guarantees
		about the interoperability of TF 1 and TF 2 code.
		
		In TF 2 datasets are Python iterables which means you can consume their
		elements using `for elem in dataset: ...` or by explicitly creating iterator
		via `iterator = iter(dataset)` and fetching its elements via
		`values = next(iterator)`.
		@end_compatibility
	**/
	static public function make_one_shot_iterator(dataset:Dynamic):Dynamic;
	/**
		Normalizes non-tensor components in a dataset to dense representations.
		
		This is necessary for dataset transformations that slice along the batch
		dimension and are oblivious to non-tensors, e.g. `unbatch`, `rebatch`.
		
		Args:
		  dataset: Dataset to normalize.
		
		Returns:
		  A dataset whose sparse and ragged tensors have been normalized to their
		  dense representations.
	**/
	static public function normalize_to_dense(dataset:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a variant representing the given dataset.
		
		Args:
		  dataset: A `tf.data.Dataset`.
		
		Returns:
		  A scalar `tf.variant` tensor representing the given dataset.
	**/
	static public function to_variant(dataset:Dynamic):Dynamic;
	static public function toggle_debug_mode(debug_mode:Dynamic):Dynamic;
}