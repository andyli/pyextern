/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.curses_ui;
@:pythonImport("tensorflow.python.debug.cli.curses_ui", "ScrollBar") extern class ScrollBar {
	static public var BASE_ATTR : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructor of ScrollBar.
		
		Args:
		  min_x: (int) left index of the scroll bar on the screen (inclusive).
		  min_y: (int) top index of the scroll bar on the screen (inclusive).
		  max_x: (int) right index of the scroll bar on the screen (inclusive).
		  max_y: (int) bottom index of the scroll bar on the screen (inclusive).
		  scroll_position: (int) 0-based location of the screen output. For example,
		    if the screen output is scrolled to the top, the value of
		    scroll_position should be 0. If it is scrolled to the bottom, the value
		    should be output_num_rows - 1.
		  output_num_rows: (int) Total number of output rows.
		
		Raises:
		  ValueError: If the width or height of the scroll bar, as determined
		   by min_x, max_x, min_y and max_y, is too small.
	**/
	@:native("__init__")
	public function ___init__(min_x:Dynamic, min_y:Dynamic, max_x:Dynamic, max_y:Dynamic, scroll_position:Dynamic, output_num_rows:Dynamic):Dynamic;
	/**
		Constructor of ScrollBar.
		
		Args:
		  min_x: (int) left index of the scroll bar on the screen (inclusive).
		  min_y: (int) top index of the scroll bar on the screen (inclusive).
		  max_x: (int) right index of the scroll bar on the screen (inclusive).
		  max_y: (int) bottom index of the scroll bar on the screen (inclusive).
		  scroll_position: (int) 0-based location of the screen output. For example,
		    if the screen output is scrolled to the top, the value of
		    scroll_position should be 0. If it is scrolled to the bottom, the value
		    should be output_num_rows - 1.
		  output_num_rows: (int) Total number of output rows.
		
		Raises:
		  ValueError: If the width or height of the scroll bar, as determined
		   by min_x, max_x, min_y and max_y, is too small.
	**/
	public function new(min_x:Dynamic, min_y:Dynamic, max_x:Dynamic, max_y:Dynamic, scroll_position:Dynamic, output_num_rows:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Get the 0-based y coordinate of the scroll block.
		
		This y coordinate takes into account the presence of the UP and DN buttons
		present at the top and bottom of the ScrollBar. For example, at the home
		location, the return value will be 1; at the bottom location, the return
		value will be self._scroll_bar_height - 2.
		
		Args:
		  screen_coord_sys: (`bool`) whether the return value will be in the
		    screen coordinate system.
		
		Returns:
		  (int) 0-based y coordinate of the scroll block, in the ScrollBar
		    coordinate system by default. For example,
		    when scroll position is at the top, this return value will be 1 (not 0,
		    because of the presence of the UP button). When scroll position is at
		    the bottom, this return value will be self._scroll_bar_height - 2
		    (not self._scroll_bar_height - 1, because of the presence of the DOWN
		    button).
	**/
	public function _block_y(?screen_coord_sys:Dynamic):Dynamic;
	public function get_click_command(mouse_y:Dynamic):Dynamic;
	/**
		Get the RichTextLines layout of the scroll bar.
		
		Returns:
		  (debugger_cli_common.RichTextLines) The text layout of the scroll bar.
	**/
	public function layout():Dynamic;
}