/* This file is generated, do not edit! */
package docutils.parsers.rst.states;
@:pythonImport("docutils.parsers.rst.states", "NestedStateMachine") extern class NestedStateMachine {
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
		Initialize a `StateMachine` object; add state objects.
		
		Parameters:
		
		- `state_classes`: a list of `State` (sub)classes.
		- `initial_state`: a string, the class name of the initial state.
		- `debug`: a boolean; produce verbose output if true (nonzero).
	**/
	@:native("__init__")
	public function ___init__(state_classes:Dynamic, initial_state:Dynamic, ?debug:Dynamic):Dynamic;
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
		Return line number of current line (counting from 1).
	**/
	public function abs_line_number():Dynamic;
	/**
		Return line offset of current line, from beginning of file.
	**/
	public function abs_line_offset():Dynamic;
	/**
		Initialize & add a `state_class` (`State` subclass) object.
		
		Exception: `DuplicateStateError` raised if `state_class` was already
		added.
	**/
	public function add_state(state_class:Dynamic):Dynamic;
	/**
		Add `state_classes` (a list of `State` subclasses).
	**/
	public function add_states(state_classes:Dynamic):Dynamic;
	/**
		Return 1 if the input is at or before beginning-of-file.
	**/
	public function at_bof():Dynamic;
	/**
		Return 1 if the input is at or past end-of-file.
	**/
	public function at_eof():Dynamic;
	/**
		The `observer` parameter is a function or bound method which takes two
		arguments, the source and offset of the current line.
	**/
	public function attach_observer(observer:Dynamic):Dynamic;
	/**
		Examine one line of input for a transition match & execute its method.
		
		Parameters:
		
		- `context`: application-dependent storage.
		- `state`: a `State` object, the current state.
		- `transitions`: an optional ordered list of transition names to try,
		  instead of ``state.transition_order``.
		
		Return the values returned by the transition method:
		
		- context: possibly modified from the parameter `context`;
		- next state name (`State` subclass name);
		- the result output of the transition, a list.
		
		When there is no match, ``state.no_match()`` is called and its return
		value is returned.
	**/
	public function check_line(context:Dynamic, state:Dynamic, ?transitions:Dynamic):Dynamic;
	public function detach_observer(observer:Dynamic):Dynamic;
	/**
		Report error details.
	**/
	public function error():Dynamic;
	/**
		Return an indented block and info.
		
		Extract an indented block where the indent is known for the first line
		and unknown for all other lines.
		
		:Parameters:
		    - `indent`: The first line's indent (# of columns/characters).
		    - `until_blank`: Stop collecting at the first blank line if true
		      (1).
		    - `strip_indent`: Strip `indent` characters of indentation if true
		      (1, default).
		    - `strip_top`: Strip blank lines from the beginning of the block.
		
		:Return:
		    - the indented block,
		    - its indent,
		    - its first line offset from BOF, and
		    - whether or not it finished with a blank line.
	**/
	public function get_first_known_indented(indent:Dynamic, ?until_blank:Dynamic, ?strip_indent:Dynamic, ?strip_top:Dynamic):Dynamic;
	/**
		Return a block of indented lines of text, and info.
		
		Extract an indented block where the indent is unknown for all lines.
		
		:Parameters:
		    - `until_blank`: Stop collecting at the first blank line if true.
		    - `strip_indent`: Strip common leading indent if true (default).
		
		:Return:
		    - the indented block (a list of lines of text),
		    - its indent,
		    - its first line offset from BOF, and
		    - whether or not it finished with a blank line.
	**/
	public function get_indented(?until_blank:Dynamic, ?strip_indent:Dynamic):Dynamic;
	/**
		Return an indented block and info.
		
		Extract an indented block where the indent is known for all lines.
		Starting with the current line, extract the entire text block with at
		least `indent` indentation (which must be whitespace, except for the
		first line).
		
		:Parameters:
		    - `indent`: The number of indent columns/characters.
		    - `until_blank`: Stop collecting at the first blank line if true.
		    - `strip_indent`: Strip `indent` characters of indentation if true
		      (default).
		
		:Return:
		    - the indented block,
		    - its first line offset from BOF, and
		    - whether or not it finished with a blank line.
	**/
	public function get_known_indented(indent:Dynamic, ?until_blank:Dynamic, ?strip_indent:Dynamic):Dynamic;
	/**
		Return source of line at absolute line offset `line_offset`.
	**/
	public function get_source(line_offset:Dynamic):Dynamic;
	/**
		Return (source, line) tuple for current or given line number.
		
		Looks up the source and line number in the `self.input_lines`
		StringList instance to count for included source files.
		
		If the optional argument `lineno` is given, convert it from an
		absolute line number to the corresponding (source, line) pair.
	**/
	public function get_source_and_line(?lineno:Dynamic):Dynamic;
	/**
		Return current state object; set it first if `next_state` given.
		
		Parameter `next_state`: a string, the name of the next state.
		
		Exception: `UnknownStateError` raised if `next_state` unknown.
	**/
	public function get_state(?next_state:Dynamic):Dynamic;
	/**
		Return a contiguous block of text.
		
		If `flush_left` is true, raise `UnexpectedIndentationError` if an
		indented line is encountered before the text block ends (with a blank
		line).
	**/
	public function get_text_block(?flush_left:Dynamic):Dynamic;
	/**
		Jump to absolute line offset `line_offset`, load and return it.
	**/
	public function goto_line(line_offset:Dynamic):Dynamic;
	public function insert_input(input_lines:Dynamic, source:Dynamic):Dynamic;
	/**
		Return 1 if the next line is blank or non-existant.
	**/
	public function is_next_line_blank():Dynamic;
	/**
		Load `self.line` with the `n`'th next line and return it.
	**/
	public function next_line(?n:Dynamic):Dynamic;
	public function notify_observers():Dynamic;
	/**
		Load `self.line` with the `n`'th previous line and return it.
	**/
	public function previous_line(?n:Dynamic):Dynamic;
	/**
		Parse `input_lines` and populate a `docutils.nodes.document` instance.
		
		Extend `StateMachineWS.run()`: set up document-wide data.
	**/
	public function run(input_lines:Dynamic, input_offset:Dynamic, memo:Dynamic, node:Dynamic, ?match_titles:Dynamic):Dynamic;
	/**
		Initialize `self.states`.
	**/
	public function runtime_init():Dynamic;
	/**
		Remove circular references to objects no longer required.
	**/
	public function unlink():Dynamic;
}