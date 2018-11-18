/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.generic_utils;
@:pythonImport("tensorflow.python.keras.utils.generic_utils") extern class Generic_utils_Module {
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
		    with custom_object_scope({'MyObject':MyObject}):
		        layer = Dense(..., kernel_regularizer='MyObject')
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
		    get_custom_objects()['MyObject'] = MyObject
		```
		
		Returns:
		    Global dictionary of names to classes (`_GLOBAL_CUSTOM_OBJECTS`).
	**/
	static public function get_custom_objects():Dynamic;
	/**
		Checks if a callable accepts a given keyword argument.
		
		Arguments:
		    fn: Callable to inspect.
		    name: Check if `fn` can be called with `name` as a keyword argument.
		    accept_all: What to return if there is no parameter called `name`
		                but the function accepts a `**kwargs` argument.
		
		Returns:
		    bool, whether `fn` accepts a `name` keyword argument.
	**/
	static public function has_arg(fn:Dynamic, name:Dynamic, ?accept_all:Dynamic):Dynamic;
	static public function is_all_none(iterable_or_element:Dynamic):Dynamic;
	/**
		Returns a list of batch indices (tuples of indices).
		
		Arguments:
		    size: Integer, total size of the data to slice into batches.
		    batch_size: Integer, batch size.
		
		Returns:
		    A list of tuples of array indices.
	**/
	static public function make_batches(size:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Creates a single string from object ids.
	**/
	static public function object_list_uid(object_list:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	/**
		Slice an array or list of arrays.
		
		This takes an array-like, or a list of
		array-likes, and outputs:
		    - arrays[start:stop] if `arrays` is an array-like
		    - [x[start:stop] for x in arrays] if `arrays` is a list
		
		Can also work on list/array of indices: `slice_arrays(x, indices)`
		
		Arguments:
		    arrays: Single array or list of arrays.
		    start: can be an integer index (start index)
		        or a list/array of indices
		    stop: integer (stop index); should be None if
		        `start` was a list.
		
		Returns:
		    A slice of the array(s).
		
		Raises:
		    ValueError: If the value of start is a list and stop is not None.
	**/
	static public function slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		Arguments:
		    x: target object to be normalized.
		
		Returns:
		    A list.
	**/
	static public function to_list(x:Dynamic):Dynamic;
	static public function to_snake_case(name:Dynamic):Dynamic;
}