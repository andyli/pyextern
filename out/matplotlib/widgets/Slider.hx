/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "Slider") extern class Slider {
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
		Create a slider from *valmin* to *valmax* in axes *ax*.
		
		additional kwargs are passed on to ``self.poly`` which is the
		:class:`matplotlib.patches.Rectangle` which draws the slider
		knob.  See the :class:`matplotlib.patches.Rectangle` documentation
		valid property names (e.g., *facecolor*, *edgecolor*, *alpha*, ...)
		
		Parameters
		----------
		ax : Axes
		    The Axes to put the slider in
		
		label : str
		    Slider label
		
		valmin : float
		    The minimum value of the slider
		
		valmax : float
		    The maximum value of the slider
		
		valinit : float
		    The slider initial position
		
		label : str
		    The slider label
		
		valfmt : str
		    Used to format the slider value, fprint format string
		
		closedmin : bool
		    Indicate whether the slider interval is closed on the bottom
		
		closedmax : bool
		    Indicate whether the slider interval is closed on the top
		
		slidermin : Slider or None
		    Do not allow the current slider to have a value less than
		    `slidermin`
		
		slidermax : Slider or None
		    Do not allow the current slider to have a value greater than
		    `slidermax`
		
		
		dragging : bool
		    if the slider can be dragged by the mouse
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, label:Dynamic, valmin:Dynamic, valmax:Dynamic, ?valinit:Dynamic, ?valfmt:Dynamic, ?closedmin:Dynamic, ?closedmax:Dynamic, ?slidermin:Dynamic, ?slidermax:Dynamic, ?dragging:Dynamic, kwargs:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	/**
		update the slider position
	**/
	public function _update(event:Dynamic):Dynamic;
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
		Return True if event should be ignored.
		
		This method (or a version of it) should be called at the beginning
		of any event callback.
	**/
	public function ignore(event:Dynamic):Dynamic;
	/**
		When the slider value is changed, call *func* with the new
		slider position
		
		A connection id is returned which can be used to disconnect
	**/
	public function on_changed(func:Dynamic):Dynamic;
	/**
		reset the slider to the initial value if needed
	**/
	public function reset():Dynamic;
	public function set_val(val:Dynamic):Dynamic;
}