/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "RectangleSelector") extern class RectangleSelector {
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
		Create a selector in *ax*.  When a selection is made, clear
		the span and call onselect with::
		
		  onselect(pos_1, pos_2)
		
		and clear the drawn box/line. The ``pos_1`` and ``pos_2`` are
		arrays of length 2 containing the x- and y-coordinate.
		
		If *minspanx* is not *None* then events smaller than *minspanx*
		in x direction are ignored (it's the same for y).
		
		The rectangle is drawn with *rectprops*; default::
		
		  rectprops = dict(facecolor='red', edgecolor = 'black',
		                   alpha=0.5, fill=False)
		
		The line is drawn with *lineprops*; default::
		
		  lineprops = dict(color='black', linestyle='-',
		                   linewidth = 2, alpha=0.5)
		
		Use *drawtype* if you want the mouse to draw a line,
		a box or nothing between click and actual position by setting
		
		``drawtype = 'line'``, ``drawtype='box'`` or ``drawtype = 'none'``.
		
		*spancoords* is one of 'data' or 'pixels'.  If 'data', *minspanx*
		and *minspanx* will be interpreted in the same coordinates as
		the x and y axis. If 'pixels', they are in pixels.
		
		*button* is a list of integers indicating which mouse buttons should
		be used for rectangle selection.  You can also specify a single
		integer if only a single button is desired.  Default is *None*,
		which does not limit which button can be used.
		
		Note, typically:
		 1 = left mouse button
		 2 = center mouse button (scroll wheel)
		 3 = right mouse button
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, onselect:Dynamic, ?drawtype:Dynamic, ?minspanx:Dynamic, ?minspany:Dynamic, ?useblit:Dynamic, ?lineprops:Dynamic, ?rectprops:Dynamic, ?spancoords:Dynamic, ?button:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Connect callback with an event.
		
		This should be used in lieu of `figure.canvas.mpl_connect` since this
		function stores call back ids for later clean up.
	**/
	public function connect_event(event:Dynamic, callback:Dynamic):Dynamic;
	/**
		Disconnect all events created by this widget.
	**/
	public function disconnect_events():Dynamic;
	static public var drawon : Dynamic;
	static public var eventson : Dynamic;
	/**
		Get status of active mode (boolean variable)
	**/
	public function get_active():Dynamic;
	/**
		return *True* if *event* should be ignored
	**/
	public function ignore(event:Dynamic):Dynamic;
	/**
		on motion notify event if box/line is wanted
	**/
	public function onmove(event:Dynamic):Dynamic;
	/**
		on button press event
	**/
	public function press(event:Dynamic):Dynamic;
	/**
		on button release event
	**/
	public function release(event:Dynamic):Dynamic;
	/**
		Use this to activate / deactivate the RectangleSelector
		from your program with an boolean parameter *active*.
	**/
	public function set_active(active:Dynamic):Dynamic;
	/**
		draw using newfangled blit or oldfangled draw depending on
		useblit
	**/
	public function update():Dynamic;
	/**
		force an update of the background
	**/
	public function update_background(event:Dynamic):Dynamic;
}