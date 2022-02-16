/* This file is generated, do not edit! */
package tensorflow.python.ops.script_ops;
@:pythonImport("tensorflow.python.ops.script_ops", "FuncRegistry") extern class FuncRegistry {
	/**
		Calls the registered function for `token` with args.
		
		Args:
		  token: A key into this `FuncRegistry` identifying which function to call.
		  device: Name of the device on which outputs of `token`'s corresponding
		    operation should be placed. Used iff the function registered for `token`
		    is an EagerPyFunc.
		  args: The arguments to pass to the function registered for `token`.
		
		Returns:
		  The output of the function registered for `token`.
		
		Raises:
		  ValueError: if no function is registered for `token`.
	**/
	public function __call__(token:Dynamic, device:Dynamic, args:Dynamic):Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		Converts an arg to numpy, avoiding dangerous string and unicode dtypes.
		
		Numpy pads with zeros when using string and unicode dtypes if different
		components of a tensor have different lengths.  This is bad: ignoring the
		padding is wrong for text data, and removing the padding is wrong for binary
		data.  To avoid this bug, we redo the conversion using an object dtype.
		Additionally, we convert unicode strings to (byte-)strings for
		compatibility.
		
		Args:
		  value: Value to convert to a numpy array.
		  dtype: (Optional.) Desired NumPy type for the returned value.
		
		Returns:
		  A numpy array.
	**/
	static public function _convert(value:Dynamic, ?dtype:Dynamic):Dynamic;
	public var _ctx : Dynamic;
	/**
		Returns a unique token.
	**/
	public function _next_unique_token():Dynamic;
	/**
		Gets the registered function corresponding to `token`.
	**/
	public function get(token:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Registers `func` and returns a unique token for this entry.
	**/
	public function insert(func:Dynamic):Dynamic;
	/**
		Removes the registered function corresponding to `token`.
	**/
	public function remove(token:Dynamic):Dynamic;
	/**
		Returns how many functions are currently registered.
	**/
	public function size():Dynamic;
}