/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.debugger_cli_common;
@:pythonImport("tensorflow.python.debug.cli.debugger_cli_common", "TabCompletionRegistry") extern class TabCompletionRegistry {
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
		Given a list of str, returns the longest common prefix.
		
		Args:
		  m: (list of str) A list of strings.
		
		Returns:
		  (str) The longest common prefix.
	**/
	public function _common_prefix(m:Dynamic):Dynamic;
	/**
		Deregister a list of context words.
		
		Args:
		  context_words: A list of context words to deregister, as a list of str.
		
		Raises:
		  KeyError: if there are word(s) in context_words that do not correspond
		    to any registered contexts.
	**/
	public function deregister_context(context_words:Dynamic):Dynamic;
	/**
		Add a list of completion items to a completion context.
		
		Args:
		  context_word: A single completion word as a string. The extension will
		    also apply to all other context words of the same context.
		  new_comp_items: (list of str) New completion items to add.
		
		Raises:
		  KeyError: if the context word has not been registered.
	**/
	public function extend_comp_items(context_word:Dynamic, new_comp_items:Dynamic):Dynamic;
	/**
		Get the tab completions given a context word and a prefix.
		
		Args:
		  context_word: The context word.
		  prefix: The prefix of the incomplete word.
		
		Returns:
		  (1) None if no registered context matches the context_word.
		      A list of str for the matching completion items. Can be an empty list
		      of a matching context exists, but no completion item matches the
		      prefix.
		  (2) Common prefix of all the words in the first return value. If the
		      first return value is None, this return value will be None, too. If
		      the first return value is not None, i.e., a list, this return value
		      will be a str, which can be an empty str if there is no common
		      prefix among the items of the list.
	**/
	public function get_completions(context_word:Dynamic, prefix:Dynamic):Dynamic;
	/**
		Register a tab-completion context.
		
		Register that, for each word in context_words, the potential tab-completions
		are the words in comp_items.
		
		A context word is a pre-existing, completed word in the command line that
		determines how tab-completion works for another, incomplete word in the same
		command line.
		Completion items consist of potential candidates for the incomplete word.
		
		To give a general example, a context word can be "drink", and the completion
		items can be ["coffee", "tea", "water"]
		
		Note: A context word can be empty, in which case the context is for the
		 top-level commands.
		
		Args:
		  context_words: A list of context words belonging to the context being
		    registered. It is a list of str, instead of a single string, to support
		    synonym words triggering the same tab-completion context, e.g.,
		    both "drink" and the short-hand "dr" can trigger the same context.
		  comp_items: A list of completion items, as a list of str.
		
		Raises:
		  TypeError: if the input arguments are not all of the correct types.
	**/
	public function register_tab_comp_context(context_words:Dynamic, comp_items:Dynamic):Dynamic;
	/**
		Remove a list of completion items from a completion context.
		
		Args:
		  context_word: A single completion word as a string. The removal will
		    also apply to all other context words of the same context.
		  comp_items: Completion items to remove.
		
		Raises:
		  KeyError: if the context word has not been registered.
	**/
	public function remove_comp_items(context_word:Dynamic, comp_items:Dynamic):Dynamic;
}