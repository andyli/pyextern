/* This file is generated, do not edit! */
package selenium.webdriver.common.action_chains;
@:pythonImport("selenium.webdriver.common.action_chains", "ActionChains") extern class ActionChains {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(_type:Dynamic, _value:Dynamic, _traceback:Dynamic):Dynamic;
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
		Creates a new ActionChains.
		
		:Args:
		 - driver: The WebDriver instance which performs user actions.
		 - duration: override the default 250 msecs of DEFAULT_MOVE_DURATION in PointerInput
	**/
	@:native("__init__")
	public function ___init__(driver:Dynamic, ?duration:Dynamic):Dynamic;
	/**
		Creates a new ActionChains.
		
		:Args:
		 - driver: The WebDriver instance which performs user actions.
		 - duration: override the default 250 msecs of DEFAULT_MOVE_DURATION in PointerInput
	**/
	public function new(driver:Dynamic, ?duration:Dynamic):Void;
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
		Clicks an element.
		
		:Args:
		 - on_element: The element to click.
		   If None, clicks on current mouse position.
	**/
	public function click(?on_element:Dynamic):Dynamic;
	/**
		Holds down the left mouse button on an element.
		
		:Args:
		 - on_element: The element to mouse down.
		   If None, clicks on current mouse position.
	**/
	public function click_and_hold(?on_element:Dynamic):Dynamic;
	/**
		Performs a context-click (right click) on an element.
		
		:Args:
		 - on_element: The element to context-click.
		   If None, clicks on current mouse position.
	**/
	public function context_click(?on_element:Dynamic):Dynamic;
	/**
		Double-clicks an element.
		
		:Args:
		 - on_element: The element to double-click.
		   If None, clicks on current mouse position.
	**/
	public function double_click(?on_element:Dynamic):Dynamic;
	/**
		Holds down the left mouse button on the source element,
		   then moves to the target element and releases the mouse button.
		
		:Args:
		 - source: The element to mouse down.
		 - target: The element to mouse up.
	**/
	public function drag_and_drop(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Holds down the left mouse button on the source element,
		   then moves to the target offset and releases the mouse button.
		
		:Args:
		 - source: The element to mouse down.
		 - xoffset: X offset to move to.
		 - yoffset: Y offset to move to.
	**/
	public function drag_and_drop_by_offset(source:Dynamic, xoffset:Dynamic, yoffset:Dynamic):Dynamic;
	/**
		Sends a key press only, without releasing it.
		   Should only be used with modifier keys (Control, Alt and Shift).
		
		:Args:
		 - value: The modifier key to send. Values are defined in `Keys` class.
		 - element: The element to send keys.
		   If None, sends a key to current focused element.
		
		Example, pressing ctrl+c::
		
		    ActionChains(driver).key_down(Keys.CONTROL).send_keys('c').key_up(Keys.CONTROL).perform()
	**/
	public function key_down(value:Dynamic, ?element:Dynamic):Dynamic;
	/**
		Releases a modifier key.
		
		:Args:
		 - value: The modifier key to send. Values are defined in Keys class.
		 - element: The element to send keys.
		   If None, sends a key to current focused element.
		
		Example, pressing ctrl+c::
		
		    ActionChains(driver).key_down(Keys.CONTROL).send_keys('c').key_up(Keys.CONTROL).perform()
	**/
	public function key_up(value:Dynamic, ?element:Dynamic):Dynamic;
	/**
		Moving the mouse to an offset from current mouse position.
		
		:Args:
		 - xoffset: X offset to move to, as a positive or negative integer.
		 - yoffset: Y offset to move to, as a positive or negative integer.
	**/
	public function move_by_offset(xoffset:Dynamic, yoffset:Dynamic):Dynamic;
	/**
		Moving the mouse to the middle of an element.
		
		:Args:
		 - to_element: The WebElement to move to.
	**/
	public function move_to_element(to_element:Dynamic):Dynamic;
	/**
		Move the mouse by an offset of the specified element.
		   Offsets are relative to the top-left corner of the element.
		
		:Args:
		 - to_element: The WebElement to move to.
		 - xoffset: X offset to move to.
		 - yoffset: Y offset to move to.
	**/
	public function move_to_element_with_offset(to_element:Dynamic, xoffset:Dynamic, yoffset:Dynamic):Dynamic;
	/**
		Pause all inputs for the specified duration in seconds 
	**/
	public function pause(seconds:Dynamic):Dynamic;
	/**
		Performs all stored actions.
	**/
	public function perform():Dynamic;
	/**
		Releasing a held mouse button on an element.
		
		:Args:
		 - on_element: The element to mouse up.
		   If None, releases on current mouse position.
	**/
	public function release(?on_element:Dynamic):Dynamic;
	/**
		Clears actions that are already stored locally and on the remote end
	**/
	public function reset_actions():Dynamic;
	/**
		Sends keys to current focused element.
		
		:Args:
		 - keys_to_send: The keys to send.  Modifier keys constants can be found in the
		   'Keys' class.
	**/
	public function send_keys(?keys_to_send:python.VarArgs<Dynamic>):Dynamic;
	/**
		Sends keys to an element.
		
		:Args:
		 - element: The element to send keys.
		 - keys_to_send: The keys to send.  Modifier keys constants can be found in the
		   'Keys' class.
	**/
	public function send_keys_to_element(element:Dynamic, ?keys_to_send:python.VarArgs<Dynamic>):Dynamic;
}