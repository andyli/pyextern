/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_squeeze_op;
@:pythonImport("tensorflow.python.ops.ragged.ragged_squeeze_op") extern class Ragged_squeeze_op_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ragged_squeeze_v1(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?squeeze_dims:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Ragged compatible squeeze.
		
		If `input` is a `tf.Tensor`, then this calls `tf.squeeze`.
		
		If `input` is a `tf.RaggedTensor`, then this operation takes `O(N)` time,
		where `N` is the number of elements in the squeezed dimensions.
		
		Args:
		  input: A potentially ragged tensor. The input to squeeze.
		  axis: An optional list of ints. Defaults to `None`. If the `input` is
		    ragged, it only squeezes the dimensions listed. It fails if `input` is
		    ragged and axis is []. If `input` is not ragged it calls tf.squeeze. Note
		    that it is an error to squeeze a dimension that is not 1. It must be in
		    the range of [-rank(input), rank(input)).
		 name: A name for the operation (optional).
		
		Returns:
		  A potentially ragged tensor. Contains the same data as input,
		  but has one or more dimensions of size 1 removed.
	**/
	static public function squeeze(input:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
}