/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training;
@:pythonImport("tensorflow.python.keras.engine.training") extern class Training_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _collective_all_reduce_multi_worker(strategy:Dynamic):Dynamic;
	/**
		Returns path to weights file and save format.
	**/
	static public function _detect_save_format(filepath:Dynamic):Dynamic;
	static public function _disallow_inside_tf_function(method_name:Dynamic):Dynamic;
	static public function _is_per_replica_instance(obj:Dynamic):Dynamic;
	static public function _is_readable_tf_checkpoint(filepath:Dynamic):Dynamic;
	static public function _is_scalar(x:Dynamic):Dynamic;
	static public function _is_tpu_multi_host(strategy:Dynamic):Dynamic;
	/**
		Returns the minimum control dependencies to ensure step succeeded.
	**/
	static public function _minimum_control_deps(outputs:Dynamic):Dynamic;
	/**
		Order PerReplica objects for CollectiveAllReduceStrategy and concat.
	**/
	static public function _multi_worker_concat(v:Dynamic, strategy:Dynamic):Dynamic;
	/**
		Correctly order TPU PerReplica objects.
	**/
	static public function _tpu_multi_host_concat(v:Dynamic, strategy:Dynamic):Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		Args:
		    filepath: the path to the file to be overwritten.
		
		Returns:
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	/**
		Concats `tensor`s along `axis`.
	**/
	static public function concat(tensors:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Decorator that disallows multi-worker use of `method`.
	**/
	static public function disable_multi_worker(method:Dynamic):Dynamic;
	/**
		Turns the `logs` dict into a list as per key order of `metrics_names`.
	**/
	static public function flatten_metrics_in_order(logs:Dynamic, metrics_names:Dynamic):Dynamic;
	/**
		Inject `Functional` into the hierarchy of this class if needed.
	**/
	static public function inject_functional_model_class(cls:Dynamic):Dynamic;
	static public function is_functional_model_init_params(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert `PathLike` objects to their string representation.
		
		If given a non-string typed path object, converts it to its string
		representation.
		
		If the object passed to `path` is not among the above, then it is
		returned unchanged. This allows e.g. passthrough of file objects
		through this function.
		
		Args:
		  path: `PathLike` object that represents a path
		
		Returns:
		  A string representation of the path argument, if Python support exists.
	**/
	static public function path_to_string(path:Dynamic):Dynamic;
	/**
		Reduce PerReplica objects.
		
		Args:
		  values: Structure of `PerReplica` objects or `Tensor`s. `Tensor`s are
		    returned as-is.
		  strategy: `tf.distribute.Strategy` object.
		  reduction: One of 'first', 'concat'.
		
		Returns:
		  Structure of `Tensor`s.
	**/
	static public function reduce_per_replica(values:Dynamic, strategy:Dynamic, ?reduction:Dynamic):Dynamic;
	static public function saver_with_op_caching(obj:Dynamic):Dynamic;
	static public function write_scalar_summaries(logs:Dynamic, step:Dynamic):Dynamic;
}