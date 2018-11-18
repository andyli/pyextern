/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.preprocessing.categorical_vocabulary;
@:pythonImport("tensorflow.contrib.learn.python.learn.preprocessing.categorical_vocabulary", "CategoricalVocabulary") extern class CategoricalVocabulary {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data.
	**/
	@:native("__init__")
	public function ___init__(?unknown_token:Dynamic, ?support_reverse:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data.
	**/
	public function new(?unknown_token:Dynamic, ?support_reverse:Dynamic):Void;
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
		Returns total count of mappings. Including unknown token.
	**/
	public function __len__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Adds count of the category to the frequency table.
		
		Args:
		  category: string or integer, category to add frequency to.
		  count: optional integer, how many to add.
	**/
	public function add(category:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Freezes the vocabulary, after which new words return unknown token id.
		
		Args:
		  freeze: True to freeze, False to unfreeze.
	**/
	public function freeze(?freeze:Dynamic):Dynamic;
	/**
		Returns word's id in the vocabulary.
		
		If category is new, creates a new id for it.
		
		Args:
		  category: string or integer to lookup in vocabulary.
		
		Returns:
		  interger, id in the vocabulary.
	**/
	public function get(category:Dynamic):Dynamic;
	/**
		Given class id reverse to original class name.
		
		Args:
		  class_id: Id of the class.
		
		Returns:
		  Class name.
		
		Raises:
		  ValueError: if this vocabulary wasn't initialized with support_reverse.
	**/
	public function reverse(class_id:Dynamic):Dynamic;
	/**
		Trims vocabulary for minimum frequency.
		
		Remaps ids from 1..n in sort frequency order.
		where n - number of elements left.
		
		Args:
		  min_frequency: minimum frequency to keep.
		  max_frequency: optional, maximum frequency to keep.
		    Useful to remove very frequent categories (like stop words).
	**/
	public function trim(min_frequency:Dynamic, ?max_frequency:Dynamic):Dynamic;
}