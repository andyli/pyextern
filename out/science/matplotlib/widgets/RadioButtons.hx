/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "RadioButtons") extern class RadioButtons {
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
		Add radio buttons to an `~.axes.Axes`.
		
		Parameters
		----------
		ax : `~matplotlib.axes.Axes`
		    The axes to add the buttons to.
		labels : list of str
		    The button labels.
		active : int
		    The index of the initially selected button.
		activecolor : color
		    The color of the selected button.
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, labels:Dynamic, ?active:Dynamic, ?activecolor:Dynamic):Dynamic;
	/**
		Add radio buttons to an `~.axes.Axes`.
		
		Parameters
		----------
		ax : `~matplotlib.axes.Axes`
		    The axes to add the buttons to.
		labels : list of str
		    The button labels.
		active : int
		    The index of the initially selected button.
		activecolor : color
		    The color of the selected button.
	**/
	public function new(ax:Dynamic, labels:Dynamic, ?active:Dynamic, ?activecolor:Dynamic):Void;
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
	public function _clicked(event:Dynamic):Dynamic;
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
		Connect the callback function *func* to button click events.
		
		Returns a connection id, which can be used to disconnect the callback.
	**/
	public function on_clicked(func:Dynamic):Dynamic;
	/**
		Select button with number *index*.
		
		Callbacks will be triggered if :attr:`eventson` is True.
	**/
	public function set_active(index:Dynamic):Dynamic;
}