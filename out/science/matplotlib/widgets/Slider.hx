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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		
		valinit : float, default: 0.5
		    The slider initial position.
		
		valfmt : str, default: None
		    %-format string used to format the slider value.  If None, a
		    `.ScalarFormatter` is used instead.
		
		closedmin : bool, default: True
		    Whether the slider interval is closed on the bottom.
		
		closedmax : bool, default: True
		    Whether the slider interval is closed on the top.
		
		slidermin : Slider, default: None
		    Do not allow the current slider to have a value less than
		    the value of the Slider *slidermin*.
		
		slidermax : Slider, default: None
		    Do not allow the current slider to have a value greater than
		    the value of the Slider *slidermax*.
		
		dragging : bool, default: True
		    If True the slider can be dragged by the mouse.
		
		valstep : float or array-like, default: None
		    If a float, the slider will snap to multiples of *valstep*.
		    If an array the slider will snap to the values in the array.
		
		orientation : {'horizontal', 'vertical'}, default: 'horizontal'
		    The orientation of the slider.
		
		initcolor : color, default: 'r'
		    The color of the line at the *valinit* position. Set to ``'none'``
		    for no line.
		
		track_color : color, default: 'lightgrey'
		    The color of the background track. The track is accessible for
		    further styling via the *track* attribute.
		
		handle_style : dict
		    Properties of the slider handle. Default values are
		
		    ========= ===== ======= ========================================
		    Key       Value Default Description
		    ========= ===== ======= ========================================
		    facecolor color 'white' The facecolor of the slider handle.
		    edgecolor color '.75'   The edgecolor of the slider handle.
		    size      int   10      The size of the slider handle in points.
		    ========= ===== ======= ========================================
		
		    Other values will be transformed as marker{foo} and passed to the
		    `~.Line2D` constructor. e.g. ``handle_style = {'style'='x'}`` will
		    result in ``markerstyle = 'x'``.
		
		Notes
		-----
		Additional kwargs are passed on to ``self.poly`` which is the
		`~matplotlib.patches.Polygon` that draws the slider knob.  See the
		`.Polygon` documentation for valid property names (``facecolor``,
		``edgecolor``, ``alpha``, etc.).
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, label:Dynamic, valmin:Dynamic, valmax:Dynamic, ?valinit:Dynamic, ?valfmt:Dynamic, ?closedmin:Dynamic, ?closedmax:Dynamic, ?slidermin:Dynamic, ?slidermax:Dynamic, ?dragging:Dynamic, ?valstep:Dynamic, ?orientation:Dynamic, ?initcolor:Dynamic, ?track_color:Dynamic, ?handle_style:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		valinit : float, default: 0.5
		    The slider initial position.
		
		valfmt : str, default: None
		    %-format string used to format the slider value.  If None, a
		    `.ScalarFormatter` is used instead.
		
		closedmin : bool, default: True
		    Whether the slider interval is closed on the bottom.
		
		closedmax : bool, default: True
		    Whether the slider interval is closed on the top.
		
		slidermin : Slider, default: None
		    Do not allow the current slider to have a value less than
		    the value of the Slider *slidermin*.
		
		slidermax : Slider, default: None
		    Do not allow the current slider to have a value greater than
		    the value of the Slider *slidermax*.
		
		dragging : bool, default: True
		    If True the slider can be dragged by the mouse.
		
		valstep : float or array-like, default: None
		    If a float, the slider will snap to multiples of *valstep*.
		    If an array the slider will snap to the values in the array.
		
		orientation : {'horizontal', 'vertical'}, default: 'horizontal'
		    The orientation of the slider.
		
		initcolor : color, default: 'r'
		    The color of the line at the *valinit* position. Set to ``'none'``
		    for no line.
		
		track_color : color, default: 'lightgrey'
		    The color of the background track. The track is accessible for
		    further styling via the *track* attribute.
		
		handle_style : dict
		    Properties of the slider handle. Default values are
		
		    ========= ===== ======= ========================================
		    Key       Value Default Description
		    ========= ===== ======= ========================================
		    facecolor color 'white' The facecolor of the slider handle.
		    edgecolor color '.75'   The edgecolor of the slider handle.
		    size      int   10      The size of the slider handle in points.
		    ========= ===== ======= ========================================
		
		    Other values will be transformed as marker{foo} and passed to the
		    `~.Line2D` constructor. e.g. ``handle_style = {'style'='x'}`` will
		    result in ``markerstyle = 'x'``.
		
		Notes
		-----
		Additional kwargs are passed on to ``self.poly`` which is the
		`~matplotlib.patches.Polygon` that draws the slider knob.  See the
		`.Polygon` documentation for valid property names (``facecolor``,
		``edgecolor``, ``alpha``, etc.).
	**/
	public function new(ax:Dynamic, label:Dynamic, valmin:Dynamic, valmax:Dynamic, ?valinit:Dynamic, ?valfmt:Dynamic, ?closedmin:Dynamic, ?closedmax:Dynamic, ?slidermin:Dynamic, ?slidermax:Dynamic, ?dragging:Dynamic, ?valstep:Dynamic, ?orientation:Dynamic, ?initcolor:Dynamic, ?track_color:Dynamic, ?handle_style:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _active : Dynamic;
	/**
		Pretty-print *val*.
	**/
	public function _format(val:Dynamic):Dynamic;
	/**
		Return *val* coerced to closest number in the ``valstep`` grid.
	**/
	public function _stepped_value(val:Dynamic):Dynamic;
	/**
		Update the slider position.
	**/
	public function _update(event:Dynamic):Dynamic;
	/**
		Makes sure *val* is with given bounds.
	**/
	public function _value_in_bounds(val:Dynamic):Dynamic;
	/**
		Is the widget active?
	**/
	public var active : Dynamic;
	public var cids : Dynamic;
	public var cnt : Dynamic;
	/**
		Connect a callback function with an event.
		
		This should be used in lieu of ``figure.canvas.mpl_connect`` since this
		function stores callback ids for later clean up.
	**/
	public function connect_event(event:Dynamic, callback:Dynamic):Dynamic;
	/**
		Remove the observer with connection id *cid*.
		
		Parameters
		----------
		cid : int
		    Connection id of the observer to be removed.
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
		Return whether *event* should be ignored.
		
		This method should be called at the beginning of any event callback.
	**/
	public function ignore(event:Dynamic):Dynamic;
	public var observers : Dynamic;
	/**
		Connect *func* as callback function to changes of the slider value.
		
		Parameters
		----------
		func : callable
		    Function to call when slider is changed.
		    The function must accept a single float as its arguments.
		
		Returns
		-------
		int
		    Connection id (which can be used to disconnect *func*).
	**/
	public function on_changed(func:Dynamic):Dynamic;
	/**
		Reset the slider to the initial value.
	**/
	public function reset():Dynamic;
	/**
		Set whether the widget is active.
	**/
	public function set_active(active:Dynamic):Dynamic;
	/**
		Set slider value to *val*.
		
		Parameters
		----------
		val : float
	**/
	public function set_val(val:Dynamic):Dynamic;
}