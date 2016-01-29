/* This file is generated, do not edit! */
package scipy.ndimage._ni_support;
@:pythonImport("scipy.ndimage._ni_support") extern class _Ni_support_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_axis(axis:Dynamic, rank:Dynamic):Dynamic;
	/**
		Convert an extension mode to the corresponding integer code.
		    
	**/
	static public function _extend_mode_to_code(mode:Dynamic):Dynamic;
	static public function _get_output(output:Dynamic, input:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		If input is a scalar, create a sequence of length equal to the
		rank by duplicating the input. If input is a sequence,
		check if its length is equal to the length of array.
	**/
	static public function _normalize_sequence(input:Dynamic, rank:Dynamic, ?array_type:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
}