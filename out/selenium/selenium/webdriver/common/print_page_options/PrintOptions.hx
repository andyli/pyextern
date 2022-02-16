/* This file is generated, do not edit! */
package selenium.webdriver.common.print_page_options;
@:pythonImport("selenium.webdriver.common.print_page_options", "PrintOptions") extern class PrintOptions {
	static public var ORIENTATION_VALUES : Dynamic;
	/**
		Helper function to validate some of the properties
	**/
	public function _PrintOptions__validate_num_property(property_name:Dynamic, value:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		:Returns: Background value that was set
	**/
	public var background : Dynamic;
	/**
		:Returns: Bottom margin of the page
	**/
	public var margin_bottom : Dynamic;
	/**
		:Returns: Left margin of the page
	**/
	public var margin_left : Dynamic;
	/**
		:Returns: Right margin of the page
	**/
	public var margin_right : Dynamic;
	/**
		:Returns: Top margin of the page
	**/
	public var margin_top : Dynamic;
	/**
		:Returns: Orientation that was set for the page
	**/
	public var orientation : Dynamic;
	/**
		:Returns: Page height that was set
	**/
	public var page_height : Dynamic;
	/**
		:Returns: value set for pageRanges
	**/
	public var page_ranges : Dynamic;
	/**
		:Returns: Page width that was set
	**/
	public var page_width : Dynamic;
	/**
		:Returns: Scale that was set for the page
	**/
	public var scale : Dynamic;
	/**
		:Returns: Value set for shrinkToFit
	**/
	public var shrink_to_fit : Dynamic;
	/**
		:Returns: A hash of print options configured
	**/
	public function to_dict():Dynamic;
}