/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_dispatch;
@:pythonImport("tensorflow.python.ops.ragged.ragged_dispatch") extern class Ragged_dispatch_Module {
	static public var _V2_OPS_THAT_ARE_DELEGATED_TO_FROM_V1_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _op_is_in_tf_version(op:Dynamic, version:Dynamic):Dynamic;
	/**
		Returns a signature for the given op, marking ragged args in bold.
	**/
	static public function _ragged_op_signature(op:Dynamic, ragged_args:Dynamic, ?ragged_varargs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Binary elementwise api handler for RaggedTensors.
	**/
	static public function ragged_binary_elementwise_op(op:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Returns a string listing operations that have dispathers registered.
	**/
	static public function ragged_op_list(?tf_version:Dynamic):Dynamic;
	/**
		Unary elementwise api handler for RaggedTensors.
	**/
	static public function ragged_unary_elementwise_op(op:Dynamic, x:Dynamic):Dynamic;
}