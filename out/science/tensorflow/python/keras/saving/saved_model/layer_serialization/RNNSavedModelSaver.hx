/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.layer_serialization;
@:pythonImport("tensorflow.python.keras.saving.saved_model.layer_serialization", "RNNSavedModelSaver") extern class RNNSavedModelSaver {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(obj:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Generates or retrieves serialized attributes from cache.
	**/
	public function _get_serialized_attributes(serialization_cache:Dynamic):Dynamic;
	/**
		Returns dictionary of serialized attributes.
	**/
	public function _get_serialized_attributes_internal(serialization_cache:Dynamic):Dynamic;
	/**
		Returns dictionary of all python properties.
	**/
	public function _python_properties_internal():Dynamic;
	/**
		Returns extra functions to include when serializing a Keras object.
		
		Normally, when calling exporting an object to SavedModel, only the
		functions and objects defined by the user are saved. For example:
		
		```
		obj = tf.Module()
		obj.v = tf.Variable(1.)
		
		@tf.function
		def foo(...): ...
		
		obj.foo = foo
		
		w = tf.Variable(1.)
		
		tf.saved_model.save(obj, 'path/to/saved/model')
		loaded = tf.saved_model.load('path/to/saved/model')
		
		loaded.v  # Variable with the same value as obj.v
		loaded.foo  # Equivalent to obj.foo
		loaded.w  # AttributeError
		```
		
		Assigning trackable objects to attributes creates a graph, which is used for
		both checkpointing and SavedModel serialization.
		
		When the graph generated from attribute tracking is insufficient, extra
		objects and functions may be added at serialization time. For example,
		most models do not have their call function wrapped with a @tf.function
		decorator. This results in `model.call` not being saved. Since Keras objects
		should be revivable from the SavedModel format, the call function is added
		as an extra function to serialize.
		
		This function and `objects_to_serialize` is called multiple times when
		exporting to SavedModel. Please use the cache to avoid generating new
		functions and objects. A fresh cache is created for each SavedModel export.
		
		Args:
		  serialization_cache: Dictionary passed to all objects in the same object
		    graph during serialization.
		
		Returns:
		    A dictionary mapping attribute names to `Function` or
		    `ConcreteFunction`.
	**/
	public function functions_to_serialize(serialization_cache:Dynamic):Dynamic;
	/**
		Lists extra dependencies to serialize to SavedModel.
		
		By overriding this method, extra dependencies can be attached to the
		serialized Layer. For example, this is used to save the list of `variables`
		and `trainable_variables`, which are python properties in a Layer object,
		but are represented as a static list in the SavedModel.
		
		Args:
		  serialization_cache: A dictionary shared between all objects in the same
		    object graph. This object is passed to both
		    `_list_extra_dependencies_for_serialization` and
		    `_list_functions_for_serialization`.
		
		Returns:
		  A dictionary mapping attribute names to trackable objects. The entire list
		  of attributes are listed in the `saved_model._LayerAttributes` class.
	**/
	public function list_extra_dependencies_for_serialization(serialization_cache:Dynamic):Dynamic;
	/**
		Lists extra functions to serialize to the SavedModel.
		
		Args:
		  serialization_cache: Dictionary passed to all objects in the same object
		    graph during serialization.
		
		Returns:
		    A dictionary mapping attribute names to `Function` or
		    `ConcreteFunction`.
	**/
	public function list_functions_for_serialization(serialization_cache:Dynamic):Dynamic;
	/**
		String stored in object identifier field in the SavedModel proto.
		
		Returns:
		  A string with the object identifier, which is used at load time.
	**/
	public var object_identifier : Dynamic;
	/**
		Returns dictionary of extra checkpointable objects to serialize.
		
		See `functions_to_serialize` for an explanation of this function's
		effects.
		
		Args:
		  serialization_cache: Dictionary passed to all objects in the same object
		    graph during serialization.
		
		Returns:
		    A dictionary mapping attribute names to checkpointable objects.
	**/
	public function objects_to_serialize(serialization_cache:Dynamic):Dynamic;
	/**
		Returns dictionary of python properties to save in the metadata.
		
		This dictionary must be serializable and deserializable to/from JSON.
		
		When loading, the items in this dict are used to initialize the object and
		define attributes in the revived object.
	**/
	public var python_properties : Dynamic;
	/**
		String stored in metadata field in the SavedModel proto.
		
		Returns:
		  A serialized JSON storing information necessary for recreating this layer.
	**/
	public var tracking_metadata : Dynamic;
}