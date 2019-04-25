/* This file is generated, do not edit! */
package selenium.webdriver.remote.switch_to;
@:pythonImport("selenium.webdriver.remote.switch_to", "SwitchTo") extern class SwitchTo {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(driver:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(driver:Dynamic):Void;
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
	public function _w3c_window(window_name:Dynamic):Dynamic;
	/**
		Returns the element with focus, or BODY if nothing has focus.
		
		:Usage:
		    element = driver.switch_to.active_element
	**/
	public var active_element : Dynamic;
	/**
		Switches focus to an alert on the page.
		
		:Usage:
		    alert = driver.switch_to.alert
	**/
	public var alert : Dynamic;
	/**
		Switch focus to the default frame.
		
		:Usage:
		    driver.switch_to.default_content()
	**/
	public function default_content():Dynamic;
	/**
		Switches focus to the specified frame, by index, name, or webelement.
		
		:Args:
		 - frame_reference: The name of the window to switch to, an integer representing the index,
		                    or a webelement that is an (i)frame to switch to.
		
		:Usage:
		    driver.switch_to.frame('frame_name')
		    driver.switch_to.frame(1)
		    driver.switch_to.frame(driver.find_elements_by_tag_name("iframe")[0])
	**/
	public function frame(frame_reference:Dynamic):Dynamic;
	/**
		Switches focus to the parent context. If the current context is the top
		level browsing context, the context remains unchanged.
		
		:Usage:
		    driver.switch_to.parent_frame()
	**/
	public function parent_frame():Dynamic;
	/**
		Switches focus to the specified window.
		
		:Args:
		 - window_name: The name or window handle of the window to switch to.
		
		:Usage:
		    driver.switch_to.window('main')
	**/
	public function window(window_name:Dynamic):Dynamic;
}