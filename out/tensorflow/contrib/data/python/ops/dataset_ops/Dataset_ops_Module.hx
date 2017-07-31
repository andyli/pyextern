/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.dataset_ops;
@:pythonImport("tensorflow.contrib.data.python.ops.dataset_ops") extern class Dataset_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculate the per-class acceptance rates.
		
		Args:
		  initial_probs: The class probabilities of the data.
		  target_probs: The desired class proportion in minibatches.
		Returns:
		  A list of the per-class acceptance probabilities.
		
		This method is based on solving the following analysis:
		
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
		
		
		A solution for a_i in terms of the other variabes is the following:
		  ```a_i = (t_i / p_i) / max_i[t_i / p_i]```
	**/
	static public function _calculate_acceptance_probs(initial_probs:Dynamic, target_probs:Dynamic):Dynamic;
	/**
		Estimate data distribution as labels are seen.
		
		Args:
		  c: The class labels.  Type `int32`, shape `[batch_size]`.
		  num_examples_per_class_seen: A `ResourceVariable` containing counts.
		    Type `int64`, shape `[num_classes]`.
		
		Returns:
		  dist: The updated distribution.  Type `float32`, shape `[num_classes]`.
	**/
	static public function _estimate_data_distribution(c:Dynamic, num_examples_per_class_seen:Dynamic):Dynamic;
	/**
		Parse list of file names from pattern, optionally shuffled.
		
		Args:
		  file_pattern: File glob pattern, or list of glob patterns.
		  randomize_input: Whether to shuffle the order of file names.
		
		Returns:
		  List of file names matching `file_pattern`.
		
		Raises:
		  ValueError: If `file_pattern` is empty, or pattern matches no files.
	**/
	static public function _get_file_names(file_pattern:Dynamic, randomize_input:Dynamic):Dynamic;
	/**
		Returns the most specific shape compatible with `s1` and `s2`.
	**/
	static public function _most_specific_compatible_shape(s1:Dynamic, s2:Dynamic):Dynamic;
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
	static public function _parse_example(serialized:Dynamic, features:Dynamic):Dynamic;
	static public function _partial_shape_to_tensor(shape_like:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads batches of Examples.
		
		Example:
		
		```
		serialized_examples = [
		  features {
		    feature { key: "age" value { int64_list { value: [ 0 ] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		    feature { key: "kws" value { bytes_list { value: [ "code", "art" ] } } }
		  },
		  features {
		    feature { key: "age" value { int64_list { value: [] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		    feature { key: "kws" value { bytes_list { value: [ "sports" ] } } }
		  }
		]
		```
		
		We can use arguments:
		
		```
		features: {
		  "age": FixedLenFeature([], dtype=tf.int64, default_value=-1),
		  "gender": FixedLenFeature([], dtype=tf.string),
		  "kws": VarLenFeature(dtype=tf.string),
		}
		```
		
		And the expected output is:
		
		```python
		{
		  "age": [[0], [-1]],
		  "gender": [["f"], ["f"]],
		  "kws": SparseTensor(
		    indices=[[0, 0], [0, 1], [1, 0]],
		    values=["code", "art", "sports"]
		    dense_shape=[2, 2]),
		}
		```
		
		Args:
		  file_pattern: List of files or patterns of file paths containing
		    `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int representing the number of consecutive elements of this
		    dataset to combine in a single batch.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. See `tf.parse_example`.
		  reader: A function or class that can be called with a `filenames` tensor
		    and (optional) `reader_args` and returns a `Dataset` of serialized
		    Examples.
		  reader_args: Additional arguments to pass to the reader class.
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever.
		  capacity: Capacity of the ShuffleDataset. A large capacity ensures better
		    shuffling but would increase memory usage and startup time.
		
		Returns:
		  A dict from keys in features to Tensor or SparseTensor objects.
	**/
	static public function read_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?reader_args:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?capacity:Dynamic):Dynamic;
	/**
		Resamples this dataset to achieve a target class distribution.
		
		**NOTE** Resampling is performed via rejection sampling; some fraction
		of the input values will be dropped.
		
		Args:
		  dataset: A `Dataset` object.
		  class_func: A function mapping a nested structure of tensors (having
		    shapes and types defined by `dataset.output_shapes` and
		    `dataset.output_types`) to a scalar `tf.int32` tensor.  Values should
		    be in `[0, num_classes)`.
		  target_dist: A floating point type tensor, shaped `[num_classes].
		  initial_dist: (Optional.)  A floating point type tensor, shaped
		    `[num_classes]`.  If not provided, the true class distribution is
		    estimated live in a streaming fashion.
		  seed: (Optional.) Python integer seed for the resampler.
		
		Returns:
		  A `Dataset`.
	**/
	static public function rejection_resample(dataset:Dynamic, class_func:Dynamic, target_dist:Dynamic, ?initial_dist:Dynamic, ?seed:Dynamic):Dynamic;
}