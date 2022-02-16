/* This file is generated, do not edit! */
package tensorflow.lite.python.schema_util;
@:pythonImport("tensorflow.lite.python.schema_util") extern class Schema_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Return the builtin code of the given operator code.
		
		The following method is introduced to resolve op builtin code shortage
		problem. The new builtin operator will be assigned to the extended builtin
		code field in the flatbuffer schema. Those methods helps to hide builtin code
		details.
		
		Args:
		  opcode: Operator code.
		
		Returns:
		  The builtin code of the given operator code.
	**/
	static public function get_builtin_code_from_operator_code(opcode:Dynamic):Dynamic;
}