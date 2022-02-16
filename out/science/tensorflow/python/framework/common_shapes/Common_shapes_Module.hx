/* This file is generated, do not edit! */
package tensorflow.python.framework.common_shapes;
@:pythonImport("tensorflow.python.framework.common_shapes") extern class Common_shapes_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper functions for is_broadcast_compatible and broadcast_shape.
		
		Args:
		  shape_x: A `TensorShape`
		  shape_y: A `TensorShape`
		
		Returns:
		  Returns None if the shapes are not broadcast compatible,
		  a list of the broadcast dimensions otherwise.
	**/
	static public function _broadcast_shape_helper(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the broadcasted shape between `shape_x` and `shape_y`.
		
		Args:
		  shape_x: A `TensorShape`
		  shape_y: A `TensorShape`
		
		Returns:
		  A `TensorShape` representing the broadcasted shape.
		
		Raises:
		  ValueError: If the two shapes can not be broadcasted.
	**/
	static public function broadcast_shape(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns True if `shape_x` and `shape_y` are broadcast compatible.
		
		Args:
		  shape_x: A `TensorShape`
		  shape_y: A `TensorShape`
		
		Returns:
		  True if a shape exists that both `shape_x` and `shape_y` can be broadcasted
		  to.  False otherwise.
	**/
	static public function is_broadcast_compatible(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}