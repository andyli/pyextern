/* This file is generated, do not edit! */
package docutils.parsers.rst.states;
@:pythonImport("docutils.parsers.rst.states", "Definition") extern class Definition {
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
		Initialize a `StateSM` object; extends `State.__init__()`.
		
		Check for indent state machine attributes, set defaults if not set.
	**/
	@:native("__init__")
	public function ___init__(state_machine:Dynamic, ?debug:Dynamic):Dynamic;
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
		Add whitespace-specific transitions before those defined in subclass.
		
		Extends `State.add_initial_transitions()`.
	**/
	public function add_initial_transitions():Dynamic;
	/**
		Add a transition to the start of the transition list.
		
		Parameter `transition`: a ready-made transition 3-tuple.
		
		Exception: `DuplicateTransitionError`.
	**/
	public function add_transition(name:Dynamic, transition:Dynamic):Dynamic;
	/**
		Add a list of transitions to the start of the transition list.
		
		Parameters:
		
		- `names`: a list of transition names.
		- `transitions`: a mapping of names to transition tuples.
		
		Exceptions: `DuplicateTransitionError`, `UnknownTransitionError`.
	**/
	public function add_transitions(names:Dynamic, transitions:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function blank(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Called at beginning of file.
	**/
	public function bof(context:Dynamic):Dynamic;
	/**
		Check for a valid subsection header.  Return 1 (true) or None (false).
		
		When a new section is reached that isn't a subsection of the current
		section, back up the line count (use ``previous_line(-x)``), then
		``raise EOFError``.  The current StateMachine will finish, then the
		calling StateMachine can re-examine the title.  This will work its way
		back up the calling chain until the correct section level isreached.
		
		@@@ Alternative: Evaluate the title, store the title info & level, and
		back up the chain until that level is reached.  Store in memo? Or
		return in results?
		
		:Exception: `EOFError` when a sibling or supersection encountered.
	**/
	public function check_subsection(source:Dynamic, style:Dynamic, lineno:Dynamic):Dynamic;
	static public var classifier_delimiter : Dynamic;
	public function definition_list_item(termline:Dynamic):Dynamic;
	/**
		Not a definition.
	**/
	public function eof(context:Dynamic):Dynamic;
	/**
		Handle an indented text block (first line's indent known).
		
		Extend or override in subclasses.
		
		Recursively run the registered state machine for known-indent indented
		blocks (`self.known_indent_sm`). The indent is the length of the
		match, ``match.end()``.
	**/
	public function first_known_indent(match:Dynamic, context:Dynamic, next_state:Dynamic):Dynamic;
	/**
		Jump to input line `abs_line_offset`, ignoring jumps past the end.
	**/
	public function goto_line(abs_line_offset:Dynamic):Dynamic;
	/**
		Definition list item.
	**/
	public function indent(match:Dynamic, context:Dynamic, next_state:Dynamic):Dynamic;
	static public var indent_sm : Dynamic;
	static public var indent_sm_kwargs : Dynamic;
	static public var initial_transitions : Dynamic;
	/**
		Return 2 lists: nodes (text and inline elements), and system_messages.
	**/
	public function inline_text(text:Dynamic, lineno:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function invalid_input(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Handle a known-indent text block. Extend or override in subclasses.
		
		Recursively run the registered state machine for known-indent indented
		blocks (`self.known_indent_sm`). The indent is the length of the
		match, ``match.end()``.
	**/
	public function known_indent(match:Dynamic, context:Dynamic, next_state:Dynamic):Dynamic;
	static public var known_indent_sm : Dynamic;
	static public var known_indent_sm_kwargs : Dynamic;
	/**
		Return a list of nodes.
	**/
	public function literal_block():Dynamic;
	/**
		Make & return a transition tuple based on `name`.
		
		This is a convenience function to simplify transition creation.
		
		Parameters:
		
		- `name`: a string, the name of the transition pattern & method. This
		  `State` object must have a method called '`name`', and a dictionary
		  `self.patterns` containing a key '`name`'.
		- `next_state`: a string, the name of the next `State` object for this
		  transition. A value of ``None`` (or absent) implies no state change
		  (i.e., continue with the same state).
		
		Exceptions: `TransitionPatternNotFound`, `TransitionMethodNotFound`.
	**/
	public function make_transition(name:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Return a list of transition names and a transition mapping.
		
		Parameter `name_list`: a list, where each entry is either a transition
		name string, or a 1- or 2-tuple (transition name, optional next state
		name).
	**/
	public function make_transitions(name_list:Dynamic):Dynamic;
	/**
		Create a new StateMachine rooted at `node` and run it over the input
		`block`. Also keep track of optional intermediate blank lines and the
		required final one.
	**/
	public function nested_list_parse(block:Dynamic, input_offset:Dynamic, node:Dynamic, initial_state:Dynamic, blank_finish:Dynamic, ?blank_finish_state:Dynamic, ?extra_settings:Dynamic, ?match_titles:Dynamic, ?state_machine_class:Dynamic, ?state_machine_kwargs:Dynamic):Dynamic;
	/**
		Create a new StateMachine rooted at `node` and run it over the input
		`block`.
	**/
	public function nested_parse(block:Dynamic, input_offset:Dynamic, node:Dynamic, ?match_titles:Dynamic, ?state_machine_class:Dynamic, ?state_machine_kwargs:Dynamic):Dynamic;
	/**
		StateMachine run from within other StateMachine runs, to parse nested
		document structures.
	**/
	static public function nested_sm(state_classes:Dynamic, initial_state:Dynamic, ?debug:Dynamic):Dynamic;
	static public var nested_sm_cache : Dynamic;
	static public var nested_sm_kwargs : Dynamic;
	/**
		Append new subsection to document tree. On return, check level.
	**/
	public function new_subsection(title:Dynamic, lineno:Dynamic, messages:Dynamic):Dynamic;
	/**
		Override `StateWS.no_match` to generate a system message.
		
		This code should never be run.
	**/
	public function no_match(context:Dynamic, transitions:Dynamic):Dynamic;
	/**
		A "do nothing" transition method.
		
		Return unchanged `context` & `next_state`, empty result. Useful for
		simple state changes (actionless transitions).
	**/
	public function nop(match:Dynamic, context:Dynamic, next_state:Dynamic):Dynamic;
	/**
		Return a list (paragraph & messages) & a boolean: literal_block next?
	**/
	public function paragraph(lines:Dynamic, lineno:Dynamic):Dynamic;
	static public var patterns : Dynamic;
	public function quoted_literal_block():Dynamic;
	/**
		Remove a transition by `name`.
		
		Exception: `UnknownTransitionError`.
	**/
	public function remove_transition(name:Dynamic):Dynamic;
	/**
		Initialize this `State` before running the state machine; called from
		`self.state_machine.run()`.
	**/
	public function runtime_init():Dynamic;
	/**
		Check for a valid subsection and create one if it checks out.
	**/
	public function section(title:Dynamic, source:Dynamic, style:Dynamic, lineno:Dynamic, messages:Dynamic):Dynamic;
	/**
		Return a definition_list's term and optional classifiers.
	**/
	public function term(lines:Dynamic, lineno:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function text(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	public function title_inconsistent(sourcetext:Dynamic, lineno:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function underline(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	public function unindent_warning(node_name:Dynamic):Dynamic;
	/**
		Remove circular references to objects no longer required.
	**/
	public function unlink():Dynamic;
	static public var ws_initial_transitions : Dynamic;
	static public var ws_patterns : Dynamic;
}