/* This file is generated, do not edit! */
package tensorflow.python.profiler.trace;
@:pythonImport("tensorflow.python.profiler.trace") extern class Trace_Module {
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
	static public var enabled : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator alternative to `with Trace(): ...`.  It's faster.
		
		Args:
		  trace_name: The name of the trace event.
		  **trace_kwargs: Keyword arguments added to the trace event. Both the key and
		    value are of types that can be converted to strings, which will be
		    interpreted by the profiler according to the traceme name.
		
		Returns:
		  A decorator that can wrap a function and apply `Trace` scope if needed.
		
		Example usage:
		  ```python
		
		  @trace_wrapper('trace_name')
		  def func(x, y, z):
		    pass  # code to execute and apply `Trace` if needed.
		
		  # Equivalent to
		  # with Trace('trace_name'):
		  #   func(1, 2, 3)
		  func(1, 2, 3)
		  ```
	**/
	static public function trace_wrapper(trace_name:Dynamic, ?trace_kwargs:python.KwArgs<Dynamic>):Dynamic;
}