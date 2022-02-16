/* This file is generated, do not edit! */
package tensorflow.python.keras.callbacks_v1;
@:pythonImport("tensorflow.python.keras.callbacks_v1", "TensorBoard") extern class TensorBoard {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?log_dir:Dynamic, ?histogram_freq:Dynamic, ?batch_size:Dynamic, ?write_graph:Dynamic, ?write_grads:Dynamic, ?write_images:Dynamic, ?embeddings_freq:Dynamic, ?embeddings_layer_names:Dynamic, ?embeddings_metadata:Dynamic, ?embeddings_data:Dynamic, ?update_freq:Dynamic, ?profile_batch:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?log_dir:Dynamic, ?histogram_freq:Dynamic, ?batch_size:Dynamic, ?write_graph:Dynamic, ?write_grads:Dynamic, ?write_images:Dynamic, ?embeddings_freq:Dynamic, ?embeddings_layer_names:Dynamic, ?embeddings_metadata:Dynamic, ?embeddings_data:Dynamic, ?update_freq:Dynamic, ?profile_batch:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _close_writers():Dynamic;
	public function _collect_learning_rate(logs:Dynamic):Dynamic;
	public function _compute_steps_per_second():Dynamic;
	/**
		Configure the Projector for embeddings.
	**/
	public function _configure_embeddings():Dynamic;
	/**
		Deletes tmp write directories for multi-worker.
	**/
	public function _delete_tmp_write_dir():Dynamic;
	public function _fetch_callback(summary:Dynamic):Dynamic;
	/**
		For multi-worker, only chief should write, others write to '/tmp'.
	**/
	public function _get_log_write_dir():Dynamic;
	/**
		Determines if this Callback should be called for each predict batch.
	**/
	public function _implements_predict_batch_hooks():Dynamic;
	/**
		Determines if this Callback should be called for each test batch.
	**/
	public function _implements_test_batch_hooks():Dynamic;
	/**
		Determines if this Callback should be called for each train batch.
	**/
	public function _implements_train_batch_hooks():Dynamic;
	/**
		Validate profile_batch value and set the range of batches to profile.
		Sets values of _start_batch and _stop_batch attributes,
		specifying the start and stop batch to profile.
		Setting `profile_batch=0` disables profiling.
		
		Args:
		  profile_batch: The range of batches to profile. Should be a non-negative
		    integer or a comma separated string of pair of positive integers. A pair
		    of positive integers signify a range of batches to profile.
		
		Raises:
		  ValueError: If profile_batch is not an integer or a comma seperated pair
		              of positive integers.
	**/
	public function _init_profile_batch(profile_batch:Dynamic):Dynamic;
	/**
		Sets file writer.
	**/
	public function _init_writer(model:Dynamic):Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	public function _log_embeddings(epoch:Dynamic):Dynamic;
	/**
		Writes epoch metrics out as scalar summaries.
		
		Args:
		    epoch: Int. The global step to use for TensorBoard.
		    logs: Dict. Keys are scalar summary names, values are scalars.
	**/
	public function _log_epoch_metrics(epoch:Dynamic, logs:Dynamic):Dynamic;
	/**
		Logs a weight as a TensorBoard image.
	**/
	public function _log_weight_as_image(weight:Dynamic, weight_name:Dynamic, epoch:Dynamic):Dynamic;
	/**
		Logs the weights of the Model to TensorBoard.
	**/
	public function _log_weights(epoch:Dynamic):Dynamic;
	/**
		Defines histogram ops when histogram_freq > 0.
	**/
	public function _make_histogram_ops(model:Dynamic):Dynamic;
	/**
		Pops the current writer.
	**/
	public function _pop_writer():Dynamic;
	/**
		Sets the default writer for custom batch-level summaries.
	**/
	public function _push_writer(writer:Dynamic, step:Dynamic):Dynamic;
	/**
		Starts the profiler if currently inactive.
	**/
	public function _start_profiler():Dynamic;
	public function _start_trace():Dynamic;
	/**
		Stops the profiler if currently active.
	**/
	public function _stop_profiler():Dynamic;
	/**
		Logs the trace graph to TensorBoard.
	**/
	public function _stop_trace(?batch:Dynamic):Dynamic;
	public var _train_writer : Dynamic;
	public var _val_writer : Dynamic;
	/**
		Handle arguments were supported in V1.
	**/
	public function _validate_kwargs(kwargs:Dynamic):Dynamic;
	/**
		Writes metrics out as custom scalar summaries.
		
		Args:
		    step: the global step to use for TensorBoard.
		    logs: dict. Keys are scalar summary names, values are
		        NumPy scalars.
	**/
	public function _write_custom_summaries(step:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Writes Keras graph network summary to TensorBoard.
	**/
	public function _write_keras_model_summary():Dynamic;
	/**
		Writes Keras model train_function graph to TensorBoard.
	**/
	public function _write_keras_model_train_graph():Dynamic;
	/**
		A backwards compatibility alias for `on_train_batch_begin`.
	**/
	public function on_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Writes scalar summaries for metrics on every training batch.
		
		Performs profiling if current batch is in profiler_batches.
	**/
	public function on_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Add histogram op to Model eval_function callbacks, reset batch count.
	**/
	public function on_epoch_begin(epoch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Checks if summary ops should run next epoch, logs scalar summaries.
	**/
	public function on_epoch_end(epoch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of a batch in `predict` methods.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.predict_step`,
		      it typically returns a dict with a key 'outputs' containing
		      the model's outputs.
	**/
	public function on_predict_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the end of a batch in `predict` methods.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_predict_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of prediction.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_predict_begin(?logs:Dynamic):Dynamic;
	/**
		Called at the end of prediction.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_predict_end(?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of a batch in `evaluate` methods.
		
		Also called at the beginning of a validation batch in the `fit`
		methods, if validation data is provided.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.test_step`. Typically,
		      the values of the `Model`'s metrics are returned.  Example:
		      `{'loss': 0.2, 'accuracy': 0.7}`.
	**/
	public function on_test_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the end of a batch in `evaluate` methods.
		
		Also called at the end of a validation batch in the `fit`
		methods, if validation data is provided.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_test_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of evaluation or validation.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_test_begin(?logs:Dynamic):Dynamic;
	/**
		Called at the end of evaluation or validation.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently the output of the last call to
		      `on_test_batch_end()` is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_test_end(?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of a training batch in `fit` methods.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.train_step`. Typically,
		      the values of the `Model`'s metrics are returned.  Example:
		      `{'loss': 0.2, 'accuracy': 0.7}`.
	**/
	public function on_train_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the end of a training batch in `fit` methods.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_train_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of training.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_train_begin(?logs:Dynamic):Dynamic;
	/**
		Called at the end of training.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently the output of the last call to `on_epoch_end()`
		      is passed to this argument for this method but that may change in
		      the future.
	**/
	public function on_train_end(?logs:Dynamic):Dynamic;
	/**
		Sets Keras model and creates summary ops.
	**/
	public function set_model(model:Dynamic):Dynamic;
	public function set_params(params:Dynamic):Dynamic;
}