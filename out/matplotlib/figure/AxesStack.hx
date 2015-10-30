/* This file is generated, do not edit! */
package matplotlib.figure;
@:pythonImport("matplotlib.figure", "AxesStack") extern class AxesStack {
	/**
		return the current element, or None
	**/
	public function __call__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __contains__(a:Dynamic):Dynamic;
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
	public function __getitem__(ind:Dynamic):Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
	public function _entry_from_axes(e:Dynamic):Dynamic;
	/**
		Add Axes *a*, with key *key*, to the stack, and return the stack.
		
		If *a* is already on the stack, don't add it again, but
		return *None*.
	**/
	public function add(key:Dynamic, a:Dynamic):Dynamic;
	/**
		Return a list of the Axes instances that have been added to the figure
	**/
	public function as_list():Dynamic;
	/**
		move the position back and return the current element
	**/
	public function back():Dynamic;
	/**
		Move the given axes, which must already exist in the
		stack, to the top.
	**/
	public function bubble(a:Dynamic):Dynamic;
	/**
		empty the stack
	**/
	public function clear():Dynamic;
	/**
		Return a tuple of ``(key, axes)`` for the active axes.
		
		If no axes exists on the stack, then returns ``(None, None)``.
	**/
	public function current_key_axes():Dynamic;
	public function empty():Dynamic;
	/**
		move the position forward and return the current element
	**/
	public function forward():Dynamic;
	/**
		Return the Axes instance that was added with *key*.
		If it is not present, return None.
	**/
	public function get(key:Dynamic):Dynamic;
	/**
		push the first element onto the top of the stack
	**/
	public function home():Dynamic;
	/**
		push object onto stack at current position - all elements
		occurring later than the current position are discarded
	**/
	public function push(o:Dynamic):Dynamic;
	/**
		Remove the axes from the stack.
	**/
	public function remove(a:Dynamic):Dynamic;
}