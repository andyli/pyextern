/* This file is generated, do not edit! */
package tensorflow.python.training.monitored_session;
@:pythonImport("tensorflow.python.training.monitored_session", "MonitoredSession") extern class MonitoredSession {
	/**
		Control flow instrument for the `step_fn` from `run_step_fn()`.
		
		Users of `step_fn` may perform `run()` calls without running hooks
		by accessing the `session`.  A `run()` call with hooks may be performed
		using `run_with_hooks()`.  Computation flow can be interrupted using
		`request_stop()`.
	**/
	static public function StepContext(session:Dynamic, run_with_hooks_fn:Dynamic):Dynamic;
	/**
		Factory for _CoordinatedSession.
	**/
	static public function _CoordinatedSessionCreator(session_creator:Dynamic, hooks:Dynamic, stop_grace_period_secs:Dynamic):Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exception_type:Dynamic, exception_value:Dynamic, traceback:Dynamic):Dynamic;
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
		Sets up a Monitored or Hooked Session.
		
		Args:
		  session_creator: A factory object to create session. Typically a
		    `ChiefSessionCreator` or a `WorkerSessionCreator`.
		  hooks: An iterable of `SessionRunHook' objects.
		  should_recover: A bool. Indicates whether to recover from `AbortedError`
		    and `UnavailableError` or not.
		  stop_grace_period_secs: Number of seconds given to threads to stop after
		    `close()` has been called.
	**/
	@:native("__init__")
	public function ___init__(?session_creator:Dynamic, ?hooks:Dynamic, ?stop_grace_period_secs:Dynamic):Dynamic;
	/**
		Sets up a Monitored or Hooked Session.
		
		Args:
		  session_creator: A factory object to create session. Typically a
		    `ChiefSessionCreator` or a `WorkerSessionCreator`.
		  hooks: An iterable of `SessionRunHook' objects.
		  should_recover: A bool. Indicates whether to recover from `AbortedError`
		    and `UnavailableError` or not.
		  stop_grace_period_secs: Number of seconds given to threads to stop after
		    `close()` has been called.
	**/
	public function new(?session_creator:Dynamic, ?hooks:Dynamic, ?stop_grace_period_secs:Dynamic):Void;
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
	public function _close_internal(?exception_type:Dynamic):Dynamic;
	/**
		Return True if the monitored session is closed.
		
		For tests only.
		
		Returns:
		  A boolean.
	**/
	public function _is_closed():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Return underlying tf.compat.v1.Session object.
		
		Warning: accessing the returned object in user code is likely to cause races
		or "flaky tests".
		
		Returns:
		  A tf.compat.v1.Session object.
	**/
	public function _tf_sess():Dynamic;
	public function close():Dynamic;
	/**
		The graph that was launched in this session.
	**/
	public var graph : Dynamic;
	/**
		Run ops in the monitored session.
		
		This method is completely compatible with the `tf.Session.run()` method.
		
		Args:
		  fetches: Same as `tf.Session.run()`.
		  feed_dict: Same as `tf.Session.run()`.
		  options: Same as `tf.Session.run()`.
		  run_metadata: Same as `tf.Session.run()`.
		
		Returns:
		  Same as `tf.Session.run()`.
	**/
	public function run(fetches:Dynamic, ?feed_dict:Dynamic, ?options:Dynamic, ?run_metadata:Dynamic):Dynamic;
	/**
		Run ops using a step function.
		
		Args:
		  step_fn: A function or a method with a single argument of type
		    `StepContext`.  The function may use methods of the argument to perform
		    computations with access to a raw session.  The returned value of the
		    `step_fn` will be returned from `run_step_fn`, unless a stop is
		    requested.  In that case, the next `should_stop` call will return True.
		    Example usage:
		        ```python
		        with tf.Graph().as_default():
		          c = tf.compat.v1.placeholder(dtypes.float32)
		          v = tf.add(c, 4.0)
		          w = tf.add(c, 0.5)
		          def step_fn(step_context):
		            a = step_context.session.run(fetches=v, feed_dict={c: 0.5})
		            if a <= 4.5:
		              step_context.request_stop()
		              return step_context.run_with_hooks(fetches=w,
		                                                 feed_dict={c: 0.1})
		
		          with tf.MonitoredSession() as session:
		            while not session.should_stop():
		              a = session.run_step_fn(step_fn)
		        ```
		        Hooks interact with the `run_with_hooks()` call inside the
		             `step_fn` as they do with a `MonitoredSession.run` call.
		
		Returns:
		  Returns the returned value of `step_fn`.
		
		Raises:
		  StopIteration: if `step_fn` has called `request_stop()`.  It may be
		    caught by `with tf.MonitoredSession()` to close the session.
		  ValueError: if `step_fn` doesn't have a single argument called
		    `step_context`. It may also optionally have `self` for cases when it
		    belongs to an object.
	**/
	public function run_step_fn(step_fn:Dynamic):Dynamic;
	public function should_stop():Dynamic;
}