/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.filter_for_shard_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.filter_for_shard_ops") extern class Filter_for_shard_ops_Module {
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
		Creates a `Dataset` that includes only 1/`num_shards` of this dataset.
		
		This dataset operator is very useful when running distributed training, as
		it allows each worker to read a unique subset.
		
		When reading a single input file, you can skip elements as follows:
		
		```python
		d = tf.data.TFRecordDataset(FLAGS.input_file)
		d = d.apply(tf.data.experimental.naive_shard(FLAGS.num_workers,
		                                             FLAGS.worker_index))
		d = d.repeat(FLAGS.num_epochs)
		d = d.shuffle(FLAGS.shuffle_buffer_size)
		d = d.map(parser_fn, num_parallel_calls=FLAGS.num_map_threads)
		```
		
		Important caveats:
		
		- Be sure to shard before you use any randomizing operator (such as
		  shuffle).
		- Generally it is best if the shard operator is used early in the dataset
		  pipeline. For example, when reading from a set of TFRecord files, shard
		  before converting the dataset to input samples. This avoids reading every
		  file on every worker. The following is an example of an efficient
		  sharding strategy within a complete pipeline:
		
		```python
		d = Dataset.list_files(FLAGS.pattern)
		d = d.apply(tf.data.experimental.naive_shard(FLAGS.num_workers,
		                                             FLAGS.worker_index))
		d = d.repeat(FLAGS.num_epochs)
		d = d.shuffle(FLAGS.shuffle_buffer_size)
		d = d.interleave(tf.data.TFRecordDataset,
		                 cycle_length=FLAGS.num_readers, block_length=1)
		d = d.map(parser_fn, num_parallel_calls=FLAGS.num_map_threads)
		```
		
		Args:
		  num_shards: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    shards operating in parallel.
		  shard_index: A `tf.int64` scalar `tf.Tensor`, representing the worker index.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if `num_shards` or `shard_index` are illegal values. Note: error
		    checking is done on a best-effort basis, and errors aren't guaranteed to
		    be caught upon dataset creation. (e.g. providing in a placeholder tensor
		    bypasses the early checking, and will instead result in an error during
		    a session.run call.)
	**/
	static public function filter_for_shard(num_shards:Dynamic, shard_index:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}