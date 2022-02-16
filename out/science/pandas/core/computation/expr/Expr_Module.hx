/* This file is generated, do not edit! */
package pandas.core.computation.expr;
@:pythonImport("pandas.core.computation.expr") extern class Expr_Module {
	static public var ARITH_OPS_SYMS : Dynamic;
	static public var BOOL_OPS_SYMS : Dynamic;
	static public var CMP_OPS_SYMS : Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var LOCAL_TAG : Dynamic;
	static public var MATHOPS : Dynamic;
	static public var PARSERS : Dynamic;
	static public var PY39 : Dynamic;
	static public var REDUCTIONS : Dynamic;
	static public var UNARY_OPS_SYMS : Dynamic;
	static public var _T : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _alias_nodes : Dynamic;
	static public var _all_node_names : Dynamic;
	static public var _all_nodes : Dynamic;
	static public var _arguments_nodes : Dynamic;
	static public var _base_supported_nodes : Dynamic;
	static public var _boolop_nodes : Dynamic;
	static public var _cmp_op_nodes : Dynamic;
	/**
		Compose 2 or more callables.
	**/
	static public function _compose(?funcs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Compose 2 callables.
	**/
	static public function _compose2(f:Dynamic, g:Dynamic):Dynamic;
	static public var _comprehension_nodes : Dynamic;
	static public var _expr_context_nodes : Dynamic;
	static public var _expr_nodes : Dynamic;
	/**
		Filter out AST nodes that are subclasses of ``superclass``.
	**/
	static public function _filter_nodes(superclass:Dynamic, ?all_nodes:Dynamic):Dynamic;
	static public var _hacked_nodes : Dynamic;
	static public var _handler_nodes : Dynamic;
	static public function _is_list(x:Dynamic):Dynamic;
	static public function _is_str(x:Dynamic):Dynamic;
	/**
		Factory for a type checking function of type ``t`` or tuple of types.
	**/
	static public function _is_type(t:Dynamic):Dynamic;
	static public var _keyword_nodes : Dynamic;
	static public var _mod_nodes : Dynamic;
	static public var _msg : Dynamic;
	/**
		Return a function that raises a NotImplementedError with a passed node name.
	**/
	static public function _node_not_implemented(node_name:Dynamic):Dynamic;
	static public var _numexpr_supported_calls : Dynamic;
	static public var _op_classes : Dynamic;
	/**
		Return a function to create an op class with its symbol already passed.
		
		Returns
		-------
		callable
	**/
	static public function _op_maker(op_class:Dynamic, op_symbol:Dynamic):Dynamic;
	static public var _operator_nodes : Dynamic;
	/**
		Compose a collection of tokenization functions.
		
		Parameters
		----------
		source : str
		    A Python source code string
		f : callable
		    This takes a tuple of (toknum, tokval) as its argument and returns a
		    tuple with the same structure but possibly different elements. Defaults
		    to the composition of ``_rewrite_assign``, ``_replace_booleans``, and
		    ``_replace_locals``.
		
		Returns
		-------
		str
		    Valid Python source code
		
		Notes
		-----
		The `f` parameter can be any callable that takes *and* returns input of the
		form ``(toknum, tokval)``, where ``toknum`` is one of the constants from
		the ``tokenize`` module and ``tokval`` is a string.
	**/
	static public function _preparse(source:Dynamic, ?f:Dynamic):Dynamic;
	static public var _python_not_supported : Dynamic;
	/**
		Replace ``&`` with ``and`` and ``|`` with ``or`` so that bitwise
		precedence is changed to boolean precedence.
		
		Parameters
		----------
		tok : tuple of int, str
		    ints correspond to the all caps constants in the tokenize module
		
		Returns
		-------
		tuple of int, str
		    Either the input or token or the replacement values
	**/
	static public function _replace_booleans(tok:Dynamic):Dynamic;
	/**
		Replace local variables with a syntactically valid name.
		
		Parameters
		----------
		tok : tuple of int, str
		    ints correspond to the all caps constants in the tokenize module
		
		Returns
		-------
		tuple of int, str
		    Either the input or token or the replacement values
		
		Notes
		-----
		This is somewhat of a hack in that we rewrite a string such as ``'@a'`` as
		``'__pd_eval_local_a'`` by telling the tokenizer that ``__pd_eval_local_``
		is a ``tokenize.OP`` and to replace the ``'@'`` symbol with it.
	**/
	static public function _replace_locals(tok:Dynamic):Dynamic;
	/**
		Rewrite the assignment operator for PyTables expressions that use ``=``
		as a substitute for ``==``.
		
		Parameters
		----------
		tok : tuple of int, str
		    ints correspond to the all caps constants in the tokenize module
		
		Returns
		-------
		tuple of int, str
		    Either the input or token or the replacement values
	**/
	static public function _rewrite_assign(tok:Dynamic):Dynamic;
	static public var _slice_nodes : Dynamic;
	static public var _stmt_nodes : Dynamic;
	static public var _unary_op_nodes : Dynamic;
	static public var _unsupported_expr_nodes : Dynamic;
	static public var _unsupported_nodes : Dynamic;
	/**
		Decorator to add default implementation of ops.
	**/
	static public function add_ops(op_classes:Dynamic):Dynamic;
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
		Decorator to disallow certain nodes from parsing. Raises a
		NotImplementedError instead.
		
		Returns
		-------
		callable
	**/
	static public function disallow(nodes:Dynamic):Dynamic;
	static public var intersection : Dynamic;
	static public function is_term(obj:Dynamic):Dynamic;
	/**
		x.__contains__(y) <==> y in x.
	**/
	static public function iskeyword(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
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