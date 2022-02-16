/* This file is generated, do not edit! */
package tensorflow.compat.v1.autograph.experimental;
@:pythonImport("tensorflow.compat.v1.autograph.experimental") extern class Experimental_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator that suppresses the conversion of a function.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  If `func` is not None, returns a `Callable` which is equivalent to
		  `func`, but is not converted by AutoGraph.
		  If `func` is None, returns a decorator that, when invoked with a
		  single `func` argument, returns a `Callable` equivalent to the
		  above case.
	**/
	static public function do_not_convert(?func:Dynamic):Dynamic;
	/**
		Specifies additional arguments to be passed to the enclosing while_loop.
		
		The parameters apply to and only to the immediately enclosing loop. It only
		has effect if the loop is staged as a TF while_loop; otherwise the parameters
		have no effect.
		
		Usage:
		
		  >>> @tf.function(autograph=True)
		  ... def f():
		  ...   n = 0
		  ...   for i in tf.range(10):
		  ...     tf.autograph.experimental.set_loop_options(maximum_iterations=3)
		  ...     n += 1
		  ...   return n
		
		  >>> @tf.function(autograph=True)
		  ... def f():
		  ...   v = tf.constant((0,))
		  ...   for i in tf.range(3):
		  ...     tf.autograph.experimental.set_loop_options(
		  ...         shape_invariants=[(v, tf.TensorShape([None]))]
		  ...     )
		  ...     v = tf.concat((v, [i]), 0)
		  ...   return v
		
		Also see tf.while_loop.
		
		Args:
		  parallel_iterations: The maximum number of iterations allowed to run in
		      parallel at any given time. Note that this does not guarantee parallel
		      execution.
		  swap_memory: Whether to store intermediate values needed for
		      gradients on the CPU instead of GPU.
		  maximum_iterations: Allows limiting the total number of iterations executed
		      by the loop.
		  shape_invariants: Allows controlling the argument with the same name passed
		      to tf.while_loop. Unlike tf.while_loop, this is a list of
		      `(tensor, shape)` pairs.
	**/
	static public function set_loop_options(?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?maximum_iterations:Dynamic, ?shape_invariants:Dynamic):Dynamic;
}