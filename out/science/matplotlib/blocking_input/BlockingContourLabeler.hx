/* This file is generated, do not edit! */
package matplotlib.blocking_input;
@:pythonImport("matplotlib.blocking_input", "BlockingContourLabeler") extern class BlockingContourLabeler {
	/**
		Blocking call to retrieve *n* coordinate pairs through mouse clicks.
	**/
	public function __call__(_inline:Dynamic, ?inline_spacing:Dynamic, ?n:Dynamic, ?timeout:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(cs:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(cs:Dynamic):Void;
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
	/**
		Add the coordinates of an event to the list of clicks.
		
		Parameters
		----------
		event : `~.backend_bases.MouseEvent`
	**/
	public function add_click(event:Dynamic):Dynamic;
	/**
		For base class, this just appends an event to events.
	**/
	public function add_event(event:Dynamic):Dynamic;
	/**
		Process an button-1 event (add a label to a contour).
		
		Parameters
		----------
		event : `~.backend_bases.MouseEvent`
	**/
	public function button1(event:Dynamic):Dynamic;
	/**
		Process an button-3 event (remove a label if not in inline mode).
		
		Unfortunately, if one is doing inline labels, then there is currently
		no way to fix the broken contour - once humpty-dumpty is broken, he
		can't be put back together.  In inline mode, this does nothing.
		
		Parameters
		----------
		event : `~.backend_bases.MouseEvent`
	**/
	public function button3(event:Dynamic):Dynamic;
	static public var button_add : Dynamic;
	static public var button_pop : Dynamic;
	static public var button_stop : Dynamic;
	/**
		Parameters
		----------
		event : `~.backend_bases.MouseEvent`, optional
		    Not used
	**/
	public function cleanup(?event:Dynamic):Dynamic;
	/**
		Process a key press event, mapping keys to appropriate mouse clicks.
	**/
	public function key_event():Dynamic;
	/**
		Process a mouse click event.
	**/
	public function mouse_event():Dynamic;
	/**
		Process an button-1 event (add a click if inside axes).
		
		Parameters
		----------
		event : `~.backend_bases.MouseEvent`
	**/
	public function mouse_event_add(event:Dynamic):Dynamic;
	/**
		Process an button-3 event (remove the last click).
		
		Parameters
		----------
		event : `~.backend_bases.MouseEvent`
	**/
	public function mouse_event_pop(event:Dynamic):Dynamic;
	/**
		Process an button-2 event (end blocking input).
		
		Parameters
		----------
		event : `~.backend_bases.MouseEvent`
	**/
	public function mouse_event_stop(event:Dynamic):Dynamic;
	/**
		Event handler; will be passed to the current figure to retrieve events.
	**/
	public function on_event(event:Dynamic):Dynamic;
	/**
		Remove a click and the associated event from the list of clicks.
		
		Defaults to the last click.
	**/
	public function pop(event:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Remove a click (by default, the last) from the list of clicks.
		
		Parameters
		----------
		event : `~.backend_bases.MouseEvent`
	**/
	public function pop_click(event:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Remove an event from the event list -- by default, the last.
		
		Note that this does not check that there are events, much like the
		normal pop method.  If no events exist, this will throw an exception.
	**/
	public function pop_event(?index:Dynamic):Dynamic;
	/**
		Process an event.
	**/
	public function post_event():Dynamic;
}