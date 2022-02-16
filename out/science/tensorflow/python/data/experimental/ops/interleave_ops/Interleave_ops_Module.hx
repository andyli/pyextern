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
		Creates a dataset that deterministically chooses elements from `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.choose_from_datasets(...)` instead. Note that, unlike the experimental endpoint, the non-experimental endpoint sets `stop_on_empty_dataset=True` by default. You should set this argument explicitly in case you would like to match the behavior of the experimental endpoint.
		
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
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between `0`
		    and `len(datasets) - 1`.
		  stop_on_empty_dataset: If `True`, selection stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set it
		    to `True`. Otherwise, the selected elements start off as the user intends,
		    but may change as input datasets become empty. This can be difficult to
		    detect since the dataset starts off looking correct. Default to `False`
		    for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the values
		  of `choice_dataset`.
		
		Raises:
		  TypeError: If `datasets` or `choice_dataset` has the wrong type.
		  ValueError: If `datasets` is empty.
	**/
	static public function choose_from_datasets(datasets:Dynamic, choice_dataset:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	/**
		Creates a dataset that deterministically chooses elements from `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.choose_from_datasets(...)` instead. Note that, unlike the experimental endpoint, the non-experimental endpoint sets `stop_on_empty_dataset=True` by default. You should set this argument explicitly in case you would like to match the behavior of the experimental endpoint.
		
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
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between `0`
		    and `len(datasets) - 1`.
		  stop_on_empty_dataset: If `True`, selection stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set it
		    to `True`. Otherwise, the selected elements start off as the user intends,
		    but may change as input datasets become empty. This can be difficult to
		    detect since the dataset starts off looking correct. Default to `False`
		    for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the values
		  of `choice_dataset`.
		
		Raises:
		  TypeError: If `datasets` or `choice_dataset` has the wrong type.
		  ValueError: If `datasets` is empty.
	**/
	static public function choose_from_datasets_v1(datasets:Dynamic, choice_dataset:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	/**
		Creates a dataset that deterministically chooses elements from `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.choose_from_datasets(...)` instead. Note that, unlike the experimental endpoint, the non-experimental endpoint sets `stop_on_empty_dataset=True` by default. You should set this argument explicitly in case you would like to match the behavior of the experimental endpoint.
		
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
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  choice_dataset: A `tf.data.Dataset` of scalar `tf.int64` tensors between `0`
		    and `len(datasets) - 1`.
		  stop_on_empty_dataset: If `True`, selection stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set it
		    to `True`. Otherwise, the selected elements start off as the user intends,
		    but may change as input datasets become empty. This can be difficult to
		    detect since the dataset starts off looking correct. Default to `False`
		    for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` according to the values
		  of `choice_dataset`.
		
		Raises:
		  TypeError: If `datasets` or `choice_dataset` has the wrong type.
		  ValueError: If `datasets` is empty.
	**/
	static public function choose_from_datasets_v2(datasets:Dynamic, choice_dataset:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		A parallel version of the `Dataset.interleave()` transformation. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.interleave(map_func, cycle_length, block_length, num_parallel_calls=tf.data.AUTOTUNE)` instead. If sloppy execution is desired, use `tf.data.Options.deterministic`.
		
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
		  sloppy: A boolean controlling whether determinism should be traded for
		    performance by allowing elements to be produced out of order.  If `sloppy`
		    is `None`, the `tf.data.Options.deterministic` dataset option (`True` by
		    default) is used to decide whether to enforce a deterministic order.
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
		Samples elements at random from the datasets in `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.sample_from_datasets(...)`.
		
		Creates a dataset by interleaving elements of `datasets` with `weight[i]`
		probability of picking an element from dataset `i`. Sampling is done without
		replacement. For example, suppose we have 2 datasets:
		
		```python
		dataset1 = tf.data.Dataset.range(0, 3)
		dataset2 = tf.data.Dataset.range(100, 103)
		```
		
		Suppose also that we sample from these 2 datasets with the following weights:
		
		```python
		sample_dataset = tf.data.Dataset.sample_from_datasets(
		    [dataset1, dataset2], weights=[0.5, 0.5])
		```
		
		One possible outcome of elements in sample_dataset is:
		
		```
		print(list(sample_dataset.as_numpy_iterator()))
		# [100, 0, 1, 101, 2, 102]
		```
		
		Args:
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  weights: (Optional.) A list or Tensor of `len(datasets)` floating-point
		    values where `weights[i]` represents the probability to sample from
		    `datasets[i]`, or a `tf.data.Dataset` object where each element is such a
		    list. Defaults to a uniform distribution across `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		  stop_on_empty_dataset: If `True`, sampling stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set it
		    to `True`. Otherwise, the distribution of samples starts off as the user
		    intends, but may change as input datasets become empty. This can be
		    difficult to detect since the dataset starts off looking correct. Default
		    to `False` for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according to
		  `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError:
		    - If `datasets` is empty, or
		    - If `weights` is specified and does not match the length of `datasets`.
	**/
	static public function sample_from_datasets(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	/**
		Samples elements at random from the datasets in `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.sample_from_datasets(...)`.
		
		Creates a dataset by interleaving elements of `datasets` with `weight[i]`
		probability of picking an element from dataset `i`. Sampling is done without
		replacement. For example, suppose we have 2 datasets:
		
		```python
		dataset1 = tf.data.Dataset.range(0, 3)
		dataset2 = tf.data.Dataset.range(100, 103)
		```
		
		Suppose also that we sample from these 2 datasets with the following weights:
		
		```python
		sample_dataset = tf.data.Dataset.sample_from_datasets(
		    [dataset1, dataset2], weights=[0.5, 0.5])
		```
		
		One possible outcome of elements in sample_dataset is:
		
		```
		print(list(sample_dataset.as_numpy_iterator()))
		# [100, 0, 1, 101, 2, 102]
		```
		
		Args:
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  weights: (Optional.) A list or Tensor of `len(datasets)` floating-point
		    values where `weights[i]` represents the probability to sample from
		    `datasets[i]`, or a `tf.data.Dataset` object where each element is such a
		    list. Defaults to a uniform distribution across `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		  stop_on_empty_dataset: If `True`, sampling stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set it
		    to `True`. Otherwise, the distribution of samples starts off as the user
		    intends, but may change as input datasets become empty. This can be
		    difficult to detect since the dataset starts off looking correct. Default
		    to `False` for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according to
		  `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError:
		    - If `datasets` is empty, or
		    - If `weights` is specified and does not match the length of `datasets`.
	**/
	static public function sample_from_datasets_v1(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	/**
		Samples elements at random from the datasets in `datasets`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.sample_from_datasets(...)`.
		
		Creates a dataset by interleaving elements of `datasets` with `weight[i]`
		probability of picking an element from dataset `i`. Sampling is done without
		replacement. For example, suppose we have 2 datasets:
		
		```python
		dataset1 = tf.data.Dataset.range(0, 3)
		dataset2 = tf.data.Dataset.range(100, 103)
		```
		
		Suppose also that we sample from these 2 datasets with the following weights:
		
		```python
		sample_dataset = tf.data.Dataset.sample_from_datasets(
		    [dataset1, dataset2], weights=[0.5, 0.5])
		```
		
		One possible outcome of elements in sample_dataset is:
		
		```
		print(list(sample_dataset.as_numpy_iterator()))
		# [100, 0, 1, 101, 2, 102]
		```
		
		Args:
		  datasets: A non-empty list of `tf.data.Dataset` objects with compatible
		    structure.
		  weights: (Optional.) A list or Tensor of `len(datasets)` floating-point
		    values where `weights[i]` represents the probability to sample from
		    `datasets[i]`, or a `tf.data.Dataset` object where each element is such a
		    list. Defaults to a uniform distribution across `datasets`.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		  stop_on_empty_dataset: If `True`, sampling stops if it encounters an empty
		    dataset. If `False`, it skips empty datasets. It is recommended to set it
		    to `True`. Otherwise, the distribution of samples starts off as the user
		    intends, but may change as input datasets become empty. This can be
		    difficult to detect since the dataset starts off looking correct. Default
		    to `False` for backward compatibility.
		
		Returns:
		  A dataset that interleaves elements from `datasets` at random, according to
		  `weights` if provided, otherwise with uniform probability.
		
		Raises:
		  TypeError: If the `datasets` or `weights` arguments have the wrong type.
		  ValueError:
		    - If `datasets` is empty, or
		    - If `weights` is specified and does not match the length of `datasets`.
	**/
	static public function sample_from_datasets_v2(datasets:Dynamic, ?weights:Dynamic, ?seed:Dynamic, ?stop_on_empty_dataset:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}