/* This file is generated, do not edit! */
package selenium.webdriver.support.relative_locator;
@:pythonImport("selenium.webdriver.support.relative_locator", "RelativeBy") extern class RelativeBy {
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
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates a new RelativeBy object. It is preferred if you use the
		`locate_with` method as this signature could change.
		:Args:
		    root - A dict with `By` enum as the key and the search query as the value
		    filters - A list of the filters that will be searched. If none are passed
		        in please use the fluent API on the object to create the filters
	**/
	@:native("__init__")
	public function ___init__(?root:Dynamic, ?filters:Dynamic):Dynamic;
	/**
		Creates a new RelativeBy object. It is preferred if you use the
		`locate_with` method as this signature could change.
		:Args:
		    root - A dict with `By` enum as the key and the search query as the value
		    filters - A list of the filters that will be searched. If none are passed
		        in please use the fluent API on the object to create the filters
	**/
	public function new(?root:Dynamic, ?filters:Dynamic):Void;
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
	/**
		Add a filter to look for elements above.
		:Args:
		    - element_or_locator: Element to look above
	**/
	public function above(?element_or_locator:Dynamic):Dynamic;
	/**
		Add a filter to look for elements below.
		:Args:
		    - element_or_locator: Element to look below
	**/
	public function below(?element_or_locator:Dynamic):Dynamic;
	/**
		Add a filter to look for elements above.
		:Args:
		    - element_or_locator_distance: Element to look near by the element or within a distance
	**/
	public function near(?element_or_locator_distance:Dynamic):Dynamic;
	/**
		Create a dict that will be passed to the driver to start searching for the element
	**/
	public function to_dict():Dynamic;
	/**
		Add a filter to look for elements to the left of.
		:Args:
		    - element_or_locator: Element to look to the left of
	**/
	public function to_left_of(?element_or_locator:Dynamic):Dynamic;
	/**
		Add a filter to look for elements right of.
		:Args:
		    - element_or_locator: Element to look right of
	**/
	public function to_right_of(?element_or_locator:Dynamic):Dynamic;
}