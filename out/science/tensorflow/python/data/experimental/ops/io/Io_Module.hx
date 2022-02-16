/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.io;
@:pythonImport("tensorflow.python.data.experimental.ops.io") extern class Io_Module {
	static public var COMPRESSION_GZIP : Dynamic;
	static public var COMPRESSION_SNAPPY : Dynamic;
	static public var DATASET_SPEC_FILENAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Sets parameters for SaveDatasetOp and SaveDatasetV2Op.
	**/
	static public function _set_save_dataset_attributes(dataset:Dynamic, shard_func:Dynamic, path:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Loads a previously saved dataset.
		
		Example usage:
		
		>>> import tempfile
		>>> path = os.path.join(tempfile.gettempdir(), "saved_data")
		>>> # Save a dataset
		>>> dataset = tf.data.Dataset.range(2)
		>>> tf.data.experimental.save(dataset, path)
		>>> new_dataset = tf.data.experimental.load(path)
		>>> for elem in new_dataset:
		...   print(elem)
		tf.Tensor(0, shape=(), dtype=int64)
		tf.Tensor(1, shape=(), dtype=int64)
		
		
		Note that to load a previously saved dataset, you need to specify
		`element_spec` -- a type signature of the elements of the saved dataset, which
		can be obtained via `tf.data.Dataset.element_spec`. This requirement exists so
		that shape inference of the loaded dataset does not need to perform I/O.
		
		If the default option of sharding the saved dataset was used, the element
		order of the saved dataset will be preserved when loading it.
		
		The `reader_func` argument can be used to specify a custom order in which
		elements should be loaded from the individual shards. The `reader_func` is
		expected to take a single argument -- a dataset of datasets, each containing
		elements of one of the shards -- and return a dataset of elements. For
		example, the order of shards can be shuffled when loading them as follows:
		
		```python
		def custom_reader_func(datasets):
		  datasets = datasets.shuffle(NUM_SHARDS)
		  return datasets.interleave(lambda x: x, num_parallel_calls=AUTOTUNE)
		
		dataset = tf.data.experimental.load(
		    path="/path/to/data", ..., reader_func=custom_reader_func)
		```
		
		Args:
		  path: Required. A path pointing to a previously saved dataset.
		  element_spec: Optional. A nested structure of `tf.TypeSpec` objects matching
		    the structure of an element of the saved dataset and specifying the type
		    of individual element components. If not provided, the nested structure of
		    `tf.TypeSpec` saved with the saved dataset is used.
		  compression: Optional. The algorithm to use to decompress the data when
		    reading it. Supported options are `GZIP` and `NONE`. Defaults to `NONE`.
		  reader_func: Optional. A function to control how to read data from shards.
		    If present, the function will be traced and executed as graph computation.
		
		Returns:
		  A `tf.data.Dataset` instance.
		
		Raises:
		  FileNotFoundError: If `element_spec` is not specified and the saved nested
		    structure of `tf.TypeSpec` can not be located with the saved dataset.
	**/
	static public function load(path:Dynamic, ?element_spec:Dynamic, ?compression:Dynamic, ?reader_func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Saves the content of the given dataset.
		
		Example usage:
		
		>>> import tempfile
		>>> path = os.path.join(tempfile.gettempdir(), "saved_data")
		>>> # Save a dataset
		>>> dataset = tf.data.Dataset.range(2)
		>>> tf.data.experimental.save(dataset, path)
		>>> new_dataset = tf.data.experimental.load(path)
		>>> for elem in new_dataset:
		...   print(elem)
		tf.Tensor(0, shape=(), dtype=int64)
		tf.Tensor(1, shape=(), dtype=int64)
		
		The saved dataset is saved in multiple file "shards". By default, the dataset
		output is divided to shards in a round-robin fashion but custom sharding can
		be specified via the `shard_func` function. For example, you can save the
		dataset to using a single shard as follows:
		
		```python
		dataset = make_dataset()
		def custom_shard_func(element):
		  return 0
		dataset = tf.data.experimental.save(
		    path="/path/to/data", ..., shard_func=custom_shard_func)
		```
		
		To enable checkpointing, pass in `checkpoint_args` to the `save` method
		as follows:
		
		```python
		dataset = tf.data.Dataset.range(100)
		save_dir = "..."
		checkpoint_prefix = "..."
		step_counter = tf.Variable(0, trainable=False)
		checkpoint_args = {
		  "checkpoint_interval": 50,
		  "step_counter": step_counter,
		  "directory": checkpoint_prefix,
		  "max_to_keep": 20,
		}
		dataset.save(dataset, save_dir, checkpoint_args=checkpoint_args)
		```
		
		NOTE: The directory layout and file format used for saving the dataset is
		considered an implementation detail and may change. For this reason, datasets
		saved through `tf.data.experimental.save` should only be consumed through
		`tf.data.experimental.load`, which is guaranteed to be backwards compatible.
		
		Args:
		  dataset: The dataset to save.
		  path: Required. A directory to use for saving the dataset.
		  compression: Optional. The algorithm to use to compress data when writing
		    it. Supported options are `GZIP` and `NONE`. Defaults to `NONE`.
		  shard_func: Optional. A function to control the mapping of dataset elements
		    to file shards. The function is expected to map elements of the input
		    dataset to int64 shard IDs. If present, the function will be traced and
		    executed as graph computation.
		  checkpoint_args: Optional args for checkpointing which will be passed into
		    the `tf.train.CheckpointManager`. If `checkpoint_args` are not specified,
		    then checkpointing will not be performed. The `save()` implementation
		    creates a `tf.train.Checkpoint` object internally, so users should not
		    set the `checkpoint` argument in `checkpoint_args`.
		Raises:
		  ValueError if `checkpoint` is passed into `checkpoint_args`.
	**/
	static public function save(dataset:Dynamic, path:Dynamic, ?compression:Dynamic, ?shard_func:Dynamic, ?checkpoint_args:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}