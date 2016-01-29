/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "SpanSelector") extern class SpanSelector {
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
		Create a span selector in *ax*.  When a selection is made, clear
		the span and call *onselect* with::
		
		    onselect(vmin, vmax)
		
		and clear the span.
		
		*direction* must be 'horizontal' or 'vertical'
		
		If *minspan* is not *None*, ignore events smaller than *minspan*
		
		The span rectangle is drawn with *rectprops*; default::
		
		  rectprops = dict(facecolor='red', alpha=0.5)
		
		Set the visible attribute to *False* if you want to turn off
		the functionality of the span selector
		
		If *span_stays* is True, the span stays visble after making
		a valid selection.
		
		*button* is a list of integers indicating which mouse buttons should
		be used for selection.  You can also specify a single
		integer if only a single button is desired.  Default is *None*,
		which does not limit which button can be used.
		
		Note, typically:
		 1 = left mouse button
		 2 = center mouse button (scroll wheel)
		 3 = right mouse button
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, onselect:Dynamic, direction:Dynamic, ?minspan:Dynamic, ?useblit:Dynamic, ?rectprops:Dynamic, ?onmove_callback:Dynamic, ?span_stays:Dynamic, ?button:Dynamic):Dynamic;
	/**
		Create a span selector in *ax*.  When a selection is made, clear
		the span and call *onselect* with::
		
		    onselect(vmin, vmax)
		
		and clear the span.
		
		*direction* must be 'horizontal' or 'vertical'
		
		If *minspan* is not *None*, ignore events smaller than *minspan*
		
		The span rectangle is drawn with *rectprops*; default::
		
		  rectprops = dict(facecolor='red', alpha=0.5)
		
		Set the visible attribute to *False* if you want to turn off
		the functionality of the span selector
		
		If *span_stays* is True, the span stays visble after making
		a valid selection.
		
		*button* is a list of integers indicating which mouse buttons should
		be used for selection.  You can also specify a single
		integer if only a single button is desired.  Default is *None*,
		which does not limit which button can be used.
		
		Note, typically:
		 1 = left mouse button
		 2 = center mouse button (scroll wheel)
		 3 = right mouse button
	**/
	public function new(ax:Dynamic, onselect:Dynamic, direction:Dynamic, ?minspan:Dynamic, ?useblit:Dynamic, ?rectprops:Dynamic, ?onmove_callback:Dynamic, ?span_stays:Dynamic, ?button:Dynamic):Void;
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
		Key release event handler
	**/
	public function _on_key_release(event:Dynamic):Dynamic;
	/**
		Mouse scroll event handler
	**/
	public function _on_scroll(event:Dynamic):Dynamic;
	/**
		on motion notify event
	**/
	public function _onmove(event:Dynamic):Dynamic;
	/**
		on button press event
	**/
	public function _press(event:Dynamic):Dynamic;
	/**
		on button release event
	**/
	public function _release(event:Dynamic):Dynamic;
	/**
		Is the widget active?
	**/
	public var active : Dynamic;
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
		return *True* if *event* should be ignored
	**/
	public function ignore(event:Dynamic):Dynamic;
	public function new_axes(ax:Dynamic):Dynamic;
	/**
		Key press event handler and validator for all selection widgets
	**/
	public function on_key_press(event:Dynamic):Dynamic;
	/**
		Key release event handler and validator
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
		Set the visibility of our artists 
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