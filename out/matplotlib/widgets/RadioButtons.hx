/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "RadioButtons") extern class RadioButtons {
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
		Add radio buttons to :class:`matplotlib.axes.Axes` instance *ax*
		
		*labels*
		    A len(buttons) list of labels as strings
		
		*active*
		    The index into labels for the button that is active
		
		*activecolor*
		    The color of the button when clicked
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, labels:Dynamic, ?active:Dynamic, ?activecolor:Dynamic):Dynamic;
	/**
		Add radio buttons to :class:`matplotlib.axes.Axes` instance *ax*
		
		*labels*
		    A len(buttons) list of labels as strings
		
		*active*
		    The index into labels for the button that is active
		
		*activecolor*
		    The color of the button when clicked
	**/
	public function new(ax:Dynamic, labels:Dynamic, ?active:Dynamic, ?activecolor:Dynamic):Void;
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
	public function _clicked(event:Dynamic):Dynamic;
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
		When the button is clicked, call *func* with button label
		
		A connection id is returned which can be used to disconnect
	**/
	public function on_clicked(func:Dynamic):Dynamic;
	/**
		Trigger which radio button to make active.
		
		*index* is an index into the original label list
		    that this object was constructed with.
		    Raise ValueError if the index is invalid.
		
		Callbacks will be triggered if :attr:`eventson` is True.
	**/
	public function set_active(index:Dynamic):Dynamic;
}