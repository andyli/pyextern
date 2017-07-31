/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.utils.generic_utils;
@:pythonImport("tensorflow.contrib.keras.python.keras.utils.generic_utils") extern class Generic_utils_Module {
	static public var _GLOBAL_CUSTOM_OBJECTS : Dynamic;
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
		Provides a scope that changes to `_GLOBAL_CUSTOM_OBJECTS` cannot escape.
		
		Convenience wrapper for `CustomObjectScope`.
		Code within a `with` statement will be able to access custom objects
		by name. Changes to global custom objects persist
		within the enclosing `with` statement. At end of the `with` statement,
		global custom objects are reverted to state
		at beginning of the `with` statement.
		
		Example:
		
		Consider a custom object `MyObject`
		
		```python
		    with custom_object_scope({"MyObject":MyObject}):
		        layer = Dense(..., W_regularizer="MyObject")
		        # save, load, etc. will recognize custom object by name
		```
		
		Arguments:
		    *args: Variable length list of dictionaries of name,
		        class pairs to add to custom objects.
		
		Returns:
		    Object of type `CustomObjectScope`.
	**/
	static public function custom_object_scope(?args:python.VarArgs<Dynamic>):Dynamic;
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
	/**
		Retrieves a live reference to the global dictionary of custom objects.
		
		Updating and clearing custom objects using `custom_object_scope`
		is preferred, but `get_custom_objects` can
		be used to directly access `_GLOBAL_CUSTOM_OBJECTS`.
		
		Example:
		
		```python
		    get_custom_objects().clear()
		    get_custom_objects()["MyObject"] = MyObject
		```
		
		Returns:
		    Global dictionary of names to classes (`_GLOBAL_CUSTOM_OBJECTS`).
	**/
	static public function get_custom_objects():Dynamic;
	static public function make_tuple(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
}