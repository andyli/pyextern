/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.iterator_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.iterator_ops", "CheckpointInputPipelineHook") extern class CheckpointInputPipelineHook {
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
		Initializes a `CheckpointInputPipelineHook`.
		
		If the input pipeline depends on external state (e.g. seeds for
		RandomUniform) beyond the input pipeline, this hook would be unable to
		serialize and deserialize that state. If its acceptable to ignore that state
		change the external_state_policy argument to 'warn' or 'ignore'. For e.g.
		
		```python
		est = tf.estimator.Estimator(model_fn)
		while True:
		  est.train(
		      train_input_fn,
		      hooks=[tf.data.experimental.CheckpointInputPipelineHook(
		          est, external_state_policy='warn')],
		      steps=train_steps_per_eval)
		  # Note: We do not pass the hook here.
		  metrics = est.evaluate(eval_input_fn)
		  if should_stop_the_training(metrics):
		    break
		```
		
		Args:
		  estimator: Estimator.
		  external_state_policy: A string that identifies how to handle input
		    pipelines that depend on external state. Possible values are
		    'ignore': The external state is silently ignored.
		    'warn': The external state is ignored, logging a warning.
		    'fail': The operation fails upon encountering external state.
		    By default we set it to 'fail'.
		
		Raises:
		  ValueError: One of `save_steps` or `save_secs` should be set.
		  ValueError: At most one of saver or scaffold should be set.
		  ValueError: If `external_state_policy` is not one of 'warn', 'ignore' or
		    'fail'.
	**/
	@:native("__init__")
	public function ___init__(estimator:Dynamic, ?external_state_policy:Dynamic):Dynamic;
	/**
		Initializes a `CheckpointInputPipelineHook`.
		
		If the input pipeline depends on external state (e.g. seeds for
		RandomUniform) beyond the input pipeline, this hook would be unable to
		serialize and deserialize that state. If its acceptable to ignore that state
		change the external_state_policy argument to 'warn' or 'ignore'. For e.g.
		
		```python
		est = tf.estimator.Estimator(model_fn)
		while True:
		  est.train(
		      train_input_fn,
		      hooks=[tf.data.experimental.CheckpointInputPipelineHook(
		          est, external_state_policy='warn')],
		      steps=train_steps_per_eval)
		  # Note: We do not pass the hook here.
		  metrics = est.evaluate(eval_input_fn)
		  if should_stop_the_training(metrics):
		    break
		```
		
		Args:
		  estimator: Estimator.
		  external_state_policy: A string that identifies how to handle input
		    pipelines that depend on external state. Possible values are
		    'ignore': The external state is silently ignored.
		    'warn': The external state is ignored, logging a warning.
		    'fail': The operation fails upon encountering external state.
		    By default we set it to 'fail'.
		
		Raises:
		  ValueError: One of `save_steps` or `save_secs` should be set.
		  ValueError: At most one of saver or scaffold should be set.
		  ValueError: If `external_state_policy` is not one of 'warn', 'ignore' or
		    'fail'.
	**/
	public function new(estimator:Dynamic, ?external_state_policy:Dynamic):Void;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
	public function _restore_or_save_initial_ckpt(session:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Called when new TensorFlow session is created.
		
		This is called to signal the hooks that a new session has been created. This
		has two essential differences with the situation in which `begin` is called:
		
		* When this is called, the graph is finalized and ops can no longer be added
		    to the graph.
		* This method will also be called as a result of recovering a wrapped
		    session, not only at the beginning of the overall session.
		
		Args:
		  session: A TensorFlow Session that has been created.
		  coord: A Coordinator object which keeps track of all threads.
	**/
	public function after_create_session(session:Dynamic, coord:Dynamic):Dynamic;
	/**
		Called after each call to run().
		
		The `run_values` argument contains results of requested ops/tensors by
		`before_run()`.
		
		The `run_context` argument is the same one send to `before_run` call.
		`run_context.request_stop()` can be called to stop the iteration.
		
		If `session.run()` raises any exceptions then `after_run()` is not called.
		
		Args:
		  run_context: A `SessionRunContext` object.
		  run_values: A SessionRunValues object.
	**/
	public function after_run(run_context:Dynamic, run_values:Dynamic):Dynamic;
	/**
		Called before each call to run().
		
		You can return from this call a `SessionRunArgs` object indicating ops or
		tensors to add to the upcoming `run()` call.  These ops/tensors will be run
		together with the ops/tensors originally passed to the original run() call.
		The run args you return can also contain feeds to be added to the run()
		call.
		
		The `run_context` argument is a `SessionRunContext` that provides
		information about the upcoming `run()` call: the originally requested
		op/tensors, the TensorFlow Session.
		
		At this point graph is finalized and you can not add ops.
		
		Args:
		  run_context: A `SessionRunContext` object.
		
		Returns:
		  None or a `SessionRunArgs` object.
	**/
	public function before_run(run_context:Dynamic):Dynamic;
	/**
		Called once before using the session.
		
		When called, the default graph is the one that will be launched in the
		session.  The hook can modify the graph by adding new operations to it.
		After the `begin()` call the graph will be finalized and the other callbacks
		can not modify the graph anymore. Second call of `begin()` on the same
		graph, should not change the graph.
	**/
	public function begin():Dynamic;
	/**
		Called at the end of session.
		
		The `session` argument can be used in case the hook wants to run final ops,
		such as saving a last checkpoint.
		
		If `session.run()` raises exception other than OutOfRangeError or
		StopIteration then `end()` is not called.
		Note the difference between `end()` and `after_run()` behavior when
		`session.run()` raises OutOfRangeError or StopIteration. In that case
		`end()` is called but `after_run()` is not called.
		
		Args:
		  session: A TensorFlow Session that will be soon closed.
	**/
	public function end(session:Dynamic):Dynamic;
}