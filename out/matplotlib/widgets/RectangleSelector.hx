/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "RectangleSelector") extern class RectangleSelector {
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
		Create a selector in *ax*.  When a selection is made, clear
		the span and call onselect with::
		
		  onselect(pos_1, pos_2)
		
		and clear the drawn box/line. The ``pos_1`` and ``pos_2`` are
		arrays of length 2 containing the x- and y-coordinate.
		
		If *minspanx* is not *None* then events smaller than *minspanx*
		in x direction are ignored (it's the same for y).
		
		The rectangle is drawn with *rectprops*; default::
		
		  rectprops = dict(facecolor='red', edgecolor = 'black',
		                   alpha=0.2, fill=True)
		
		The line is drawn with *lineprops*; default::
		
		  lineprops = dict(color='black', linestyle='-',
		                   linewidth = 2, alpha=0.5)
		
		Use *drawtype* if you want the mouse to draw a line,
		a box or nothing between click and actual position by setting
		
		``drawtype = 'line'``, ``drawtype='box'`` or ``drawtype = 'none'``.
		Drawing a line would result in a line from vertex A to vertex C in
		a rectangle ABCD.
		
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
		
		*interactive* will draw a set of handles and allow you interact
		with the widget after it is drawn.
		
		*state_modifier_keys* are keyboard modifiers that affect the behavior
		of the widget.
		
		The defaults are:
		dict(move=' ', clear='escape', square='shift', center='ctrl')
		
		Keyboard modifiers, which:
		'move': Move the existing shape.
		'clear': Clear the current shape.
		'square': Makes the shape square.
		'center': Make the initial point the center of the shape.
		'square' and 'center' can be combined.
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, onselect:Dynamic, ?drawtype:Dynamic, ?minspanx:Dynamic, ?minspany:Dynamic, ?useblit:Dynamic, ?lineprops:Dynamic, ?rectprops:Dynamic, ?spancoords:Dynamic, ?button:Dynamic, ?maxdist:Dynamic, ?marker_props:Dynamic, ?interactive:Dynamic, ?state_modifier_keys:Dynamic):Dynamic;
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
		                   alpha=0.2, fill=True)
		
		The line is drawn with *lineprops*; default::
		
		  lineprops = dict(color='black', linestyle='-',
		                   linewidth = 2, alpha=0.5)
		
		Use *drawtype* if you want the mouse to draw a line,
		a box or nothing between click and actual position by setting
		
		``drawtype = 'line'``, ``drawtype='box'`` or ``drawtype = 'none'``.
		Drawing a line would result in a line from vertex A to vertex C in
		a rectangle ABCD.
		
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
		
		*interactive* will draw a set of handles and allow you interact
		with the widget after it is drawn.
		
		*state_modifier_keys* are keyboard modifiers that affect the behavior
		of the widget.
		
		The defaults are:
		dict(move=' ', clear='escape', square='shift', center='ctrl')
		
		Keyboard modifiers, which:
		'move': Move the existing shape.
		'clear': Clear the current shape.
		'square': Makes the shape square.
		'center': Make the initial point the center of the shape.
		'square' and 'center' can be combined.
	**/
	public function new(ax:Dynamic, onselect:Dynamic, ?drawtype:Dynamic, ?minspanx:Dynamic, ?minspany:Dynamic, ?useblit:Dynamic, ?lineprops:Dynamic, ?rectprops:Dynamic, ?spancoords:Dynamic, ?button:Dynamic, ?maxdist:Dynamic, ?marker_props:Dynamic, ?interactive:Dynamic, ?state_modifier_keys:Dynamic):Void;
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
	static public var _active : Dynamic;
	/**
		Clean up an event
		
		Use prev event if there is no xdata
		Limit the xdata and ydata to the axes limits
		Set the prev event
	**/
	public function _clean_event(event:Dynamic):Dynamic;
	/**
		Get the xdata and ydata for event, with limits
	**/
	public function _get_data(event:Dynamic):Dynamic;
	/**
		Key press event handler - use for widget-specific key press actions.
		        
	**/
	public function _on_key_press(event:Dynamic):Dynamic;
	/**
		Key release event handler.
	**/
	public function _on_key_release(event:Dynamic):Dynamic;
	/**
		Mouse scroll event handler
	**/
	public function _on_scroll(event:Dynamic):Dynamic;
	/**
		on motion notify event if box/line is wanted
	**/
	public function _onmove(event:Dynamic):Dynamic;
	/**
		on button press event
	**/
	public function _press(event:Dynamic):Dynamic;
	public var _rect_bbox : Dynamic;
	/**
		on button release event
	**/
	public function _release(event:Dynamic):Dynamic;
	/**
		Set active handle based on the location of the mouse event
	**/
	public function _set_active_handle(event:Dynamic):Dynamic;
	/**
		A rectangle with lower left at *xy* = (*x*, *y*) with
		specified *width*, *height* and rotation *angle*.
	**/
	static public function _shape_klass(xy:Dynamic, width:Dynamic, height:Dynamic, ?angle:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Is the widget active?
	**/
	public var active : Dynamic;
	/**
		Center of rectangle
	**/
	public var center : Dynamic;
	/**
		Connect the major canvas events to methods.
	**/
	public function connect_default_events():Dynamic;
	/**
		Connect callback with an event.
		
		This should be used in lieu of `figure.canvas.mpl_connect` since this
		function stores callback ids for later clean up.
	**/
	public function connect_event(event:Dynamic, callback:Dynamic):Dynamic;
	/**
		Corners of rectangle from lower left, moving clockwise.
	**/
	public var corners : Dynamic;
	/**
		Disconnect all events created by this widget.
	**/
	public function disconnect_events():Dynamic;
	public function draw_shape(extents:Dynamic):Dynamic;
	static public var drawon : Dynamic;
	/**
		Midpoint of rectangle edges from left, moving clockwise.
	**/
	public var edge_centers : Dynamic;
	static public var eventson : Dynamic;
	/**
		Return (xmin, xmax, ymin, ymax).
	**/
	public var extents : Dynamic;
	/**
		Returns numpy.ndarray of shape (2,5) containing
		x (``RectangleSelector.geometry[1,:]``) and
		y (``RectangleSelector.geometry[0,:]``)
		coordinates of the four corners of the rectangle starting
		and ending in the top left corner.
	**/
	public var geometry : Dynamic;
	/**
		Get whether the widget is active.
		        
	**/
	public function get_active():Dynamic;
	/**
		return *True* if *event* should be ignored
	**/
	public function ignore(event:Dynamic):Dynamic;
	/**
		Key press event handler and validator for all selection widgets
	**/
	public function on_key_press(event:Dynamic):Dynamic;
	/**
		Key release event handler and validator.
	**/
	public function on_key_release(event:Dynamic):Dynamic;
	/**
		Mouse scroll event handler and validator
	**/
	public function on_scroll(event:Dynamic):Dynamic;
	/**
		Cursor move event handler and validator
	**/
	public function onmove(event:Dynamic):Dynamic;
	/**
		Button press handler and validator
	**/
	public function press(event:Dynamic):Dynamic;
	/**
		Button release event handler and validator
	**/
	public function release(event:Dynamic):Dynamic;
	/**
		Set whether the widget is active.
		        
	**/
	public function set_active(active:Dynamic):Dynamic;
	/**
		Set the visibility of our artists.
	**/
	public function set_visible(visible:Dynamic):Dynamic;
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