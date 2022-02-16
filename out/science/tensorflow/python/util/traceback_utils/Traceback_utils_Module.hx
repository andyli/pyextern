/* This file is generated, do not edit! */
package tensorflow.python.util.traceback_utils;
@:pythonImport("tensorflow.python.util.traceback_utils") extern class Traceback_utils_Module {
	static public var _ENABLE_TRACEBACK_FILTERING : Dynamic;
	static public var _EXCLUDED_PATHS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _process_traceback_frames(tb:Dynamic):Dynamic;
	/**
		Disable filtering out TensorFlow-internal frames in exception stack traces.
		
		Raw TensorFlow stack traces involve many internal frames, which can be
		challenging to read through, while not being actionable for end users.
		By default, TensorFlow filters internal frames in most exceptions that it
		raises, to keep stack traces short, readable, and focused on what's
		actionable for end users (their own code).
		
		Calling `tf.debugging.disable_traceback_filtering` disables this filtering
		mechanism, meaning that TensorFlow exceptions stack traces will include
		all frames, in particular TensorFlow-internal ones.
		
		**If you are debugging a TensorFlow-internal issue, you need to call
		`tf.debugging.disable_traceback_filtering`**.
		To re-enable traceback filtering afterwards, you can call
		`tf.debugging.enable_traceback_filtering()`.
	**/
	static public function disable_traceback_filtering():Dynamic;
	/**
		Enable filtering out TensorFlow-internal frames in exception stack traces.
		
		Raw TensorFlow stack traces involve many internal frames, which can be
		challenging to read through, while not being actionable for end users.
		By default, TensorFlow filters internal frames in most exceptions that it
		raises, to keep stack traces short, readable, and focused on what's
		actionable for end users (their own code).
		
		If you have previously disabled traceback filtering via
		`tf.debugging.disable_traceback_filtering()`, you can re-enable it via
		`tf.debugging.enable_traceback_filtering()`.
		
		Raises:
		  RuntimeError: If Python version is not at least 3.7.
	**/
	static public function enable_traceback_filtering():Dynamic;
	/**
		Decorator to filter out TF-internal stack trace frames in exceptions.
		
		Raw TensorFlow stack traces involve many internal frames, which can be
		challenging to read through, while not being actionable for end users.
		By default, TensorFlow filters internal frames in most exceptions that it
		raises, to keep stack traces short, readable, and focused on what's
		actionable for end users (their own code).
		
		Arguments:
		  fn: The function or method to decorate. Any exception raised within the
		    function will be reraised with its internal stack trace frames filtered
		    out.
		
		Returns:
		  Decorated function or method.
	**/
	static public function filter_traceback(fn:Dynamic):Dynamic;
	static public function include_frame(fname:Dynamic):Dynamic;
	/**
		Check whether traceback filtering is currently enabled.
		
		See also `tf.debugging.enable_traceback_filtering()` and
		`tf.debugging.disable_traceback_filtering()`. Note that filtering out
		internal frames from the tracebacks of exceptions raised by TensorFlow code
		is the default behavior.
		
		Returns:
		  True if traceback filtering is enabled
		  (e.g. if `tf.debugging.enable_traceback_filtering()` was called),
		  and False otherwise (e.g. if `tf.debugging.disable_traceback_filtering()`
		  was called).
	**/
	static public function is_traceback_filtering_enabled():Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}