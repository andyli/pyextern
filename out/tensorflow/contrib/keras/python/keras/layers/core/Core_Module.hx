/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.layers.core;
@:pythonImport("tensorflow.contrib.keras.python.keras.layers.core") extern class Core_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Serializes a user defined function.
		
		Arguments:
		    func: the function to serialize.
		
		Returns:
		    A tuple `(code, defaults, closure)`.
	**/
	static public function func_dump(func:Dynamic):Dynamic;
	/**
		Deserializes a user defined function.
		
		Arguments:
		    code: bytecode of the function.
		    defaults: defaults of the function.
		    closure: closure of the function.
		    globs: dictionary of global objects.
		
		Returns:
		    A function object.
	**/
	static public function func_load(code:Dynamic, ?defaults:Dynamic, ?closure:Dynamic, ?globs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}