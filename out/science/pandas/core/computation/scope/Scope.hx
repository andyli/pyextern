/* This file is generated, do not edit! */
package pandas.core.computation.scope;
@:pythonImport("pandas.core.computation.scope", "Scope") extern class Scope {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	public function ___init__(level:Dynamic, ?global_dict:Dynamic, ?local_dict:Dynamic, ?resolvers:Dynamic, ?target:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(level:Dynamic, ?global_dict:Dynamic, ?local_dict:Dynamic, ?resolvers:Dynamic, ?target:Dynamic):Void;
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
	static public var __slots__ : Dynamic;
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
		Update the current scope by going back `level` levels.
		
		Parameters
		----------
		level : int
	**/
	public function _update(level:Dynamic):Dynamic;
	/**
		Add a temporary variable to the scope.
		
		Parameters
		----------
		value : object
		    An arbitrary object to be assigned to a temporary variable.
		
		Returns
		-------
		str
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
	public var full_scope : Dynamic;
	/**
		Return whether we have any extra scope.
		
		For example, DataFrames pass Their columns as resolvers during calls to
		``DataFrame.eval()`` and ``DataFrame.query()``.
		
		Returns
		-------
		hr : bool
	**/
	public var has_resolvers : Bool;
	public var level : Dynamic;
	/**
		The number of temporary variables in this scope
	**/
	public var ntemps : Dynamic;
	/**
		Resolve a variable name in a possibly local context.
		
		Parameters
		----------
		key : str
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
	public var resolvers : Dynamic;
	public var scope : Dynamic;
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
	public var target : Dynamic;
	public var temps : Dynamic;
}