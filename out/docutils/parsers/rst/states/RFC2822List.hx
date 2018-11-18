/* This file is generated, do not edit! */
package docutils.parsers.rst.states;
@:pythonImport("docutils.parsers.rst.states", "RFC2822List") extern class RFC2822List {
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
		Initialize a `StateSM` object; extends `State.__init__()`.
		
		Check for indent state machine attributes, set defaults if not set.
	**/
	@:native("__init__")
	public function ___init__(state_machine:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		Initialize a `StateSM` object; extends `State.__init__()`.
		
		Check for indent state machine attributes, set defaults if not set.
	**/
	public function new(state_machine:Dynamic, ?debug:Dynamic):Void;
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
		Add whitespace-specific transitions before those defined in subclass.
		
		Extends `State.add_initial_transitions()`.
	**/
	public function add_initial_transitions():Dynamic;
	public function add_target(targetname:Dynamic, refuri:Dynamic, target:Dynamic, lineno:Dynamic):Dynamic;
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
	public function anonymous(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	public function anonymous_target(match:Dynamic):Dynamic;
	static public var attribution_pattern : Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function blank(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	public function block_quote(indented:Dynamic, line_offset:Dynamic):Dynamic;
	/**
		Called at beginning of file.
	**/
	public function bof(context:Dynamic):Dynamic;
	public function build_table(tabledata:Dynamic, tableline:Dynamic, ?stub_columns:Dynamic, ?widths:Dynamic):Dynamic;
	public function build_table_row(rowdata:Dynamic, tableline:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function bullet(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Check attribution shape.
		Return the index past the end of the attribution, and the indent.
	**/
	public function check_attribution(indented:Dynamic, attribution_start:Dynamic):Dynamic;
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
	public function citation(match:Dynamic):Dynamic;
	public function comment(match:Dynamic):Dynamic;
	/**
		Returns a 2-tuple: list of nodes, and a "blank finish" boolean.
	**/
	public function directive(match:Dynamic, ?option_presets:python.KwArgs<Dynamic>):Dynamic;
	public function disallowed_inside_substitution_definitions(node:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function doctest(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	static public var double_width_pad_char : Dynamic;
	@:native("enum")
	static public var _enum : Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function enumerator(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Handle end-of-file. Return empty result.
		
		Override in subclasses.
		
		Parameter `context`: application-defined storage.
	**/
	public function eof(context:Dynamic):Dynamic;
	static public var explicit : Dynamic;
	/**
		Determine which explicit construct this is, parse & return it.
	**/
	public function explicit_construct(match:Dynamic):Dynamic;
	/**
		Create a nested state machine for a series of explicit markup
		constructs (including anonymous hyperlink targets).
	**/
	public function explicit_list(blank_finish:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function explicit_markup(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	public function field(match:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function field_marker(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Handle an indented text block (first line's indent known).
		
		Extend or override in subclasses.
		
		Recursively run the registered state machine for known-indent indented
		blocks (`self.known_indent_sm`). The indent is the length of the
		match, ``match.end()``.
	**/
	public function first_known_indent(match:Dynamic, context:Dynamic, next_state:Dynamic):Dynamic;
	public function footnote(match:Dynamic):Dynamic;
	static public var format : Dynamic;
	/**
		Jump to input line `abs_line_offset`, ignoring jumps past the end.
	**/
	public function goto_line(abs_line_offset:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function grid_table_top(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	static public var grid_table_top_pat : Dynamic;
	public function hyperlink_target(match:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function indent(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
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
		Check validity based on the ordinal value and the second line.
		
		Return true if the ordinal is valid and the second line is blank,
		indented, or starts with the next enumerator or an auto-enumerator.
	**/
	public function is_enumerated_list_item(ordinal:Dynamic, sequence:Dynamic, format:Dynamic):Dynamic;
	public function is_reference(reference:Dynamic):Dynamic;
	public function isolate_grid_table():Dynamic;
	public function isolate_simple_table():Dynamic;
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
		Not a compound element member. Abort this state machine.
	**/
	public function line(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function line_block(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Return one line element of a line_block.
	**/
	public function line_block_line(match:Dynamic, lineno:Dynamic):Dynamic;
	public function list_item(indent:Dynamic):Dynamic;
	/**
		Construct and return the next enumerated list item marker, and an
		auto-enumerator ("#" instead of the regular enumerator).
		
		Return ``None`` for invalid (out of range) ordinals.
	**/
	public function make_enumerator(ordinal:Dynamic, sequence:Dynamic, format:Dynamic):Dynamic;
	public function make_target(block:Dynamic, block_text:Dynamic, lineno:Dynamic, target_name:Dynamic):Dynamic;
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
	public function malformed_table(block:Dynamic, ?detail:Dynamic, ?offset:Dynamic):Dynamic;
	public function nest_line_block_lines(block:Dynamic):Dynamic;
	public function nest_line_block_segment(block:Dynamic):Dynamic;
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
	public function option_list_item(match:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function option_marker(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Return a list (paragraph & messages) & a boolean: literal_block next?
	**/
	public function paragraph(lines:Dynamic, lineno:Dynamic):Dynamic;
	public function parse_attribution(indented:Dynamic, line_offset:Dynamic):Dynamic;
	public function parse_directive_arguments(directive:Dynamic, arg_block:Dynamic):Dynamic;
	public function parse_directive_block(indented:Dynamic, line_offset:Dynamic, directive:Dynamic, option_presets:Dynamic):Dynamic;
	public function parse_directive_options(option_presets:Dynamic, option_spec:Dynamic, arg_block:Dynamic):Dynamic;
	/**
		Analyze an enumerator and return the results.
		
		:Return:
		    - the enumerator format ('period', 'parens', or 'rparen'),
		    - the sequence used ('arabic', 'loweralpha', 'upperroman', etc.),
		    - the text of the enumerator, stripped of formatting, and
		    - the ordinal value of the enumerator ('a' -> 1, 'ii' -> 2, etc.;
		      ``None`` is returned for invalid enumerator text).
		
		The enumerator format has already been determined by the regular
		expression match. If `expected_sequence` is given, that sequence is
		tried first. If not, we check for Roman numeral 1. This way,
		single-character Roman numerals (which are also alphabetical) can be
		matched. If no sequence has been matched, all sequences are checked in
		order.
	**/
	public function parse_enumerator(match:Dynamic, ?expected_sequence:Dynamic):Dynamic;
	/**
		Parse `datalines` for a field list containing extension options
		matching `option_spec`.
		
		:Parameters:
		    - `option_spec`: a mapping of option name to conversion
		      function, which should raise an exception on bad input.
		    - `datalines`: a list of input strings.
		
		:Return:
		    - Success value, 1 or 0.
		    - An option dictionary on success, an error string on failure.
	**/
	public function parse_extension_options(option_spec:Dynamic, datalines:Dynamic):Dynamic;
	public function parse_field_body(indented:Dynamic, offset:Dynamic, node:Dynamic):Dynamic;
	/**
		Extract & return field name from a field marker match.
	**/
	public function parse_field_marker(match:Dynamic):Dynamic;
	/**
		Return a list of `node.option` and `node.option_argument` objects,
		parsed from an option marker match.
		
		:Exception: `MarkupError` for invalid option markers.
	**/
	public function parse_option_marker(match:Dynamic):Dynamic;
	/**
		Determine the type of reference of a target.
		
		:Return: A 2-tuple, one of:
		
		    - 'refname' and the indirect reference name
		    - 'refuri' and the URI
		    - 'malformed' and a system_message node
	**/
	public function parse_target(block:Dynamic, block_text:Dynamic, lineno:Dynamic):Dynamic;
	static public var pats : Dynamic;
	static public var patterns : Dynamic;
	/**
		Remove a transition by `name`.
		
		Exception: `UnknownTransitionError`.
	**/
	public function remove_transition(name:Dynamic):Dynamic;
	/**
		RFC2822-style field list item.
	**/
	public function rfc2822(match:Dynamic, context:Dynamic, next_state:Dynamic):Dynamic;
	public function rfc2822_field(match:Dynamic):Dynamic;
	/**
		Parse a directive then run its directive function.
		
		Parameters:
		
		- `directive`: The class implementing the directive.  Must be
		  a subclass of `rst.Directive`.
		
		- `match`: A regular expression match object which matched the first
		  line of the directive.
		
		- `type_name`: The directive name, as used in the source text.
		
		- `option_presets`: A dictionary of preset options, defaults for the
		  directive options.  Currently, only an "alt" option is passed by
		  substitution definitions (value: the substitution name), which may
		  be used by an embedded image directive.
		
		Returns a 2-tuple: list of nodes, and a "blank finish" boolean.
	**/
	public function run_directive(directive:Dynamic, match:Dynamic, type_name:Dynamic, option_presets:Dynamic):Dynamic;
	/**
		Initialize this `State` before running the state machine; called from
		`self.state_machine.run()`.
	**/
	public function runtime_init():Dynamic;
	/**
		Check for a valid subsection and create one if it checks out.
	**/
	public function section(title:Dynamic, source:Dynamic, style:Dynamic, lineno:Dynamic, messages:Dynamic):Dynamic;
	static public var sequence : Dynamic;
	static public var simple_table_border_pat : Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function simple_table_top(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	static public var simple_table_top_pat : Dynamic;
	/**
		Check for a block quote attribution and split it off:
		
		* First line after a blank line must begin with a dash ("--", "---",
		  em-dash; matches `self.attribution_pattern`).
		* Every line after that must have consistent indentation.
		* Attributions must be preceded by block quote content.
		
		Return a tuple of: (block quote content lines, content offset,
		attribution lines, attribution offset, remaining indented lines).
	**/
	public function split_attribution(indented:Dynamic, line_offset:Dynamic):Dynamic;
	public function substitution_def(match:Dynamic):Dynamic;
	/**
		Parse a table.
	**/
	public function table(isolate_function:Dynamic, parser_class:Dynamic):Dynamic;
	/**
		Top border of a generic table.
	**/
	public function table_top(match:Dynamic, context:Dynamic, next_state:Dynamic, isolate_function:Dynamic, parser_class:Dynamic):Dynamic;
	/**
		Not a compound element member. Abort this state machine.
	**/
	public function text(?match:Dynamic, ?context:Dynamic, ?next_state:Dynamic):Dynamic;
	public function title_inconsistent(sourcetext:Dynamic, lineno:Dynamic):Dynamic;
	public function unindent_warning(node_name:Dynamic):Dynamic;
	public function unknown_directive(type_name:Dynamic):Dynamic;
	/**
		Remove circular references to objects no longer required.
	**/
	public function unlink():Dynamic;
	static public var ws_initial_transitions : Dynamic;
	static public var ws_patterns : Dynamic;
}