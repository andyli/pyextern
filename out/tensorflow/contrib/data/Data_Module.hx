/* This file is generated, do not edit! */
package tensorflow.contrib.data;
@:pythonImport("tensorflow.contrib.data") extern class Data_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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