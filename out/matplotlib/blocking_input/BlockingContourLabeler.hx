/* This file is generated, do not edit! */
package matplotlib.blocking_input;
@:pythonImport("matplotlib.blocking_input", "BlockingContourLabeler") extern class BlockingContourLabeler {
	/**
		Blocking call to retrieve n coordinate pairs through mouse
		clicks.
	**/
	public function __call__(_inline:Dynamic, ?inline_spacing:Dynamic, ?n:Dynamic, ?timeout:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(cs:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(cs:Dynamic):Void;
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
	/**
		This add the coordinates of an event to the list of clicks
	**/
	public function add_click(event:Dynamic):Dynamic;
	/**
		For base class, this just appends an event to events.
	**/
	public function add_event(event:Dynamic):Dynamic;
	/**
		This will be called if an event involving a button other than
		2 or 3 occcurs.  This will add a label to a contour.
	**/
	public function button1(event:Dynamic):Dynamic;
	/**
		This will be called if button 3 is clicked.  This will remove
		a label if not in inline mode.  Unfortunately, if one is doing
		inline labels, then there is currently no way to fix the
		broken contour - once humpty-dumpty is broken, he can't be put
		back together.  In inline mode, this does nothing.
	**/
	public function button3(event:Dynamic):Dynamic;
	static public var button_add : Dynamic;
	static public var button_pop : Dynamic;
	static public var button_stop : Dynamic;
	/**
		Disconnect all callbacks
	**/
	public function cleanup(?event:Dynamic):Dynamic;
	/**
		Process a key click event.  This maps certain keys to appropriate
		mouse click events.
	**/
	public function key_event():Dynamic;
	/**
		Process a mouse click event
	**/
	public function mouse_event():Dynamic;
	/**
		Will be called for any event involving a button other than
		button 2 or 3.  This will add a click if it is inside axes.
	**/
	public function mouse_event_add(event:Dynamic):Dynamic;
	/**
		Will be called for any event involving button 3.
		Button 3 removes the last click.
	**/
	public function mouse_event_pop(event:Dynamic):Dynamic;
	/**
		Will be called for any event involving button 2.
		Button 2 ends blocking input.
	**/
	public function mouse_event_stop(event:Dynamic):Dynamic;
	/**
		Event handler that will be passed to the current figure to
		retrieve events.
	**/
	public function on_event(event:Dynamic):Dynamic;
	/**
		This removes a click and the associated event from the object.
		Defaults to removing the last click, but any index can be
		supplied.
	**/
	public function pop(event:Dynamic, ?index:Dynamic):Dynamic;
	/**
		This removes a click from the list of clicks.  Defaults to
		removing the last click.
	**/
	public function pop_click(event:Dynamic, ?index:Dynamic):Dynamic;
	/**
		This removes an event from the event list.  Defaults to
		removing last event, but an index can be supplied.  Note that
		this does not check that there are events, much like the
		normal pop method.  If not events exist, this will throw an
		exception.
	**/
	public function pop_event(?index:Dynamic):Dynamic;
	/**
		This will be called to process events
	**/
	public function post_event():Dynamic;
}