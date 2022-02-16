/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.object_identity;
@:pythonImport("tensorflow.python.keras.utils.object_identity", "ObjectIdentityWeakSet") extern class ObjectIdentityWeakSet {
	static public var __abstractmethods__ : Dynamic;
	public function __and__(other:Dynamic):Dynamic;
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
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	public function __iand__(it:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ior__(it:Dynamic):Dynamic;
	public function __isub__(it:Dynamic):Dynamic;
	public function __iter__():Dynamic;
	public function __ixor__(it:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
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
	public function __ror__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rxor__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(C:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Construct an instance of the class from any iterable input.
		
		Must override this method if the class constructor signature
		does not accept an iterable for an input.
	**/
	static public function _from_iterable(it:Dynamic):Dynamic;
	static public function _from_storage(storage:Dynamic):Dynamic;
	/**
		Compute the hash value of a set.
		
		Note that we don't define __hash__: not all sets are hashable.
		But if you define a hashable set type, its __hash__ should
		call this function.
		
		This must be compatible __eq__.
		
		All sets ought to compare equal if they contain the same
		elements, regardless of how they are implemented, and
		regardless of the order of the elements; so there's not much
		freedom for __eq__ or __hash__.  We match the algorithm used
		by the built-in frozenset type.
	**/
	public function _hash():Dynamic;
	public var _storage : Dynamic;
	public function _wrap_key(key:Dynamic):Dynamic;
	/**
		Add an element.
	**/
	public function add(key:Dynamic):Dynamic;
	/**
		This is slow (creates N new iterators!) but effective.
	**/
	public function clear():Dynamic;
	public function difference(items:Dynamic):Dynamic;
	/**
		Remove an element.  Do not raise an exception if absent.
	**/
	public function discard(key:Dynamic):Dynamic;
	public function intersection(items:Dynamic):Dynamic;
	/**
		Return True if two sets have a null intersection.
	**/
	public function isdisjoint(other:Dynamic):Dynamic;
	/**
		Return the popped value.  Raise KeyError if empty.
	**/
	public function pop():Dynamic;
	/**
		Remove an element. If not a member, raise a KeyError.
	**/
	public function remove(value:Dynamic):Dynamic;
	public function update(items:Dynamic):Dynamic;
}