/* This file is generated, do not edit! */
package tensorflow.python.profiler.trace;
@:pythonImport("tensorflow.python.profiler.trace", "Trace") extern class Trace {
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
	public function __exit__(exc_type:Dynamic, exc_val:Dynamic, exc_tb:Dynamic):Dynamic;
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
		Creates a trace event in the profiler.
		
		Args:
		  name: The name of the trace event.
		  **kwargs: Keyword arguments added to the trace event.
		            Both the key and value are of types that
		            can be converted to strings, which will be
		            interpreted by the profiler according to the
		            traceme name.
		
		  Example usage:
		
		  ```python
		
		    tf.profiler.experimental.start('logdir')
		    for step in range(num_steps):
		      # Creates a trace event for each training step with the
		      # step number.
		      with tf.profiler.experimental.Trace("Train", step_num=step):
		        train_fn()
		    tf.profiler.experimental.stop()
		
		  ```
		  The example above uses the keyword argument "step_num" to specify the
		  training step being traced.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a trace event in the profiler.
		
		Args:
		  name: The name of the trace event.
		  **kwargs: Keyword arguments added to the trace event.
		            Both the key and value are of types that
		            can be converted to strings, which will be
		            interpreted by the profiler according to the
		            traceme name.
		
		  Example usage:
		
		  ```python
		
		    tf.profiler.experimental.start('logdir')
		    for step in range(num_steps):
		      # Creates a trace event for each training step with the
		      # step number.
		      with tf.profiler.experimental.Trace("Train", step_num=step):
		        train_fn()
		    tf.profiler.experimental.stop()
		
		  ```
		  The example above uses the keyword argument "step_num" to specify the
		  training step being traced.
	**/
	public function new(name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Sets metadata in this trace event.
		
		Args:
		  **kwargs: metadata in key-value pairs.
		
		This method enables setting metadata in a trace event after it is
		created.
		
		Example usage:
		
		```python
		
		  def call(function):
		    with tf.profiler.experimental.Trace("call",
		         function_name=function.name) as tm:
		      binary, in_cache = jit_compile(function)
		      tm.set_metadata(in_cache=in_cache)
		      execute(binary)
		
		```
		In this example, we want to trace how much time spent on
		calling a function, which includes compilation and execution.
		The compilation can be either getting a cached copy of the
		binary or actually generating the binary, which is indicated
		by the boolean "in_cache" returned by jit_compile(). We need
		to use set_metadata() to pass in_cache because we did not know
		the in_cache value when the trace was created (and we cannot
		create the trace after jit_compile(), because we want
		to measure the entire duration of call()).
	**/
	public function set_metadata(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}