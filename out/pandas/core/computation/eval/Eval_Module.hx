/* This file is generated, do not edit! */
package pandas.core.computation.eval;
@:pythonImport("pandas.core.computation.eval") extern class Eval_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Make sure a valid engine is passed.
		
		Parameters
		----------
		engine : str
		
		Raises
		------
		KeyError
		  * If an invalid engine is passed
		ImportError
		  * If numexpr was requested but doesn't exist
		
		Returns
		-------
		string engine
	**/
	static public function _check_engine(engine:Dynamic):Dynamic;
	/**
		Make sure an expression is not an empty string
		
		Parameters
		----------
		expr : object
		    An object that can be converted to a string
		
		Raises
		------
		ValueError
		  * If expr is an empty string
	**/
	static public function _check_expression(expr:Dynamic):Dynamic;
	static public function _check_for_locals(expr:Dynamic, stack_level:Dynamic, parser:Dynamic):Dynamic;
	/**
		Make sure a valid parser is passed.
		
		Parameters
		----------
		parser : str
		
		Raises
		------
		KeyError
		  * If an invalid parser is passed
	**/
	static public function _check_parser(parser:Dynamic):Dynamic;
	static public function _check_resolvers(resolvers:Dynamic):Dynamic;
	/**
		Convert an object to an expression.
		
		Thus function converts an object to an expression (a unicode string) and
		checks to make sure it isn't empty after conversion. This is used to
		convert operators to their string representation for recursive calls to
		:func:`~pandas.eval`.
		
		Parameters
		----------
		expr : object
		    The object to be converted to a string.
		
		Returns
		-------
		s : unicode
		    The string representation of an object.
		
		Raises
		------
		ValueError
		  * If the expression is empty.
	**/
	static public function _convert_expression(expr:Dynamic):Dynamic;
	static public var _engines : Dynamic;
	/**
		Ensure that we are grabbing the correct scope.
	**/
	static public function _ensure_scope(level:Dynamic, ?global_dict:Dynamic, ?local_dict:Dynamic, ?resolvers:Dynamic, ?target:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Evaluate a Python expression as a string using various backends.
		
		The following arithmetic operations are supported: ``+``, ``-``, ``*``,
		``/``, ``**``, ``%``, ``//`` (python engine only) along with the following
		boolean operations: ``|`` (or), ``&`` (and), and ``~`` (not).
		Additionally, the ``'pandas'`` parser allows the use of :keyword:`and`,
		:keyword:`or`, and :keyword:`not` with the same semantics as the
		corresponding bitwise operators.  :class:`~pandas.Series` and
		:class:`~pandas.DataFrame` objects are supported and behave as they would
		with plain ol' Python evaluation.
		
		Parameters
		----------
		expr : str or unicode
		    The expression to evaluate. This string cannot contain any Python
		    `statements
		    <https://docs.python.org/3/reference/simple_stmts.html#simple-statements>`__,
		    only Python `expressions
		    <https://docs.python.org/3/reference/simple_stmts.html#expression-statements>`__.
		parser : string, default 'pandas', {'pandas', 'python'}
		    The parser to use to construct the syntax tree from the expression. The
		    default of ``'pandas'`` parses code slightly different than standard
		    Python. Alternatively, you can parse an expression using the
		    ``'python'`` parser to retain strict Python semantics.  See the
		    :ref:`enhancing performance <enhancingperf.eval>` documentation for
		    more details.
		engine : string or None, default 'numexpr', {'python', 'numexpr'}
		
		    The engine used to evaluate the expression. Supported engines are
		
		    - None         : tries to use ``numexpr``, falls back to ``python``
		    - ``'numexpr'``: This default engine evaluates pandas objects using
		                     numexpr for large speed ups in complex expressions
		                     with large frames.
		    - ``'python'``: Performs operations as if you had ``eval``'d in top
		                    level python. This engine is generally not that useful.
		
		    More backends may be available in the future.
		
		truediv : bool, optional
		    Whether to use true division, like in Python >= 3
		local_dict : dict or None, optional
		    A dictionary of local variables, taken from locals() by default.
		global_dict : dict or None, optional
		    A dictionary of global variables, taken from globals() by default.
		resolvers : list of dict-like or None, optional
		    A list of objects implementing the ``__getitem__`` special method that
		    you can use to inject an additional collection of namespaces to use for
		    variable lookup. For example, this is used in the
		    :meth:`~pandas.DataFrame.query` method to inject the
		    ``DataFrame.index`` and ``DataFrame.columns``
		    variables that refer to their respective :class:`~pandas.DataFrame`
		    instance attributes.
		level : int, optional
		    The number of prior stack frames to traverse and add to the current
		    scope. Most users will **not** need to change this parameter.
		target : object, optional, default None
		    This is the target object for assignment. It is used when there is
		    variable assignment in the expression. If so, then `target` must
		    support item assignment with string keys, and if a copy is being
		    returned, it must also support `.copy()`.
		inplace : bool, default False
		    If `target` is provided, and the expression mutates `target`, whether
		    to modify `target` inplace. Otherwise, return a copy of `target` with
		    the mutation.
		
		Returns
		-------
		ndarray, numeric scalar, DataFrame, Series
		
		Raises
		------
		ValueError
		    There are many instances where such an error can be raised:
		
		    - `target=None`, but the expression is multiline.
		    - The expression is multiline, but not all them have item assignment.
		      An example of such an arrangement is this:
		
		      a = b + 1
		      a + 2
		
		      Here, there are expressions on different lines, making it multiline,
		      but the last line has no variable assigned to the output of `a + 2`.
		    - `inplace=True`, but the expression is missing item assignment.
		    - Item assignment is provided, but the `target` does not support
		      string item assignment.
		    - Item assignment is provided and `inplace=False`, but the `target`
		      does not support the `.copy()` method
		
		See Also
		--------
		pandas.DataFrame.query
		pandas.DataFrame.eval
		
		Notes
		-----
		The ``dtype`` of any objects involved in an arithmetic ``%`` operation are
		recursively cast to ``float64``.
		
		See the :ref:`enhancing performance <enhancingperf.eval>` documentation for
		more details.
	**/
	static public function eval(expr:Dynamic, ?parser:Dynamic, ?engine:Dynamic, ?truediv:Dynamic, ?local_dict:Dynamic, ?global_dict:Dynamic, ?resolvers:Dynamic, ?level:Dynamic, ?target:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Ensures that argument passed in arg_name is of type bool. 
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic):Dynamic;
}