/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.generic_utils;
@:pythonImport("tensorflow.python.keras.utils.generic_utils") extern class Generic_utils_Module {
	static public var SHARED_OBJECT_DISABLED : Dynamic;
	static public var SHARED_OBJECT_KEY : Dynamic;
	static public var SHARED_OBJECT_LOADING : Dynamic;
	static public var SHARED_OBJECT_SAVING : Dynamic;
	static public var _GLOBAL_CUSTOM_NAMES : Dynamic;
	static public var _GLOBAL_CUSTOM_OBJECTS : Dynamic;
	static public var _LAYER_UNDEFINED_CONFIG_KEY : Dynamic;
	static public var _SKIP_FAILED_SERIALIZATION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get whether shared object handling is disabled in a threadsafe manner.
	**/
	static public function _shared_object_disabled():Dynamic;
	/**
		Get the current shared object saving scope in a threadsafe manner.
	**/
	static public function _shared_object_loading_scope():Dynamic;
	/**
		Get the current shared object saving scope in a threadsafe manner.
	**/
	static public function _shared_object_saving_scope():Dynamic;
	static public function check_for_unexpected_keys(name:Dynamic, input_dict:Dynamic, expected_values:Dynamic):Dynamic;
	/**
		Returns the class name and config for a serialized keras object.
	**/
	static public function class_and_config_for_serialized_keras_object(config:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Decorates a method to detect overrides in subclasses.
	**/
	@:native("default")
	static public function _default(method:Dynamic):Dynamic;
	/**
		Turns the serialized form of a Keras object back into an actual object.
		
		This function is for mid-level library implementers rather than end users.
		
		Importantly, this utility requires you to provide the dict of `module_objects`
		to use for looking up the object config; this is not populated by default.
		If you need a deserialization utility that has preexisting knowledge of
		built-in Keras objects, use e.g. `keras.layers.deserialize(config)`,
		`keras.metrics.deserialize(config)`, etc.
		
		Calling `deserialize_keras_object` while underneath the
		`SharedObjectLoadingScope` context manager will cause any already-seen shared
		objects to be returned as-is rather than creating a new object.
		
		Args:
		  identifier: the serialized form of the object.
		  module_objects: A dictionary of built-in objects to look the name up in.
		    Generally, `module_objects` is provided by midlevel library implementers.
		  custom_objects: A dictionary of custom objects to look the name up in.
		    Generally, `custom_objects` is provided by the end user.
		  printable_module_name: A human-readable string representing the type of the
		    object. Printed in case of exception.
		
		Returns:
		  The deserialized object.
		
		Example:
		
		A mid-level library implementer might want to implement a utility for
		retrieving an object from its config, as such:
		
		```python
		def deserialize(config, custom_objects=None):
		   return deserialize_keras_object(
		     identifier,
		     module_objects=globals(),
		     custom_objects=custom_objects,
		     name="MyObjectType",
		   )
		```
		
		This is how e.g. `keras.layers.deserialize()` is implemented.
	**/
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Serializes a user defined function.
		
		Args:
		    func: the function to serialize.
		
		Returns:
		    A tuple `(code, defaults, closure)`.
	**/
	static public function func_dump(func:Dynamic):Dynamic;
	/**
		Deserializes a user defined function.
		
		Args:
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
		be used to directly access the current collection of custom objects.
		
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
		Returns the item if it is in either local or global custom objects.
	**/
	static public function get_custom_objects_by_name(item:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Returns the name registered to an object within the Keras framework.
		
		This function is part of the Keras serialization and deserialization
		framework. It maps objects to the string names associated with those objects
		for serialization/deserialization.
		
		Args:
		  obj: The object to look up.
		
		Returns:
		  The name associated with the object, or the default Python name if the
		    object is not registered.
	**/
	static public function get_registered_name(obj:Dynamic):Dynamic;
	/**
		Returns the class associated with `name` if it is registered with Keras.
		
		This function is part of the Keras serialization and deserialization
		framework. It maps strings to the objects associated with them for
		serialization/deserialization.
		
		Example:
		```
		def from_config(cls, config, custom_objects=None):
		  if 'my_custom_object_name' in config:
		    config['hidden_cls'] = tf.keras.utils.get_registered_object(
		        config['my_custom_object_name'], custom_objects=custom_objects)
		```
		
		Args:
		  name: The name to look up.
		  custom_objects: A dictionary of custom objects to look the name up in.
		    Generally, custom_objects is provided by the user.
		  module_objects: A dictionary of custom objects to look the name up in.
		    Generally, module_objects is provided by midlevel library implementers.
		
		Returns:
		  An instantiable class associated with 'name', or None if no such class
		    exists.
	**/
	static public function get_registered_object(name:Dynamic, ?custom_objects:Dynamic, ?module_objects:Dynamic):Dynamic;
	/**
		Checks if a callable accepts a given keyword argument.
		
		Args:
		    fn: Callable to inspect.
		    name: Check if `fn` can be called with `name` as a keyword argument.
		    accept_all: What to return if there is no parameter called `name` but the
		      function accepts a `**kwargs` argument.
		
		Returns:
		    bool, whether `fn` accepts a `name` keyword argument.
	**/
	static public function has_arg(fn:Dynamic, name:Dynamic, ?accept_all:Dynamic):Dynamic;
	static public function is_all_none(structure:Dynamic):Dynamic;
	/**
		Check if a method is decorated with the `default` wrapper.
	**/
	static public function is_default(method:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a list of batch indices (tuples of indices).
		
		Args:
		    size: Integer, total size of the data to slice into batches.
		    batch_size: Integer, batch size.
		
		Returns:
		    A list of tuples of array indices.
	**/
	static public function make_batches(size:Dynamic, batch_size:Dynamic):Dynamic;
	static public function populate_dict_with_module_objects(target_dict:Dynamic, modules:Dynamic, obj_filter:Dynamic):Dynamic;
	/**
		Registers an object with the Keras serialization framework.
		
		This decorator injects the decorated class or function into the Keras custom
		object dictionary, so that it can be serialized and deserialized without
		needing an entry in the user-provided custom object dict. It also injects a
		function that Keras will call to get the object's serializable string key.
		
		Note that to be serialized and deserialized, classes must implement the
		`get_config()` method. Functions do not have this requirement.
		
		The object will be registered under the key 'package>name' where `name`,
		defaults to the object name if not passed.
		
		Args:
		  package: The package that this class belongs to.
		  name: The name to serialize this class under in this package. If None, the
		    class' name will be used.
		
		Returns:
		  A decorator that registers the decorated class with the passed names.
	**/
	static public function register_keras_serializable(?_package:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the serialization of the class with the given config.
	**/
	static public function serialize_keras_class_and_config(cls_name:Dynamic, cls_config:Dynamic, ?obj:Dynamic, ?shared_object_id:Dynamic):Dynamic;
	/**
		Serialize a Keras object into a JSON-compatible representation.
		
		Calls to `serialize_keras_object` while underneath the
		`SharedObjectSavingScope` context manager will cause any objects re-used
		across multiple layers to be saved with a special shared object ID. This
		allows the network to be re-created properly during deserialization.
		
		Args:
		  instance: The object to serialize.
		
		Returns:
		  A dict-like, JSON-compatible representation of the object's config.
	**/
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	static public function skip_failed_serialization():Dynamic;
	/**
		Slice an array or list of arrays.
		
		This takes an array-like, or a list of
		array-likes, and outputs:
		    - arrays[start:stop] if `arrays` is an array-like
		    - [x[start:stop] for x in arrays] if `arrays` is a list
		
		Can also work on list/array of indices: `slice_arrays(x, indices)`
		
		Args:
		    arrays: Single array or list of arrays.
		    start: can be an integer index (start index) or a list/array of indices
		    stop: integer (stop index); should be None if `start` was a list.
		
		Returns:
		    A slice of the array(s).
		
		Raises:
		    ValueError: If the value of start is a list and stop is not None.
	**/
	static public function slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		Args:
		    x: target object to be normalized.
		
		Returns:
		    A list.
	**/
	static public function to_list(x:Dynamic):Dynamic;
	static public function to_snake_case(name:Dynamic):Dynamic;
	/**
		Determines whether config appears to be a valid layer config.
	**/
	static public function validate_config(config:Dynamic):Dynamic;
	/**
		Checks that all keyword arguments are in the set of allowed keys.
	**/
	static public function validate_kwargs(kwargs:Dynamic, allowed_kwargs:Dynamic, ?error_message:Dynamic):Dynamic;
}