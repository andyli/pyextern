/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.json_utils;
@:pythonImport("tensorflow.python.keras.saving.saved_model.json_utils") extern class Json_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		A decoding helper that is TF-object aware.
	**/
	static public function _decode_helper(obj:Dynamic):Dynamic;
	static public function _encode_tuple(x:Dynamic):Dynamic;
	static public function decode(json_string:Dynamic):Dynamic;
	/**
		Serializes any object to a JSON-serializable structure.
		
		Args:
		    obj: the object to serialize
		
		Returns:
		    JSON-serializable structure representing `obj`.
		
		Raises:
		    TypeError: if `obj` cannot be serialized.
	**/
	static public function get_json_type(obj:Dynamic):Dynamic;
}