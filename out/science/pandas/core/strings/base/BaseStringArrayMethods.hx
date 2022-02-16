/* This file is generated, do not edit! */
package pandas.core.strings.base;
@:pythonImport("pandas.core.strings.base", "BaseStringArrayMethods") extern class BaseStringArrayMethods {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var __slots__ : Dynamic;
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
	public function _str_capitalize():Dynamic;
	public function _str_casefold():Dynamic;
	public function _str_contains(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?regex:Dynamic):Dynamic;
	public function _str_count(pat:Dynamic, ?flags:Dynamic):Dynamic;
	public function _str_encode(encoding:Dynamic, ?errors:Dynamic):Dynamic;
	public function _str_endswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_extract(pat:Dynamic, ?flags:Dynamic, ?expand:Dynamic):Dynamic;
	public function _str_find(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_findall(pat:Dynamic, ?flags:Dynamic):Dynamic;
	public function _str_fullmatch(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_get(i:Dynamic):Dynamic;
	public function _str_get_dummies(?sep:Dynamic):Dynamic;
	public function _str_getitem(key:Dynamic):Dynamic;
	public function _str_index(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_isalnum():Dynamic;
	public function _str_isalpha():Dynamic;
	public function _str_isdecimal():Dynamic;
	public function _str_isdigit():Dynamic;
	public function _str_islower():Dynamic;
	public function _str_isnumeric():Dynamic;
	public function _str_isspace():Dynamic;
	public function _str_istitle():Dynamic;
	public function _str_isupper():Dynamic;
	public function _str_join(sep:Dynamic):Dynamic;
	public function _str_len():Dynamic;
	public function _str_lower():Dynamic;
	public function _str_lstrip(?to_strip:Dynamic):Dynamic;
	public function _str_match(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_normalize(form:Dynamic):Dynamic;
	public function _str_pad(width:Dynamic, ?side:Dynamic, ?fillchar:Dynamic):Dynamic;
	public function _str_partition(sep:Dynamic, expand:Dynamic):Dynamic;
	public function _str_removeprefix(prefix:Dynamic):Dynamic;
	public function _str_removesuffix(suffix:Dynamic):Dynamic;
	public function _str_repeat(repeats:Dynamic):Dynamic;
	public function _str_replace(pat:Dynamic, repl:Dynamic, ?n:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?regex:Dynamic):Dynamic;
	public function _str_rfind(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_rindex(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_rpartition(sep:Dynamic, expand:Dynamic):Dynamic;
	public function _str_rsplit(?pat:Dynamic, ?n:Dynamic):Dynamic;
	public function _str_rstrip(?to_strip:Dynamic):Dynamic;
	public function _str_slice(?start:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
	public function _str_slice_replace(?start:Dynamic, ?stop:Dynamic, ?repl:Dynamic):Dynamic;
	public function _str_split(?pat:Dynamic, ?n:Dynamic, ?expand:Dynamic):Dynamic;
	public function _str_startswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_strip(?to_strip:Dynamic):Dynamic;
	public function _str_swapcase():Dynamic;
	public function _str_title():Dynamic;
	public function _str_translate(table:Dynamic):Dynamic;
	public function _str_upper():Dynamic;
	public function _str_wrap(width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}