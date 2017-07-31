/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.debugger_cli_common;
@:pythonImport("tensorflow.python.debug.cli.debugger_cli_common", "CommandHandlerRegistry") extern class CommandHandlerRegistry {
	static public var HELP_COMMAND : Dynamic;
	static public var HELP_COMMAND_ALIASES : Dynamic;
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
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Compile the help information for a given command prefix.
		
		Args:
		  cmd_prefix: Command prefix, as the prefix itself or one of its
		    aliases.
		
		Returns:
		  A list of str as the help information fo cmd_prefix. If the cmd_prefix
		    does not exist, the returned list of str will indicate that.
	**/
	public function _get_help_for_command_prefix(cmd_prefix:Dynamic):Dynamic;
	/**
		Command handler for "help".
		
		"help" is a common command that merits built-in support from this class.
		
		Args:
		  args: Command line arguments to "help" (not including "help" itself).
		  screen_info: (dict) Information regarding the screen, e.g., the screen
		    width in characters: {"cols": 80}
		
		Returns:
		  (RichTextLines) Screen text output.
	**/
	public function _help_handler(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Resolve command prefix from the prefix itself or its alias.
		
		Args:
		  token: a str to be resolved.
		
		Returns:
		  If resolvable, the resolved command prefix.
		  If not resolvable, None.
	**/
	public function _resolve_prefix(token:Dynamic):Dynamic;
	/**
		Handles a command by dispatching it to a registered command handler.
		
		Args:
		  prefix: Command prefix, as a str, e.g., "print".
		  argv: Command argument vector, excluding the command prefix, represented
		    as a list of str, e.g.,
		    ["tensor_1"]
		  screen_info: A dictionary containing screen info, e.g., {"cols": 100}.
		
		Returns:
		  An instance of RichTextLines or None. If any exception is caught during
		  the invocation of the command handler, the RichTextLines will wrap the
		  error type and message.
		
		Raises:
		  ValueError: If
		    1) prefix is empty, or
		    2) no command handler is registered for the command prefix, or
		    3) the handler is found for the prefix, but it fails to return a
		      RichTextLines or raise any exception.
		  CommandLineExit:
		    If the command handler raises this type of exception, this method will
		    simply pass it along.
	**/
	public function dispatch_command(prefix:Dynamic, argv:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Compile help information into a RichTextLines object.
		
		Args:
		  cmd_prefix: Optional command prefix. As the prefix itself or one of its
		    aliases.
		
		Returns:
		  A RichTextLines object containing the help information. If cmd_prefix
		  is None, the return value will be the full command-line help. Otherwise,
		  it will be the help information for the specified command.
	**/
	public function get_help(?cmd_prefix:Dynamic):Dynamic;
	/**
		Test if a command prefix or its alias is has a registered handler.
		
		Args:
		  prefix: A prefix or its alias, as a str.
		
		Returns:
		  True iff a handler is registered for prefix.
	**/
	public function is_registered(prefix:Dynamic):Dynamic;
	/**
		Register a callable as a command handler.
		
		Args:
		  prefix: Command prefix, i.e., the first word in a command, e.g.,
		    "print" as in "print tensor_1".
		  handler: A callable of the following signature:
		      foo_handler(argv, screen_info=None),
		    where argv is the argument vector (excluding the command prefix) and
		      screen_info is a dictionary containing information about the screen,
		      such as number of columns, e.g., {"cols": 100}.
		    The callable should return:
		      1) a RichTextLines object representing the screen output.
		
		    The callable can also raise an exception of the type CommandLineExit,
		    which if caught by the command-line interface, will lead to its exit.
		    The exception can optionally carry an exit token of arbitrary type.
		  help_info: A help string.
		  prefix_aliases: Aliases for the command prefix, as a list of str. E.g.,
		    shorthands for the command prefix: ["p", "pr"]
		
		Raises:
		  ValueError: If
		    1) the prefix is empty, or
		    2) handler is not callable, or
		    3) a handler is already registered for the prefix, or
		    4) elements in prefix_aliases clash with existing aliases.
		    5) help_info is not a str.
	**/
	public function register_command_handler(prefix:Dynamic, handler:Dynamic, help_info:Dynamic, ?prefix_aliases:Dynamic):Dynamic;
	/**
		Set an introductory message to help output.
		
		Args:
		  help_intro: (RichTextLines) Rich text lines appended to the
		    beginning of the output of the command "help", as introductory
		    information.
	**/
	public function set_help_intro(help_intro:Dynamic):Dynamic;
}