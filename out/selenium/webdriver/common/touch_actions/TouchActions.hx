/* This file is generated, do not edit! */
package selenium.webdriver.common.touch_actions;
@:pythonImport("selenium.webdriver.common.touch_actions", "TouchActions") extern class TouchActions {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(_type:Dynamic, _value:Dynamic, _traceback:Dynamic):Dynamic;
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
		Creates a new TouchActions object.
		
		:Args:
		 - driver: The WebDriver instance which performs user actions.
		   It should be with touchscreen enabled.
	**/
	@:native("__init__")
	public function ___init__(driver:Dynamic):Dynamic;
	/**
		Creates a new TouchActions object.
		
		:Args:
		 - driver: The WebDriver instance which performs user actions.
		   It should be with touchscreen enabled.
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
	/**
		Double taps on a given element.
		
		:Args:
		 - on_element: The element to tap.
	**/
	public function double_tap(on_element:Dynamic):Dynamic;
	/**
		Flicks, starting anywhere on the screen.
		
		:Args:
		 - xspeed: The X speed in pixels per second.
		 - yspeed: The Y speed in pixels per second.
	**/
	public function flick(xspeed:Dynamic, yspeed:Dynamic):Dynamic;
	/**
		Flick starting at on_element, and moving by the xoffset and yoffset
		with specified speed.
		
		:Args:
		 - on_element: Flick will start at center of element.
		 - xoffset: X offset to flick to.
		 - yoffset: Y offset to flick to.
		 - speed: Pixels per second to flick.
	**/
	public function flick_element(on_element:Dynamic, xoffset:Dynamic, yoffset:Dynamic, speed:Dynamic):Dynamic;
	/**
		Long press on an element.
		
		:Args:
		 - on_element: The element to long press.
	**/
	public function long_press(on_element:Dynamic):Dynamic;
	/**
		Move held tap to specified location.
		
		:Args:
		 - xcoord: X Coordinate to move.
		 - ycoord: Y Coordinate to move.
	**/
	public function move(xcoord:Dynamic, ycoord:Dynamic):Dynamic;
	/**
		Performs all stored actions.
	**/
	public function perform():Dynamic;
	/**
		Release previously issued tap 'and hold' command at specified location.
		
		:Args:
		 - xcoord: X Coordinate to release.
		 - ycoord: Y Coordinate to release.
	**/
	public function release(xcoord:Dynamic, ycoord:Dynamic):Dynamic;
	/**
		Touch and scroll, moving by xoffset and yoffset.
		
		:Args:
		 - xoffset: X offset to scroll to.
		 - yoffset: Y offset to scroll to.
	**/
	public function scroll(xoffset:Dynamic, yoffset:Dynamic):Dynamic;
	/**
		Touch and scroll starting at on_element, moving by xoffset and yoffset.
		
		:Args:
		 - on_element: The element where scroll starts.
		 - xoffset: X offset to scroll to.
		 - yoffset: Y offset to scroll to.
	**/
	public function scroll_from_element(on_element:Dynamic, xoffset:Dynamic, yoffset:Dynamic):Dynamic;
	/**
		Taps on a given element.
		
		:Args:
		 - on_element: The element to tap.
	**/
	public function tap(on_element:Dynamic):Dynamic;
	/**
		Touch down at given coordinates.
		
		:Args:
		 - xcoord: X Coordinate to touch down.
		 - ycoord: Y Coordinate to touch down.
	**/
	public function tap_and_hold(xcoord:Dynamic, ycoord:Dynamic):Dynamic;
}