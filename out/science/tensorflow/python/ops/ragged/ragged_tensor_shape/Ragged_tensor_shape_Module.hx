/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_tensor_shape;
@:pythonImport("tensorflow.python.ops.ragged.ragged_tensor_shape") extern class Ragged_tensor_shape_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Broadcasts rt_input to the ragged shape `dst_shape`.
	**/
	static public function _broadcast_to_ragged_shape(rt_input:Dynamic, dst_shape:Dynamic, broadcast_inner_dimensions:Dynamic):Dynamic;
	/**
		Broadcasts rt_input to the uniform shape `shape`.
	**/
	static public function _broadcast_to_uniform_shape(rt_input:Dynamic, shape:Dynamic, broadcast_inner_dimensions:Dynamic):Dynamic;
	/**
		Tile a dimension of a RaggedTensor to match a ragged shape.
	**/
	static public function _ragged_tile_axis(rt_input:Dynamic, axis:Dynamic, repeats:Dynamic, row_splits_dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the shape formed by broadcasting two shapes to be compatible.
		
		Args:
		  shape_x: A `RaggedTensorDynamicShape`
		  shape_y: A `RaggedTensorDynamicShape`
		
		Returns:
		  A `RaggedTensorDynamicShape`.
		Raises:
		  ValueError: If `shape_x` and `shape_y` are not broadcast-compatible.
	**/
	static public function broadcast_dynamic_shape(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		Broadcasts a potentially ragged tensor to a ragged shape.
		
		Tiles `rt_input` as necessary to match the given shape.
		
		Behavior is undefined if `rt_input` is not broadcast-compatible with `shape`.
		
		Args:
		  rt_input: The potentially ragged tensor to broadcast.
		  shape: A `RaggedTensorDynamicShape`
		  broadcast_inner_dimensions: If false, then inner dimensions will not be
		    tiled.
		
		Returns:
		  A potentially ragged tensor whose values are taken from
		  `rt_input`, and whose shape matches `shape`.
	**/
	static public function broadcast_to(rt_input:Dynamic, shape:Dynamic, ?broadcast_inner_dimensions:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}