/* This file is generated, do not edit! */
package matplotlib.backends.backend_qt5;
@:pythonImport("matplotlib.backends.backend_qt5", "FigureManagerQT") extern class FigureManagerQT {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(canvas:Dynamic, num:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(canvas:Dynamic, num:Dynamic):Void;
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
	public function _get_toolbar(canvas:Dynamic, parent:Dynamic):Dynamic;
	public function _widgetclosed():Dynamic;
	public function destroy(?args:python.VarArgs<Dynamic>):Dynamic;
	public function full_screen_toggle():Dynamic;
	/**
		Get the title text of the window containing the figure.
		Return None for non-GUI backends (e.g., a PS backend).
	**/
	public function get_window_title():Dynamic;
	/**
		Implement the default mpl key bindings defined at
		:ref:`key-event-handling`
	**/
	public function key_press(event:Dynamic):Dynamic;
	/**
		set the canvas size in pixels
	**/
	public function resize(width:Dynamic, height:Dynamic):Dynamic;
	/**
		Set the title text of the window containing the figure.  Note that
		this has no effect for non-GUI backends (e.g., a PS backend).
	**/
	public function set_window_title(title:Dynamic):Dynamic;
	/**
		For GUI backends, show the figure window and redraw.
		For non-GUI backends, raise an exception to be caught
		by :meth:`~matplotlib.figure.Figure.show`, for an
		optional warning.
	**/
	public function show():Dynamic;
	/**
		Display message in a popup -- GUI only
	**/
	public function show_popup(msg:Dynamic):Dynamic;
}