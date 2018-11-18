/* This file is generated, do not edit! */
package tensorflow.python.data.ops.iterator_ops;
@:pythonImport("tensorflow.python.data.ops.iterator_ops") extern class Iterator_ops_Module {
	static public var GET_NEXT_CALL_WARNING_MESSAGE : Dynamic;
	static public var GET_NEXT_CALL_WARNING_THRESHOLD : Dynamic;
	static public var GLOBAL_ITERATORS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _device_stack_is_empty():Dynamic;
	static public function _generate_shared_name(prefix:Dynamic):Dynamic;
	static public var _uid_counter : Dynamic;
	static public var _uid_lock : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns an `Optional` that contains the next value from the iterator.
		
		If `iterator` has reached the end of the sequence, the returned `Optional`
		will have no value.
		
		Args:
		  iterator: A `tf.data.Iterator` object.
		
		Returns:
		  An `Optional` object representing the next value from the iterator (if it
		  has one) or no value.
	**/
	static public function get_next_as_optional(iterator:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}