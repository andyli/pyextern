/* This file is generated, do not edit! */
package pandas.computation.pytables;
@:pythonImport("pandas.computation.pytables", "Scope") extern class Scope {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
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
	public function __init__(level:Dynamic, ?global_dict:Dynamic, ?local_dict:Dynamic, ?queryables:Dynamic):Dynamic;
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
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
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
	static public var __slots__ : Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		Get specifically scoped variables from a list of stack frames.
		
		Parameters
		----------
		stack : list
		    A list of stack frames as returned by ``inspect.stack()``
		scopes : sequence of strings
		    A sequence containing valid stack frame attribute names that
		    evaluate to a dictionary. For example, ('locals', 'globals')
	**/
	public function _get_vars(stack:Dynamic, scopes:Dynamic):Dynamic;
	/**
		Add a temporary variable to the scope.
		
		Parameters
		----------
		value : object
		    An arbitrary object to be assigned to a temporary variable.
		
		Returns
		-------
		name : basestring
		    The name of the temporary variable created.
	**/
	public function add_tmp(value:Dynamic):Dynamic;
	/**
		Return the full scope for use with passing to engines transparently
		as a mapping.
		
		Returns
		-------
		vars : DeepChainMap
		    All variables in this scope.
	**/
	static public var full_scope : Dynamic;
	/**
		Return whether we have any extra scope.
		
		For example, DataFrames pass Their columns as resolvers during calls to
		``DataFrame.eval()`` and ``DataFrame.query()``.
		
		Returns
		-------
		hr : bool
	**/
	static public var has_resolvers : Dynamic;
	static public var level : Dynamic;
	/**
		The number of temporary variables in this scope
	**/
	static public var ntemps : Dynamic;
	static public var queryables : Dynamic;
	/**
		Resolve a variable name in a possibly local context
		
		Parameters
		----------
		key : text_type
		    A variable name
		is_local : bool
		    Flag indicating whether the variable is local or not (prefixed with
		    the '@' symbol)
		
		Returns
		-------
		value : object
		    The value of a particular variable
	**/
	public function resolve(key:Dynamic, is_local:Dynamic):Dynamic;
	static public var scope : Dynamic;
	/**
		Replace a variable name, with a potentially new value.
		
		Parameters
		----------
		old_key : str
		    Current variable name to replace
		new_key : str
		    New variable name to replace `old_key` with
		new_value : object
		    Value to be replaced along with the possible renaming
	**/
	public function swapkey(old_key:Dynamic, new_key:Dynamic, ?new_value:Dynamic):Dynamic;
	static public var target : Dynamic;
	static public var temps : Dynamic;
	/**
		Update the current scope by going back `level` levels.
		
		Parameters
		----------
		level : int or None, optional, default None
	**/
	public function update(level:Dynamic):Dynamic;
}