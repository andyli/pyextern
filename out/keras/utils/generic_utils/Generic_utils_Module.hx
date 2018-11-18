/* This file is generated, do not edit! */
package keras.utils.generic_utils;
@:pythonImport("keras.utils.generic_utils") extern class Generic_utils_Module {
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
		
		# Example
		
		Consider a custom object `MyObject`
		
		```python
		    with custom_object_scope({'MyObject':MyObject}):
		        layer = Dense(..., kernel_regularizer='MyObject')
		        # save, load, etc. will recognize custom object by name
		```
		
		# Arguments
		    *args: Variable length list of dictionaries of name,
		        class pairs to add to custom objects.
		
		# Returns
		    Object of type `CustomObjectScope`.
	**/
	static public function custom_object_scope(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Serializes a user defined function.
		
		# Arguments
		    func: the function to serialize.
		
		# Returns
		    A tuple `(code, defaults, closure)`.
	**/
	static public function func_dump(func:Dynamic):Dynamic;
	/**
		Deserializes a user defined function.
		
		# Arguments
		    code: bytecode of the function.
		    defaults: defaults of the function.
		    closure: closure of the function.
		    globs: dictionary of global objects.
		
		# Returns
		    A function object.
	**/
	static public function func_load(code:Dynamic, ?defaults:Dynamic, ?closure:Dynamic, ?globs:Dynamic):Dynamic;
	/**
		Retrieves a live reference to the global dictionary of custom objects.
		
		Updating and clearing custom objects using `custom_object_scope`
		is preferred, but `get_custom_objects` can
		be used to directly access `_GLOBAL_CUSTOM_OBJECTS`.
		
		# Example
		
		```python
		    get_custom_objects().clear()
		    get_custom_objects()['MyObject'] = MyObject
		```
		
		# Returns
		    Global dictionary of names to classes (`_GLOBAL_CUSTOM_OBJECTS`).
	**/
	static public function get_custom_objects():Dynamic;
	/**
		Checks if a callable accepts a given keyword argument.
		
		For Python 2, checks if there is an argument with the given name.
		
		For Python 3, checks if there is an argument with the given name, and
		also whether this argument can be called with a keyword (i.e. if it is
		not a positional-only argument).
		
		# Arguments
		    fn: Callable to inspect.
		    name: Check if `fn` can be called with `name` as a keyword argument.
		    accept_all: What to return if there is no parameter called `name`
		                but the function accepts a `**kwargs` argument.
		
		# Returns
		    bool, whether `fn` accepts a `name` keyword argument.
	**/
	static public function has_arg(fn:Dynamic, name:Dynamic, ?accept_all:Dynamic):Dynamic;
	static public function is_all_none(iterable_or_element:Dynamic):Dynamic;
	static public function object_list_uid(object_list:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	/**
		Slices an array or list of arrays.
		
		This takes an array-like, or a list of
		array-likes, and outputs:
		    - arrays[start:stop] if `arrays` is an array-like
		    - [x[start:stop] for x in arrays] if `arrays` is a list
		
		Can also work on list/array of indices: `_slice_arrays(x, indices)`
		
		# Arguments
		    arrays: Single array or list of arrays.
		    start: can be an integer index (start index)
		        or a list/array of indices
		    stop: integer (stop index); should be None if
		        `start` was a list.
		
		# Returns
		    A slice of the array(s).
	**/
	static public function slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		# Arguments
		    x: target object to be normalized.
		    allow_tuple: If False and x is a tuple,
		        it will be converted into a list
		        with a single element (the tuple).
		        Else converts the tuple to a list.
		
		# Returns
		    A list.
	**/
	static public function to_list(x:Dynamic, ?allow_tuple:Dynamic):Dynamic;
	/**
		Converts a tuple or a list to the correct `data_format`.
		
		It does so by switching the positions of its elements.
		
		# Arguments
		    shape: Tuple or list, often representing shape,
		        corresponding to `'channels_last'`.
		    target_format: A string, either `'channels_first'` or `'channels_last'`.
		    spatial_axes: A tuple of integers.
		        Correspond to the indexes of the spatial axes.
		        For example, if you pass a shape
		        representing (batch_size, timesteps, rows, cols, channels),
		        then `spatial_axes=(2, 3)`.
		
		# Returns
		    A tuple or list, with the elements permuted according
		    to `target_format`.
		
		# Example
		```python
		    >>> from keras.utils.generic_utils import transpose_shape
		    >>> transpose_shape((16, 128, 128, 32),'channels_first', spatial_axes=(1, 2))
		    (16, 32, 128, 128)
		    >>> transpose_shape((16, 128, 128, 32), 'channels_last', spatial_axes=(1, 2))
		    (16, 128, 128, 32)
		    >>> transpose_shape((128, 128, 32), 'channels_first', spatial_axes=(0, 1))
		    (32, 128, 128)
		```
		
		# Raises
		    ValueError: if `value` or the global `data_format` invalid.
	**/
	static public function transpose_shape(shape:Dynamic, target_format:Dynamic, spatial_axes:Dynamic):Dynamic;
	/**
		Gets the first element if the iterable has only one value.
		
		Otherwise return the iterable.
		
		# Argument:
		    x: A list or tuple.
		
		# Returns:
		    The same iterable or the first element.
	**/
	static public function unpack_singleton(x:Dynamic):Dynamic;
}