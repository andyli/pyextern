/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "Slider") extern class Slider {
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
		Parameters
		----------
		ax : Axes
		    The Axes to put the slider in.
		
		label : str
		    Slider label.
		
		valmin : float
		    The minimum value of the slider.
		
		valmax : float
		    The maximum value of the slider.
		
		valinit : float, optional, default: 0.5
		    The slider initial position.
		
		valfmt : str, optional, default: "%1.2f"
		    Used to format the slider value, fprint format string.
		
		closedmin : bool, optional, default: True
		    Indicate whether the slider interval is closed on the bottom.
		
		closedmax : bool, optional, default: True
		    Indicate whether the slider interval is closed on the top.
		
		slidermin : Slider, optional, default: None
		    Do not allow the current slider to have a value less than
		    the value of the Slider `slidermin`.
		
		slidermax : Slider, optional, default: None
		    Do not allow the current slider to have a value greater than
		    the value of the Slider `slidermax`.
		
		dragging : bool, optional, default: True
		    If True the slider can be dragged by the mouse.
		
		valstep : float, optional, default: None
		    If given, the slider will snap to multiples of `valstep`.
		
		Notes
		-----
		Additional kwargs are passed on to ``self.poly`` which is the
		:class:`~matplotlib.patches.Rectangle` that draws the slider
		knob.  See the :class:`~matplotlib.patches.Rectangle` documentation for
		valid property names (e.g., `facecolor`, `edgecolor`, `alpha`).
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, label:Dynamic, valmin:Dynamic, valmax:Dynamic, ?valinit:Dynamic, ?valfmt:Dynamic, ?closedmin:Dynamic, ?closedmax:Dynamic, ?slidermin:Dynamic, ?slidermax:Dynamic, ?dragging:Dynamic, ?valstep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		ax : Axes
		    The Axes to put the slider in.
		
		label : str
		    Slider label.
		
		valmin : float
		    The minimum value of the slider.
		
		valmax : float
		    The maximum value of the slider.
		
		valinit : float, optional, default: 0.5
		    The slider initial position.
		
		valfmt : str, optional, default: "%1.2f"
		    Used to format the slider value, fprint format string.
		
		closedmin : bool, optional, default: True
		    Indicate whether the slider interval is closed on the bottom.
		
		closedmax : bool, optional, default: True
		    Indicate whether the slider interval is closed on the top.
		
		slidermin : Slider, optional, default: None
		    Do not allow the current slider to have a value less than
		    the value of the Slider `slidermin`.
		
		slidermax : Slider, optional, default: None
		    Do not allow the current slider to have a value greater than
		    the value of the Slider `slidermax`.
		
		dragging : bool, optional, default: True
		    If True the slider can be dragged by the mouse.
		
		valstep : float, optional, default: None
		    If given, the slider will snap to multiples of `valstep`.
		
		Notes
		-----
		Additional kwargs are passed on to ``self.poly`` which is the
		:class:`~matplotlib.patches.Rectangle` that draws the slider
		knob.  See the :class:`~matplotlib.patches.Rectangle` documentation for
		valid property names (e.g., `facecolor`, `edgecolor`, `alpha`).
	**/
	public function new(ax:Dynamic, label:Dynamic, valmin:Dynamic, valmax:Dynamic, ?valinit:Dynamic, ?valfmt:Dynamic, ?closedmin:Dynamic, ?closedmax:Dynamic, ?slidermin:Dynamic, ?slidermax:Dynamic, ?dragging:Dynamic, ?valstep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		update the slider position
	**/
	public function _update(event:Dynamic):Dynamic;
	/**
		Makes sure self.val is with given bounds.
	**/
	public function _value_in_bounds(val:Dynamic):Dynamic;
	/**
		Is the widget active?
	**/
	public var active : Dynamic;
	/**
		Connect callback with an event.
		
		This should be used in lieu of `figure.canvas.mpl_connect` since this
		function stores callback ids for later clean up.
	**/
	public function connect_event(event:Dynamic, callback:Dynamic):Dynamic;
	/**
		Remove the observer with connection id *cid*
		
		Parameters
		----------
		cid : int
		    Connection id of the observer to be removed
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
		When the slider value is changed call *func* with the new
		slider value
		
		Parameters
		----------
		func : callable
		    Function to call when slider is changed.
		    The function must accept a single float as its arguments.
		
		Returns
		-------
		cid : int
		    Connection id (which can be used to disconnect *func*)
	**/
	public function on_changed(func:Dynamic):Int;
	/**
		Reset the slider to the initial value
	**/
	public function reset():Dynamic;
	/**
		Set whether the widget is active.
		        
	**/
	public function set_active(active:Dynamic):Dynamic;
	/**
		Set slider value to *val*
		
		Parameters
		----------
		val : float
	**/
	public function set_val(val:Dynamic):Dynamic;
}