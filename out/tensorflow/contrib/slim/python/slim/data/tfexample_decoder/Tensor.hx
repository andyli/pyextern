/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.data.tfexample_decoder;
@:pythonImport("tensorflow.contrib.slim.python.slim.data.tfexample_decoder", "Tensor") extern class Tensor {
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
		Initializes the Tensor handler.
		
		Tensors are, by default, returned without any reshaping. However, there are
		two mechanisms which allow reshaping to occur at load time. If `shape_keys`
		is provided, both the `Tensor` corresponding to `tensor_key` and
		`shape_keys` is loaded and the former `Tensor` is reshaped with the values
		of the latter. Alternatively, if a fixed `shape` is provided, the `Tensor`
		corresponding to `tensor_key` is loaded and reshape appropriately.
		If neither `shape_keys` nor `shape` are provided, the `Tensor` will be
		returned without any reshaping.
		
		Args:
		  tensor_key: the name of the `TFExample` feature to read the tensor from.
		  shape_keys: Optional name or list of names of the TF-Example feature in
		    which the tensor shape is stored. If a list, then each corresponds to
		    one dimension of the shape.
		  shape: Optional output shape of the `Tensor`. If provided, the `Tensor` is
		    reshaped accordingly.
		  default_value: The value used when the `tensor_key` is not found in a
		    particular `TFExample`.
		
		Raises:
		  ValueError: if both `shape_keys` and `shape` are specified.
	**/
	@:native("__init__")
	public function ___init__(tensor_key:Dynamic, ?shape_keys:Dynamic, ?shape:Dynamic, ?default_value:Dynamic):Dynamic;
	/**
		Initializes the Tensor handler.
		
		Tensors are, by default, returned without any reshaping. However, there are
		two mechanisms which allow reshaping to occur at load time. If `shape_keys`
		is provided, both the `Tensor` corresponding to `tensor_key` and
		`shape_keys` is loaded and the former `Tensor` is reshaped with the values
		of the latter. Alternatively, if a fixed `shape` is provided, the `Tensor`
		corresponding to `tensor_key` is loaded and reshape appropriately.
		If neither `shape_keys` nor `shape` are provided, the `Tensor` will be
		returned without any reshaping.
		
		Args:
		  tensor_key: the name of the `TFExample` feature to read the tensor from.
		  shape_keys: Optional name or list of names of the TF-Example feature in
		    which the tensor shape is stored. If a list, then each corresponds to
		    one dimension of the shape.
		  shape: Optional output shape of the `Tensor`. If provided, the `Tensor` is
		    reshaped accordingly.
		  default_value: The value used when the `tensor_key` is not found in a
		    particular `TFExample`.
		
		Raises:
		  ValueError: if both `shape_keys` and `shape` are specified.
	**/
	public function new(tensor_key:Dynamic, ?shape_keys:Dynamic, ?shape:Dynamic, ?default_value:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public var keys : Dynamic;
	/**
		Maps the given dictionary of tensors to the requested item.
		
		Args:
		  keys_to_tensors: a mapping of TF-Example keys to parsed tensors.
		
		Returns:
		  the final tensor representing the item being handled.
	**/
	public function tensors_to_item(keys_to_tensors:Dynamic):Dynamic;
}