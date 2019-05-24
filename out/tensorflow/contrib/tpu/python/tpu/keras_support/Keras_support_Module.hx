/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.keras_support;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.keras_support") extern class Keras_support_Module {
	static public var _TEST_REWRITE_OP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a cloned optimizer with the provided optimizer.config or config.
	**/
	static public function _clone_optimizer(optimizer:Dynamic, ?config:Dynamic, ?worker_name:Dynamic):Dynamic;
	/**
		Concatenate `tensor` across cores.
		
		Args:
		  tensor: The tensor to be concatenated. Must be [int32 and float32].
		  core_id: Tensor indicating the current TPU core.
		  num_cores: Python int. The total number of TPU cores in the system.
		  name: The string name to print for debugging.
		
		Returns:
		  The same concatenated Tensor on each core.
	**/
	static public function _cross_replica_concat(tensor:Dynamic, core_id:Dynamic, num_cores:Dynamic, name:Dynamic):Dynamic;
	/**
		Append core information to the set of dataset inputs.
	**/
	static public function _inject_tpu_inputs_for_dataset(tpu_assignment:Dynamic, mode:Dynamic, input_specs:Dynamic, get_next_ops:Dynamic):Dynamic;
	/**
		Append core information to the set of inputs.
	**/
	static public function _inject_tpu_inputs_for_infeed(tpu_assignment:Dynamic, mode:Dynamic, core_id_place_holder:Dynamic, input_tensors:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Initialize the TPU if it has not already been initialized.
	**/
	static public function _maybe_initialize_tpu(session:Dynamic):Dynamic;
	/**
		Popping out the core ids from infeed.
	**/
	static public function _read_tpu_coreid_from_infeed(mode:Dynamic, infeed_tensors:Dynamic):Dynamic;
	/**
		Wrap the optimizer `opt` with CrossShardOptimizer if applicable.
	**/
	static public function _replicated_optimizer(opt:Dynamic):Dynamic;
	/**
		Initialize the TPU and cleans cache entries for bad sessions.
	**/
	static public function _tpu_session_context():Dynamic;
	/**
		Return a valid tensor name (strips '/', ':', etc).
	**/
	static public function _valid_name(tensor_name:Dynamic):Dynamic;
	/**
		Validate that all layers in `model` have constant shape.
	**/
	static public function _validate_shapes(model:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Decorator for marking functions or methods experimental.
		
		This decorator logs an experimental warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is experimental and may change or be removed at
		  any time, and without warning.
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (experimental)' is appended
		to the first line of the docstring and a notice is prepended to the rest of
		the docstring.
		
		Args:
		  func: A function or method to mark experimental.
		
		Returns:
		  Decorated function or method.
	**/
	static public function experimental(func:Dynamic):Dynamic;
	/**
		Retrieves TPU system metadata given a TPUClusterResolver.
	**/
	static public function get_tpu_system_metadata(tpu_cluster_resolver:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function issparse(x:Dynamic):Dynamic;
	/**
		Returns a list of batch indices (tuples of indices).
		
		Arguments:
		    size: Integer, total size of the data to slice into batches.
		    batch_size: Integer, batch size.
		
		Returns:
		    A list of tuples of array indices.
	**/
	static public function make_batches(size:Dynamic, batch_size:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Construct or return a `tf.Session` connected to the given cluster.
	**/
	static public function setup_tpu_session(cluster_resolver:Dynamic):Dynamic;
	/**
		Slice an array or list of arrays.
		
		This takes an array-like, or a list of
		array-likes, and outputs:
		    - arrays[start:stop] if `arrays` is an array-like
		    - [x[start:stop] for x in arrays] if `arrays` is a list
		
		Can also work on list/array of indices: `slice_arrays(x, indices)`
		
		Arguments:
		    arrays: Single array or list of arrays.
		    start: can be an integer index (start index)
		        or a list/array of indices
		    stop: integer (stop index); should be None if
		        `start` was a list.
		
		Returns:
		    A slice of the array(s).
		
		Raises:
		    ValueError: If the value of start is a list and stop is not None.
	**/
	static public function slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Copy `model` along with weights to the TPU. (experimental)
		
		Warning: THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		Returns a TPU model.
		
		Usage:
		```
		a = Input(shape=(32,))
		b = Dense(32)(a)
		model = Model(inputs=a, outputs=b)
		
		# If `num_cores_per_host` is greater than one, batch parallelism will be used
		# to run on multiple TPU cores.
		strategy = keras_support.TPUDistributionStrategy(tpu_cluster_resolver)
		model = keras_support.tpu_model(model, strategy)
		model.compile(
		    optimizer=tf.train.GradientDescentOptimizer(learning_rate=1.0),
		    ...)
		```
		
		Args:
		  model: A `tf.keras.Model` instance.
		  strategy: `TPUDistributionStrategy`.  The strategy to use for replicating
		    model across multiple TPU cores.
		
		Returns:
		  A new `KerasTPUModel` instance.
	**/
	static public function tpu_model(model:Dynamic, ?strategy:Dynamic):Dynamic;
}