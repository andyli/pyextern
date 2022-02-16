/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.snapshot;
@:pythonImport("tensorflow.python.data.experimental.ops.snapshot") extern class Snapshot_Module {
	static public var COMPRESSION_GZIP : Dynamic;
	static public var COMPRESSION_NONE : Dynamic;
	static public var COMPRESSION_SNAPPY : Dynamic;
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
		Writes to/reads from a snapshot of a dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.snapshot(...)` instead.
		
		This function attempts to determine whether a valid snapshot exists at the
		`path`, and reads from the snapshot if so. If not, it will run the
		preprocessing pipeline as usual, and write out a snapshot of the data
		processed for future use.
		
		Args:
		  path: A directory where we want to save our snapshots and/or read from a
		    previously saved snapshot.
		  compression: The type of compression to apply to the Dataset. Currently
		    supports "GZIP" or None. Defaults to None (no compression).
		  reader_path_prefix: A prefix to add to the path when reading from snapshots.
		    Defaults to None.
		  writer_path_prefix: A prefix to add to the path when writing to snapshots.
		    Defaults to None.
		  shard_size_bytes: The size of each shard to be written by the snapshot
		    dataset op. Defaults to 10 GiB.
		  pending_snapshot_expiry_seconds: How long to wait (in seconds) before the
		    snapshot op considers a previously unfinished snapshot to be stale.
		  num_reader_threads: Number of threads to parallelize reading from snapshot.
		    Especially useful if compression is turned on since the decompression
		    operation tends to be intensive. Defaults to 1. If > 1, then this might
		    introduce non-determinism i.e. the order in which the elements are read
		    from the snapshot are different from the order they're written.
		  reader_buffer_size: Maximum number of elements we can prefetch reading from
		    the snapshot. Defaults to 1. Increasing this might improve performance but
		    will increase memory consumption.
		  num_writer_threads: Number of threads to parallelize writing from snapshot.
		    We'll open up `num_writer_threads` files and write to them in parallel.
		    Especially useful if compression is turned on since the compression
		    operation tends to be intensive. Defaults to 1. If > 1, then this might
		    introduce non-determinism i.e. the order in which the elements are read
		    from the upstream iterator are different from the order they're written.
		  writer_buffer_size: Maximum number of pipeline elements to fill up the
		    buffer before writing them out using `num_writer_threads`.
		  shuffle_on_read: If this is True, then the order in which examples are
		    produced when reading from a snapshot will be random. Defaults to False.
		  shuffle_seed: Optional. If shuffle_seed is set, the random number generator
		    used for shuffling (when shuffle_on_read is turned on) is seeded by the
		    given seed. Otherwise, it is seeded by a random seed that differs for
		    every run.
		  mode: The mode at which snapshot should operate. Valid options are "auto",
		    "read", "write", and "passthrough". The default mode is "auto", where the
		    snapshot op will automatically determine what mode to operate in.
		  snapshot_name: If set, use the supplied string as a named snapshot name
		    instead of introspecting the data pipeline and automatically generating a
		    unique identifier for the snapshot.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function legacy_snapshot(path:Dynamic, ?compression:Dynamic, ?reader_path_prefix:Dynamic, ?writer_path_prefix:Dynamic, ?shard_size_bytes:Dynamic, ?pending_snapshot_expiry_seconds:Dynamic, ?num_reader_threads:Dynamic, ?reader_buffer_size:Dynamic, ?num_writer_threads:Dynamic, ?writer_buffer_size:Dynamic, ?shuffle_on_read:Dynamic, ?shuffle_seed:Dynamic, ?mode:Dynamic, ?snapshot_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		API to persist the output of the input dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.snapshot(...)`.
		
		The snapshot API allows users to transparently persist the output of their
		preprocessing pipeline to disk, and materialize the pre-processed data on a
		different training run.
		
		This API enables repeated preprocessing steps to be consolidated, and allows
		re-use of already processed data, trading off disk storage and network
		bandwidth for freeing up more valuable CPU resources and accelerator compute
		time.
		
		https://github.com/tensorflow/community/blob/master/rfcs/20200107-tf-data-snapshot.md
		has detailed design documentation of this feature.
		
		Users can specify various options to control the behavior of snapshot,
		including how snapshots are read from and written to by passing in
		user-defined functions to the `reader_func` and `shard_func` parameters.
		
		`shard_func` is a user specified function that maps input elements to snapshot
		shards.
		
		Users may want to specify this function to control how snapshot files should
		be written to disk. Below is an example of how a potential shard_func could
		be written.
		
		```python
		dataset = ...
		dataset = dataset.enumerate()
		dataset = dataset.apply(tf.data.experimental.snapshot("/path/to/snapshot/dir",
		    shard_func=lambda x, y: x % NUM_SHARDS, ...))
		dataset = dataset.map(lambda x, y: y)
		```
		
		`reader_func` is a user specified function that accepts a single argument:
		(1) a Dataset of Datasets, each representing a "split" of elements of the
		original dataset. The cardinality of the input dataset matches the
		number of the shards specified in the `shard_func` (see above). The function
		should return a Dataset of elements of the original dataset.
		
		Users may want specify this function to control how snapshot files should be
		read from disk, including the amount of shuffling and parallelism.
		
		Here is an example of a standard reader function a user can define. This
		function enables both dataset shuffling and parallel reading of datasets:
		
		```python
		def user_reader_func(datasets):
		  # shuffle the datasets splits
		  datasets = datasets.shuffle(NUM_CORES)
		  # read datasets in parallel and interleave their elements
		  return datasets.interleave(lambda x: x, num_parallel_calls=AUTOTUNE)
		
		dataset = dataset.apply(tf.data.experimental.snapshot("/path/to/snapshot/dir",
		    reader_func=user_reader_func))
		```
		
		By default, snapshot parallelizes reads by the number of cores available on
		the system, but will not attempt to shuffle the data.
		
		Args:
		  path: Required. A directory to use for storing / loading the snapshot to /
		    from.
		  compression: Optional. The type of compression to apply to the snapshot
		    written to disk. Supported options are `GZIP`, `SNAPPY`, `AUTO` or None.
		    Defaults to AUTO, which attempts to pick an appropriate compression
		    algorithm for the dataset.
		  reader_func: Optional. A function to control how to read data from snapshot
		    shards.
		  shard_func: Optional. A function to control how to shard data when writing a
		    snapshot.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function snapshot(path:Dynamic, ?compression:Dynamic, ?reader_func:Dynamic, ?shard_func:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}