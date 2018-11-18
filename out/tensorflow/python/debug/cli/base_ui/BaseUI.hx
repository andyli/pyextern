/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.base_ui;
@:pythonImport("tensorflow.python.debug.cli.base_ui", "BaseUI") extern class BaseUI {
	static public var CLI_EXIT_COMMANDS : Dynamic;
	static public var CLI_PROMPT : Dynamic;
	static public var ERROR_MESSAGE_PREFIX : Dynamic;
	static public var INFO_MESSAGE_PREFIX : Dynamic;
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
		Constructor of the base class.
		
		Args:
		  on_ui_exit: (`Callable`) the callback to be called when the UI exits.
		  config: An instance of `cli_config.CLIConfig()` carrying user-facing
		    configurations.
	**/
	@:native("__init__")
	public function ___init__(?on_ui_exit:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Constructor of the base class.
		
		Args:
		  on_ui_exit: (`Callable`) the callback to be called when the UI exits.
		  config: An instance of `cli_config.CLIConfig()` carrying user-facing
		    configurations.
	**/
	public function new(?on_ui_exit:Dynamic, ?config:Dynamic):Void;
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
	/**
		Analyze raw input to tab-completer.
		
		Args:
		  text: (str) the full, raw input text to be tab-completed.
		
		Returns:
		  context: (str) the context str. For example,
		    If text == "print_tensor softmax", returns "print_tensor".
		    If text == "print", returns "".
		    If text == "", returns "".
		  prefix: (str) the prefix to be tab-completed, from the last word.
		    For example, if text == "print_tensor softmax", returns "softmax".
		    If text == "print", returns "print".
		    If text == "", returns "".
		  except_last_word: (str) the input text, except the last word.
		    For example, if text == "print_tensor softmax", returns "print_tensor".
		    If text == "print_tensor -a softmax", returns "print_tensor -a".
		    If text == "print", returns "".
		    If text == "", returns "".
	**/
	public function _analyze_tab_complete_input(text:Dynamic):Dynamic;
	/**
		Command handler for the "config" command.
	**/
	public function _config_command_handler(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Parse a command string into prefix and arguments.
		
		Args:
		  command: (str) Command string to be parsed.
		
		Returns:
		  prefix: (str) The command prefix.
		  args: (list of str) The command arguments (i.e., not including the
		    prefix).
		  output_file_path: (str or None) The path to save the screen output
		    to (if any).
	**/
	public function _parse_command(command:Dynamic):Dynamic;
	/**
		Obtain the CLIConfig of this `BaseUI` instance.
	**/
	public var config : Dynamic;
	/**
		A wrapper around CommandHandlerRegistry.register_command_handler().
		
		In addition to calling the wrapped register_command_handler() method, this
		method also registers the top-level tab-completion context based on the
		command prefixes and their aliases.
		
		See the doc string of the wrapped method for more details on the args.
		
		Args:
		  prefix: (str) command prefix.
		  handler: (callable) command handler.
		  help_info: (str) help information.
		  prefix_aliases: (list of str) aliases of the command prefix.
	**/
	public function register_command_handler(prefix:Dynamic, handler:Dynamic, help_info:Dynamic, ?prefix_aliases:Dynamic):Dynamic;
	/**
		Wrapper around TabCompletionRegistry.register_tab_comp_context().
	**/
	public function register_tab_comp_context(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Run the UI until user- or command- triggered exit.
		
		Args:
		  init_command: (str) Optional command to run on CLI start up.
		  title: (str) Optional title to display in the CLI.
		  title_color: (str) Optional color of the title, e.g., "yellow".
		  enable_mouse_on_start: (bool) Whether the mouse mode is to be enabled on
		    start-up.
		
		Returns:
		  An exit token of arbitrary type. Can be None.
	**/
	public function run_ui(?init_command:Dynamic, ?title:Dynamic, ?title_color:Dynamic, ?enable_mouse_on_start:Dynamic):Dynamic;
	/**
		Set an introductory message to the help output of the command registry.
		
		Args:
		  help_intro: (RichTextLines) Rich text lines appended to the beginning of
		    the output of the command "help", as introductory information.
	**/
	public function set_help_intro(help_intro:Dynamic):Dynamic;
}