/* This file is generated, do not edit! */
package docutils.utils.math.latex2mathml;
@:pythonImport("docutils.utils.math.latex2mathml", "mi") extern class Mi {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Set up node with `children` and `attributes`.
		
		        Attributes are downcased: Use CLASS to set "class" value.
		        >>> math(mn(3), CLASS='test')
		        math(mn(3), class='test')
		        >>> math(CLASS='test').toprettyxml()
		        '<math class="test">
		</math>'
		
		        
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?attributes:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set up node with `children` and `attributes`.
		
		        Attributes are downcased: Use CLASS to set "class" value.
		        >>> math(mn(3), CLASS='test')
		        math(mn(3), class='test')
		        >>> math(CLASS='test').toprettyxml()
		        '<math class="test">
		</math>'
		
		        
	**/
	public function new(data:Dynamic, ?attributes:python.KwArgs<Dynamic>):Void;
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
	public function __setitem__(key:Dynamic, item:Dynamic):Dynamic;
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
	static public var _boolstrings : Dynamic;
	static public var _level : Dynamic;
	public function _xml(?level:Dynamic):Dynamic;
	public function _xml_body(?level:Dynamic):Dynamic;
	/**
		Append child and return self or first non-full parent.
		
		If self is full, go up the tree and return first non-full node or
		`None`.
	**/
	public function append(child:Dynamic):Dynamic;
	/**
		Close element and return first non-full parent or None.
	**/
	public function close():Dynamic;
	public function extend(children:Dynamic):Dynamic;
	/**
		Return boolean indicating whether children may be appended.
	**/
	public function full():Dynamic;
	public function get(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var html_tagname : Dynamic;
	static public var nchildren : Dynamic;
	static public var parent : Dynamic;
	/**
		Return XML representation of self as string.
	**/
	public function toprettyxml():Dynamic;
	static public var xml_entities : Dynamic;
	public function xml_starttag():Dynamic;
}