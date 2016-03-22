/* This file is generated, do not edit! */
package pandas.computation.expr;
@:pythonImport("pandas.computation.expr") extern class Expr_Module {
	static public var _LOCAL_TAG : Dynamic;
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
	static public var _arith_ops_syms : Dynamic;
	static public var _base_supported_nodes : Dynamic;
	static public var _bool_ops_syms : Dynamic;
	static public var _boolop_nodes : Dynamic;
	static public var _cmp_op_nodes : Dynamic;
	static public var _cmp_ops_syms : Dynamic;
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
	static public var _mathops : Dynamic;
	static public var _mod_nodes : Dynamic;
	static public var _msg : Dynamic;
	/**
		Return a function that raises a NotImplementedError with a passed node
		name.
	**/
	static public function _node_not_implemented(node_name:Dynamic, cls:Dynamic):Dynamic;
	static public var _numexpr_supported_calls : Dynamic;
	static public var _op_classes : Dynamic;
	/**
		Return a function to create an op class with its symbol already passed.
		
		Returns
		-------
		f : callable
	**/
	static public function _op_maker(op_class:Dynamic, op_symbol:Dynamic):haxe.Constraints.Function;
	static public var _operator_nodes : Dynamic;
	static public var _parsers : Dynamic;
	/**
		Compose a collection of tokenization functions
		
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
		s : str
		    Valid Python source code
		
		Notes
		-----
		The `f` parameter can be any callable that takes *and* returns input of the
		form ``(toknum, tokval)``, where ``toknum`` is one of the constants from
		the ``tokenize`` module and ``tokval`` is a string.
	**/
	static public function _preparse(source:Dynamic, ?f:Dynamic):String;
	static public var _python_not_supported : Dynamic;
	static public var _reductions : Dynamic;
	/**
		Replace ``&`` with ``and`` and ``|`` with ``or`` so that bitwise
		precedence is changed to boolean precedence.
		
		Parameters
		----------
		tok : tuple of int, str
		    ints correspond to the all caps constants in the tokenize module
		
		Returns
		-------
		t : tuple of int, str
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
		t : tuple of int, str
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
		t : tuple of int, str
		    Either the input or token or the replacement values
	**/
	static public function _rewrite_assign(tok:Dynamic):Dynamic;
	static public var _slice_nodes : Dynamic;
	static public var _stmt_nodes : Dynamic;
	static public var _unary_op_nodes : Dynamic;
	static public var _unary_ops_syms : Dynamic;
	static public var _unsupported_expr_nodes : Dynamic;
	static public var _unsupported_nodes : Dynamic;
	/**
		Decorator to add default implementation of ops.
	**/
	static public function add_ops(op_classes:Dynamic):Dynamic;
	/**
		Compose 2 or more callables
	**/
	static public function compose(?funcs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Decorator to disallow certain nodes from parsing. Raises a
		NotImplementedError instead.
		
		Returns
		-------
		disallowed : callable
	**/
	static public function disallow(nodes:Dynamic):haxe.Constraints.Function;
	static public function is_term(obj:Dynamic):Dynamic;
	static public function lmap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var string_types : Dynamic;
	/**
		Tokenize a Python source code string.
		
		Parameters
		----------
		source : str
		    A Python source code string
	**/
	static public function tokenize_string(source:Dynamic):Dynamic;
}