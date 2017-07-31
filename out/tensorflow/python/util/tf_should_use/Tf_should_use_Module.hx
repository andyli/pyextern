/* This file is generated, do not edit! */
package tensorflow.python.util.tf_should_use;
@:pythonImport("tensorflow.python.util.tf_should_use") extern class Tf_should_use_Module {
	static public var _REF_INFO : Dynamic;
	static public var _REF_ITER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wraps object x so that if it is never used, a warning is logged.
		
		Args:
		  x: Python object.
		  fatal_error: Python bool.  If `True`, tf.logging.fatal is raised
		    if the returned value is never used.
		
		Returns:
		  An instance of `TFShouldUseWarningWrapper` which subclasses `type(x)`
		  and is a very shallow wrapper for `x` which logs access into `x`.
	**/
	static public function _add_should_use_warning(x:Dynamic, ?fatal_error:Dynamic):Dynamic;
	static public function _deleted(obj_id:Dynamic, fatal_error:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Function wrapper that ensures the function's output is used.
		
		If the output is not used, a `tf.logging.fatal` error is raised.
		
		An output is marked as used if any of its attributes are read, modified, or
		updated.  Examples when the output is a `Tensor` include:
		
		- Using it in any capacity (e.g. `y = t + 0`, `sess.run(t)`)
		- Accessing a property (e.g. getting `t.name` or `t.op`).
		
		Note, certain behaviors cannot be tracked - for these the object may not
		be marked as used.  Examples include:
		
		- `t != 0`.  In this case, comparison is done on types / ids.
		- `isinstance(t, tf.Tensor)`.  Similar to above.
		
		Args:
		  fn: The function to wrap.
		
		Returns:
		  The wrapped function.
	**/
	static public function must_use_result_or_fatal(fn:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Function wrapper that ensures the function's output is used.
		
		If the output is not used, a `tf.logging.error` is logged.
		
		An output is marked as used if any of its attributes are read, modified, or
		updated.  Examples when the output is a `Tensor` include:
		
		- Using it in any capacity (e.g. `y = t + 0`, `sess.run(t)`)
		- Accessing a property (e.g. getting `t.name` or `t.op`).
		
		Note, certain behaviors cannot be tracked - for these the object may not
		be marked as used.  Examples include:
		
		- `t != 0`.  In this case, comparison is done on types / ids.
		- `isinstance(t, tf.Tensor)`.  Similar to above.
		
		Args:
		  fn: The function to wrap.
		
		Returns:
		  The wrapped function.
	**/
	static public function should_use_result(fn:Dynamic):Dynamic;
}