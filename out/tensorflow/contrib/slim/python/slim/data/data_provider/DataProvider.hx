/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.data.data_provider;
@:pythonImport("tensorflow.contrib.slim.python.slim.data.data_provider", "DataProvider") extern class DataProvider {
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
		Constructs the Data Provider.
		
		Args:
		  items_to_tensors: a dictionary of names to tensors.
		  num_samples: the number of samples in the dataset being provided.
	**/
	@:native("__init__")
	public function ___init__(items_to_tensors:Dynamic, num_samples:Dynamic):Dynamic;
	/**
		Constructs the Data Provider.
		
		Args:
		  items_to_tensors: a dictionary of names to tensors.
		  num_samples: the number of samples in the dataset being provided.
	**/
	public function new(items_to_tensors:Dynamic, num_samples:Dynamic):Void;
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
	/**
		Verifies that each given item is a member of the list from ListItems().
		
		Args:
		  items: a list or tuple of strings.
		
		Raises:
		  ValueError: if `items` is not a tuple or list or if any of the elements of
		    `items` is not found in the list provided by self.ListItems().
	**/
	public function _validate_items(items:Dynamic):Dynamic;
	/**
		Returns a list of tensors specified by the given list of items.
		
		The list of items is arbitrary different data providers satisfy different
		lists of items. For example the Pascal VOC might accept items 'image' and
		'semantics', whereas the NYUDepthV2 data provider might accept items
		'image', 'depths' and 'normals'.
		
		Args:
		  items: a list of strings, each of which indicate a particular data type.
		
		Returns:
		  a list of tensors, whose length matches the length of `items`, where each
		  tensor corresponds to each item.
		
		Raises:
		  ValueError: if any of the items cannot be satisfied.
	**/
	public function get(items:Dynamic):Dynamic;
	/**
		Returns the list of item names that can be provided by the data provider.
		
		Returns:
		  a list of item names that can be passed to Get([items]).
	**/
	public function list_items():Dynamic;
	/**
		Returns the number of data samples in the dataset.
		
		Returns:
		  a positive whole number.
	**/
	public function num_samples():Dynamic;
}