/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.data.tfexample_decoder;
@:pythonImport("tensorflow.contrib.slim.python.slim.data.tfexample_decoder", "TFExampleDecoder") extern class TFExampleDecoder {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructs the decoder.
		
		Args:
		  keys_to_features: a dictionary from TF-Example keys to either
		    tf.VarLenFeature or tf.FixedLenFeature instances. See tensorflow's
		    parsing_ops.py.
		  items_to_handlers: a dictionary from items (strings) to ItemHandler
		    instances. Note that the ItemHandler's are provided the keys that they
		    use to return the final item Tensors.
	**/
	@:native("__init__")
	public function ___init__(keys_to_features:Dynamic, items_to_handlers:Dynamic):Dynamic;
	/**
		Constructs the decoder.
		
		Args:
		  keys_to_features: a dictionary from TF-Example keys to either
		    tf.VarLenFeature or tf.FixedLenFeature instances. See tensorflow's
		    parsing_ops.py.
		  items_to_handlers: a dictionary from items (strings) to ItemHandler
		    instances. Note that the ItemHandler's are provided the keys that they
		    use to return the final item Tensors.
	**/
	public function new(keys_to_features:Dynamic, items_to_handlers:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
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
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Decodes the given serialized TF-example.
		
		Args:
		  serialized_example: a serialized TF-example tensor.
		  items: the list of items to decode. These must be a subset of the item
		    keys in self._items_to_handlers. If `items` is left as None, then all
		    of the items in self._items_to_handlers are decoded.
		
		Returns:
		  the decoded items, a list of tensor.
	**/
	public function decode(serialized_example:Dynamic, ?items:Dynamic):Dynamic;
	/**
		See base class.
	**/
	public function list_items():Dynamic;
}