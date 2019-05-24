/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.interleave_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.interleave_ops") extern class Interleave_ops_Module {
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
		Creates a dataset that deterministically chooses elements from `datasets`.
		
		For example, given the following datasets:
		
		```python
		datasets = [tf.data.Dataset.from_tensors("foo").repeat(),
		            tf.data.Dataset.from_tensors("bar").repeat(),
		            tf.data.Dataset.from_tensors("baz").repeat()]
		
		# Define a dataset containing `[0, 1, 2, 0, 1, 2, 0, 1, 2]`.
		choice_dataset = tf.data.Dataset.range(3).repeat(3)
		
		result = tf.data.experimental.choose_from_datasets(datasets, choice_dataset)
		```
		
		The elements of `result` will be:
		
		```
		"foo", "bar", "baz", "foo", "bar", "baz", "foo", "bar", "baz"
		```
		
		Args:
		  datasets: A list of `tf.data.Dataset` objects with compatible structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between
		    `0` and `len(datasets) - 1`.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the values
		  of `choice_dataset`.
		
		Raises:
		  TypeError: If the `datasets` or `choice_dataset` arguments have the wrong
		    type.
	**/
	static public function choose_from_datasets(datasets:Dynamic, choice_dataset:Dynamic):Dynamic;
	/**
		Creates a dataset that deterministically chooses elements from `datasets`.
		
		For example, given the following datasets:
		
		```python
		datasets = [tf.data.Dataset.from_tensors("foo").repeat(),
		            tf.data.Dataset.from_tensors("bar").repeat(),
		            tf.data.Dataset.from_tensors("baz").repeat()]
		
		# Define a dataset containing `[0, 1, 2, 0, 1, 2, 0, 1, 2]`.
		choice_dataset = tf.data.Dataset.range(3).repeat(3)
		
		result = tf.data.experimental.choose_from_datasets(datasets, choice_dataset)
		```
		
		The elements of `result` will be:
		
		```
		"foo", "bar", "baz", "foo", "bar", "baz", "foo", "bar", "baz"
		```
		
		Args:
		  datasets: A list of `tf.data.Dataset` objects with compatible structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between
		    `0` and `len(datasets) - 1`.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the values
		  of `choice_dataset`.
		
		Raises:
		  TypeError: If the `datasets` or `choice_dataset` arguments have the wrong
		    type.
	**/
	static public function choose_from_datasets_v1(datasets:Dynamic, choice_dataset:Dynamic):Dynamic;
	/**
		Creates a dataset that deterministically chooses elements from `datasets`.
		
		For example, given the following datasets:
		
		```python
		datasets = [tf.data.Dataset.from_tensors("foo").repeat(),
		            tf.data.Dataset.from_tensors("bar").repeat(),
		            tf.data.Dataset.from_tensors("baz").repeat()]
		
		# Define a dataset containing `[0, 1, 2, 0, 1, 2, 0, 1, 2]`.
		choice_dataset = tf.data.Dataset.range(3).repeat(3)
		
		result = tf.data.experimental.choose_from_datasets(datasets, choice_dataset)
		```
		
		The elements of `result` will be:
		
		```
		"foo", "bar", "baz", "foo", "bar", "baz", "foo", "bar", "baz"
		```
		
		Args:
		  datasets: A list of `tf.data.Dataset` objects with compatible structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between
		    `0` and `len(datasets) - 1`.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the values
		  of `choice_dataset`.
		
		Raises:
		  TypeError: If the `datasets` or `choice_dataset` arguments have the wrong
		    type.
	**/
	static public function choose_from_datasets_v2(datasets:Dynamic, choice_dataset:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		A parallel version of the `Dataset.interleave()` transformation.
		
		`parallel_interleave()` maps `map_func` across its input to produce nested
		datasets, and outputs their elements interleaved. Unlike
		`tf.data.Dataset.interleave`, it gets elements from `cycle_length` nested
		datasets in parallel, which increases the throughput, especially in the
		presence of stragglers. Furthermore, the `sloppy` argument can be used to
		improve performance, by relaxing the requirement that the outputs are produced
		in a deterministic order, and allowing the implementation to skip over nested
		datasets whose elements are not readily available when requested.
		
		Example usage:
		
		```python
		# Preprocess 4 files concurrently.
		filenames = tf.data.Dataset.list_files("/path/to/data/train*.tfrecords")
		dataset = filenames.apply(
		    tf.data.experimental.parallel_interleave(
		        lambda filename: tf.data.TFRecordDataset(filename),
		        cycle_length=4))
		```
		
		WARNING: If `sloppy` is `True`, the order of produced elements is not
		deterministic.
		
		Args:
		  map_func: A function mapping a nested structure of tensors to a `Dataset`.
		  cycle_length: The number of input `Dataset`s to interleave from in parallel.
		  block_length: The number of consecutive elements to pull from an input
		    `Dataset` before advancing to the next input `Dataset`.
		  sloppy: If false, elements are produced in deterministic order. Otherwise,
		    the implementation is allowed, for the sake of expediency, to produce
		    elements in a non-deterministic order.
		  buffer_output_elements: The number of elements each iterator being
		    interleaved should buffer (similar to the `.prefetch()` transformation for
		    each interleaved iterator).
		  prefetch_input_elements: The number of input elements to transform to
		    iterators before they are needed for interleaving.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function parallel_interleave(map_func:Dynamic, cycle_length:Dynamic, ?block_length:Dynamic, ?sloppy:Dynamic, ?buffer_output_elements:Dynamic, ?prefetch_input_elements:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Samples elements at random from the datasets in `datasets`.
		
		Args:
		  datasets: A list of `tf.data.Dataset` objects with compatible structure.
		  weights: (Optional.) A list of `len(datasets)` floating-point values where
		    `weights[i]` represents the probability with which an element should be
		    sampled from `datasets[i]`, or a `tf.data.Dataset` object where each
		    element is such a list. Defaults to a uniform distribution across
		    `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    random seed that will be used to create the distribution. See
		    `tf.set_random_seed` for behavior.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according to
		  `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError: If the `weights` argument is specified and does not match the
		    length of the `datasets` element.
	**/
	static public function sample_from_datasets(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Samples elements at random from the datasets in `datasets`.
		
		Args:
		  datasets: A list of `tf.data.Dataset` objects with compatible structure.
		  weights: (Optional.) A list of `len(datasets)` floating-point values where
		    `weights[i]` represents the probability with which an element should be
		    sampled from `datasets[i]`, or a `tf.data.Dataset` object where each
		    element is such a list. Defaults to a uniform distribution across
		    `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    random seed that will be used to create the distribution. See
		    `tf.set_random_seed` for behavior.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according to
		  `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError: If the `weights` argument is specified and does not match the
		    length of the `datasets` element.
	**/
	static public function sample_from_datasets_v1(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Samples elements at random from the datasets in `datasets`.
		
		Args:
		  datasets: A list of `tf.data.Dataset` objects with compatible structure.
		  weights: (Optional.) A list of `len(datasets)` floating-point values where
		    `weights[i]` represents the probability with which an element should be
		    sampled from `datasets[i]`, or a `tf.data.Dataset` object where each
		    element is such a list. Defaults to a uniform distribution across
		    `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    random seed that will be used to create the distribution. See
		    `tf.set_random_seed` for behavior.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according to
		  `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError: If the `weights` argument is specified and does not match the
		    length of the `datasets` element.
	**/
	static public function sample_from_datasets_v2(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}