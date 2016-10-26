/* This file is generated, do not edit! */
package tensorflow.python.util.protobuf.compare;
@:pythonImport("tensorflow.python.util.protobuf.compare") extern class Compare_Module {
	/**
		Normalizes types and precisions of number fields in a protocol buffer.
		
		Due to subtleties in the python protocol buffer implementation, it is possible
		for values to have different types and precision depending on whether they
		were set and retrieved directly or deserialized from a protobuf. This function
		normalizes integer values to ints and longs based on width, 32-bit floats to
		five digits of precision to account for python always storing them as 64-bit,
		and ensures doubles are floating point for when they're set to integers.
		
		Modifies pb in place. Recurses into nested objects.
		
		Args:
		  pb: proto2 message
		
		Returns:
		  the given pb, modified in place
	**/
	static public function NormalizeNumberFields(pb:Dynamic):Dynamic;
	/**
		Compares two proto2 objects for equality.
		
		Recurses into nested messages. Uses list (not set) semantics for comparing
		repeated fields, ie duplicates and order matter.
		
		Args:
		  a, b: proto2 messages or primitives
		
		Returns:
		  `True` if the messages are equal.
	**/
	static public function ProtoEq(a:Dynamic, b:Dynamic):Dynamic;
	static public function _IsMap(value:Dynamic):Dynamic;
	static public function _IsRepeatedContainer(value:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Fails with a useful error if a and b aren't equal.
		
		Comparison of repeated fields matches the semantics of
		unittest.TestCase.assertEqual(), ie order and extra duplicates fields matter.
		
		Args:
		  self: googletest.TestCase
		  a: proto2 PB instance, or text string representing one
		  b: proto2 PB instance -- message.Message or subclass thereof
		  check_initialized: boolean, whether to fail if either a or b isn't
		    initialized
		  normalize_numbers: boolean, whether to normalize types and precision of
		    numbers before comparison.
		  msg: if specified, is used as the error message on failure
	**/
	static public function assertProtoEqual(self:Dynamic, a:Dynamic, b:Dynamic, ?check_initialized:Dynamic, ?normalize_numbers:Dynamic, ?msg:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}