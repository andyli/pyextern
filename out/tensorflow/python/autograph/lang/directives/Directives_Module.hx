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
		
		Args:
		  parallel_iterations: See tf.while_loop.
		  back_prop: See tf.while_loop.
		  swap_memory: See tf.while_loop.
		  maximum_iterations: See tf.while_loop.
	**/
	static public function set_loop_options(?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?maximum_iterations:Dynamic):Dynamic;
}