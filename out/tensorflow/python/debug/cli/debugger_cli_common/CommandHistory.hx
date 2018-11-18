/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.debugger_cli_common;
@:pythonImport("tensorflow.python.debug.cli.debugger_cli_common", "CommandHistory") extern class CommandHistory {
	static public var _HISTORY_FILE_NAME : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		CommandHistory constructor.
		
		Args:
		  limit: Maximum number of the most recent commands that this instance
		    keeps track of, as an int.
		  history_file_path: (str) Manually specified path to history file. Used in
		    testing.
	**/
	@:native("__init__")
	public function ___init__(?limit:Dynamic, ?history_file_path:Dynamic):Dynamic;
	/**
		CommandHistory constructor.
		
		Args:
		  limit: Maximum number of the most recent commands that this instance
		    keeps track of, as an int.
		  history_file_path: (str) Manually specified path to history file. Used in
		    testing.
	**/
	public function new(?limit:Dynamic, ?history_file_path:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_command_to_history_file(command:Dynamic):Dynamic;
	static public function _get_default_history_file_path():Dynamic;
	public function _load_history_from_file():Dynamic;
	/**
		Add a command to the command history.
		
		Args:
		  command: The history command, as a str.
		
		Raises:
		  TypeError: if command is not a str.
	**/
	public function add_command(command:Dynamic):Dynamic;
	/**
		Look up the n most recent commands that starts with prefix.
		
		Args:
		  prefix: The prefix to lookup.
		  n: Number of most recent commands to look up.
		
		Returns:
		  A list of n most recent commands that have the specified prefix, or all
		  available most recent commands that have the prefix, if n exceeds the
		  number of history commands with the prefix.
	**/
	public function lookup_prefix(prefix:Dynamic, n:Dynamic):Dynamic;
	/**
		Look up the n most recent commands.
		
		Args:
		  n: Number of most recent commands to look up.
		
		Returns:
		  A list of n most recent commands, or all available most recent commands,
		  if n exceeds size of the command history, in chronological order.
	**/
	public function most_recent_n(n:Dynamic):Dynamic;
}