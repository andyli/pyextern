/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.stats_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.stats_ops") extern class Stats_ops_Module {
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
		Records the number of bytes produced by each element of the input dataset.
		
		To consume the statistics, associate a `StatsAggregator` with the output
		dataset.
		
		Args:
		  tag: String. All statistics recorded by the returned transformation will
		    be associated with the given `tag`.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function bytes_produced_stats(tag:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Records the latency of producing each element of the input dataset.
		
		To consume the statistics, associate a `StatsAggregator` with the output
		dataset.
		
		Args:
		  tag: String. All statistics recorded by the returned transformation will
		    be associated with the given `tag`.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function latency_stats(tag:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Set the given `stats_aggregator` for aggregating the input dataset stats. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.StatsOptions`.
		
		Args:
		  stats_aggregator: A `tf.contrib.data.StatsAggregator` object.
		  prefix: (Optional) String, all statistics recorded for the input `dataset`
		    will have given `prefix` prepend with the name.
		  counter_prefix: (Optional) String, all statistics recorded as `counters`
		    will have the given `prefix` for the counter. Defaults to "/tensorflow".
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function set_stats_aggregator(stats_aggregator:Dynamic, ?prefix:Dynamic, ?counter_prefix:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}