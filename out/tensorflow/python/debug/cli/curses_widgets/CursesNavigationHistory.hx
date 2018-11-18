/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.curses_widgets;
@:pythonImport("tensorflow.python.debug.cli.curses_widgets", "CursesNavigationHistory") extern class CursesNavigationHistory {
	static public var BACK_ARROW_TEXT : Dynamic;
	static public var FORWARD_ARROW_TEXT : Dynamic;
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
		Constructor of CursesNavigationHistory.
		
		Args:
		  capacity: (`int`) How many items this object can hold. Each item consists
		    of a command stirng, an output RichTextLines object and a scroll
		    position.
		
		Raises:
		  ValueError: If capacity is not a positive number.
	**/
	@:native("__init__")
	public function ___init__(capacity:Dynamic):Dynamic;
	/**
		Constructor of CursesNavigationHistory.
		
		Args:
		  capacity: (`int`) How many items this object can hold. Each item consists
		    of a command stirng, an output RichTextLines object and a scroll
		    position.
		
		Raises:
		  ValueError: If capacity is not a positive number.
	**/
	public function new(capacity:Dynamic):Void;
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
		Add an item to the navigation histoyr.
		
		Args:
		  command: command line text.
		  screen_output: screen output produced for the command.
		  scroll_position: (`int`) scroll position in the screen output.
	**/
	public function add_item(command:Dynamic, screen_output:Dynamic, scroll_position:Dynamic):Dynamic;
	/**
		Test whether client can go back one place.
		
		Returns:
		  (`bool`) Whether going back one place is possible.
	**/
	public function can_go_back():Dynamic;
	/**
		Test whether client can go forward one place.
		
		Returns:
		  (`bool`) Whether going back one place is possible.
	**/
	public function can_go_forward():Dynamic;
	/**
		Go back one place in the history, if possible.
		
		Decrease the pointer value by 1, if possible. Otherwise, the pointer value
		will be unchanged.
		
		Returns:
		  The updated pointer value.
		
		Raises:
		  ValueError: If history is empty.
	**/
	public function go_back():Dynamic;
	/**
		Go forward one place in the history, if possible.
		
		Increase the pointer value by 1, if possible. Otherwise, the pointer value
		will be unchanged.
		
		Returns:
		  The updated pointer value.
		
		Raises:
		  ValueError: If history is empty.
	**/
	public function go_forward():Dynamic;
	public function pointer():Dynamic;
	/**
		Render the rich text content of the single-line navigation bar.
		
		Args:
		  max_length: (`int`) Maximum length of the navigation bar, in characters.
		  backward_command: (`str`) command for going backward. Used to construct
		    the shortcut menu item.
		  forward_command: (`str`) command for going forward. Used to construct the
		    shortcut menu item.
		   latest_command_attribute: font attribute for lastest command.
		   old_command_attribute: font attribute for old (non-latest) command.
		
		Returns:
		  (`debugger_cli_common.RichTextLines`) the navigation bar text with
		    attributes.
	**/
	public function render(max_length:Dynamic, backward_command:Dynamic, forward_command:Dynamic, ?latest_command_attribute:Dynamic, ?old_command_attribute:Dynamic):Dynamic;
	public function size():Dynamic;
	/**
		Update the scroll position of the currently-pointed-to history item.
		
		Args:
		  new_scroll_position: (`int`) new scroll-position value.
		
		Raises:
		  ValueError: If the history is empty.
	**/
	public function update_scroll_position(new_scroll_position:Dynamic):Dynamic;
}