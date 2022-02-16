/* This file is generated, do not edit! */
package pandas.core.computation.parsing;
@:pythonImport("pandas.core.computation.parsing") extern class Parsing_Module {
	static public var BACKTICK_QUOTED_STRING : Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Clean up a column name if surrounded by backticks.
		
		Backtick quoted string are indicated by a certain tokval value. If a string
		is a backtick quoted token it will processed by
		:func:`_create_valid_python_identifier` so that the parser can find this
		string when the query is executed.
		In this case the tok will get the NAME tokval.
		
		Parameters
		----------
		tok : tuple of int, str
		    ints correspond to the all caps constants in the tokenize module
		
		Returns
		-------
		tok : Tuple[int, str]
		    Either the input or token or the replacement values
	**/
	static public function clean_backtick_quoted_toks(tok:Dynamic):Dynamic;
	/**
		Function to emulate the cleaning of a backtick quoted name.
		
		The purpose for this function is to see what happens to the name of
		identifier if it goes to the process of being parsed a Python code
		inside a backtick quoted string and than being cleaned
		(removed of any special characters).
		
		Parameters
		----------
		name : hashable
		    Name to be cleaned.
		
		Returns
		-------
		name : hashable
		    Returns the name after tokenizing and cleaning.
		
		Notes
		-----
		    For some cases, a name cannot be converted to a valid Python identifier.
		    In that case :func:`tokenize_string` raises a SyntaxError.
		    In that case, we just return the name unmodified.
		
		    If this name was used in the query string (this makes the query call impossible)
		    an error will be raised by :func:`tokenize_backtick_quoted_string` instead,
		    which is not caught and propagates to the user level.
	**/
	static public function clean_column_name(name:Dynamic):Dynamic;
	/**
		Create valid Python identifiers from any string.
		
		Check if name contains any special characters. If it contains any
		special characters, the special characters will be replaced by
		a special string and a prefix is added.
		
		Raises
		------
		SyntaxError
		    If the returned name is not a Python valid identifier, raise an exception.
		    This can happen if there is a hashtag in the name, as the tokenizer will
		    than terminate and not find the backtick.
		    But also for characters that fall out of the range of (U+0001..U+007F).
	**/
	static public function create_valid_python_identifier(name:Dynamic):Dynamic;
	/**
		x.__contains__(y) <==> y in x.
	**/
	static public function iskeyword(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates a token from a backtick quoted string.
		
		Moves the token_generator forwards till right after the next backtick.
		
		Parameters
		----------
		token_generator : Iterator[tokenize.TokenInfo]
		    The generator that yields the tokens of the source string (Tuple[int, str]).
		    The generator is at the first token after the backtick (`)
		
		source : str
		    The Python source code string.
		
		string_start : int
		    This is the start of backtick quoted string inside the source string.
		
		Returns
		-------
		tok: Tuple[int, str]
		    The token that represents the backtick quoted string.
		    The integer is equal to BACKTICK_QUOTED_STRING (100).
	**/
	static public function tokenize_backtick_quoted_string(token_generator:Dynamic, source:Dynamic, string_start:Dynamic):Dynamic;
	/**
		Tokenize a Python source code string.
		
		Parameters
		----------
		source : str
		    The Python source code string.
		
		Returns
		-------
		tok_generator : Iterator[Tuple[int, str]]
		    An iterator yielding all tokens with only toknum and tokval (Tuple[ing, str]).
	**/
	static public function tokenize_string(source:Dynamic):Dynamic;
}