/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "Button") extern class Button {
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
		Parameters
		----------
		ax : matplotlib.axes.Axes
		    The :class:`matplotlib.axes.Axes` instance the button
		    will be placed into.
		
		label : str
		    The button text. Accepts string.
		
		image : array, mpl image, Pillow Image
		    The image to place in the button, if not *None*.
		    Can be any legal arg to imshow (numpy array,
		    matplotlib Image instance, or Pillow Image).
		
		color : color
		    The color of the button when not activated
		
		hovercolor : color
		    The color of the button when the mouse is over it
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, label:Dynamic, ?image:Dynamic, ?color:Dynamic, ?hovercolor:Dynamic):Dynamic;
	/**
		Parameters
		----------
		ax : matplotlib.axes.Axes
		    The :class:`matplotlib.axes.Axes` instance the button
		    will be placed into.
		
		label : str
		    The button text. Accepts string.
		
		image : array, mpl image, Pillow Image
		    The image to place in the button, if not *None*.
		    Can be any legal arg to imshow (numpy array,
		    matplotlib Image instance, or Pillow Image).
		
		color : color
		    The color of the button when not activated
		
		hovercolor : color
		    The color of the button when the mouse is over it
	**/
	public function new(ax:Dynamic, label:Dynamic, ?image:Dynamic, ?color:Dynamic, ?hovercolor:Dynamic):Void;
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
	static public var _active : Dynamic;
	public function _click(event:Dynamic):Dynamic;
	public function _motion(event:Dynamic):Dynamic;
	public function _release(event:Dynamic):Dynamic;
	/**
		Is the widget active?
	**/
	public var active : Dynamic;
	/**
		Connect callback with an event.
		
		This should be used in lieu of `figure.canvas.mpl_connect` since this
		function stores call back ids for later clean up.
	**/
	public function connect_event(event:Dynamic, callback:Dynamic):Dynamic;
	/**
		remove the observer with connection id *cid*
	**/
	public function disconnect(cid:Dynamic):Dynamic;
	/**
		Disconnect all events created by this widget.
	**/
	public function disconnect_events():Dynamic;
	static public var drawon : Dynamic;
	static public var eventson : Dynamic;
	/**
		Get whether the widget is active.
		        
	**/
	public function get_active():Dynamic;
	/**
		Return True if event should be ignored.
		
		This method (or a version of it) should be called at the beginning
		of any event callback.
	**/
	public function ignore(event:Dynamic):Dynamic;
	/**
		When the button is clicked, call this *func* with event
		
		A connection id is returned which can be used to disconnect
	**/
	public function on_clicked(func:Dynamic):Dynamic;
	/**
		Set whether the widget is active.
		        
	**/
	public function set_active(active:Dynamic):Dynamic;
}