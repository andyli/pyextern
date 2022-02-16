/* This file is generated, do not edit! */
package tensorflow.python.autograph.lang.directives;
@:pythonImport("tensorflow.python.autograph.lang.directives") extern class Directives_Module {
	static public var UNSPECIFIED : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Indicates that the entity is expected hold items of specified type/shape.
		
		The staged TensorFlow ops will reflect and assert this data type. Ignored
		otherwise.
		
		Args:
		  entity: The entity to annotate.
		  dtype: TensorFlow dtype value to assert for entity.
		  shape: Optional shape to assert for entity.
	**/
	static public function set_element_type(entity:Dynamic, dtype:Dynamic, ?shape:Dynamic):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}