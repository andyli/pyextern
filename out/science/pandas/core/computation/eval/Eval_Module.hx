/* This file is generated, do not edit! */
package pandas.core.computation.eval;
@:pythonImport("pandas.core.computation.eval") extern class Eval_Module {
	static public var ENGINES : Dynamic;
	static public var PARSERS : Dynamic;
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
		    String to validate.
		
		Raises
		------
		KeyError
		  * If an invalid engine is passed.
		ImportError
		  * If numexpr was requested but doesn't exist.
		
		Returns
		-------
		str
		    Engine name.
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
		
		This function converts an object to an expression (a unicode string) and
		checks to make sure it isn't empty after conversion. This is used to
		convert operators to their string representation for recursive calls to
		:func:`~pandas.eval`.
		
		Parameters
		----------
		expr : object
		    The object to be converted to a string.
		
		Returns
		-------
		str
		    The string representation of an object.
		
		Raises
		------
		ValueError
		  * If the expression is empty.
	**/
	static public function _convert_expression(expr:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Ensure that we are grabbing the correct scope.
	**/
	static public function ensure_scope(level:Dynamic, ?global_dict:Dynamic, ?local_dict:Dynamic, ?resolvers:Dynamic, ?target:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		expr : str
		    The expression to evaluate. This string cannot contain any Python
		    `statements
		    <https://docs.python.org/3/reference/simple_stmts.html#simple-statements>`__,
		    only Python `expressions
		    <https://docs.python.org/3/reference/simple_stmts.html#expression-statements>`__.
		parser : {'pandas', 'python'}, default 'pandas'
		    The parser to use to construct the syntax tree from the expression. The
		    default of ``'pandas'`` parses code slightly different than standard
		    Python. Alternatively, you can parse an expression using the
		    ``'python'`` parser to retain strict Python semantics.  See the
		    :ref:`enhancing performance <enhancingperf.eval>` documentation for
		    more details.
		engine : {'python', 'numexpr'}, default 'numexpr'
		
		    The engine used to evaluate the expression. Supported engines are
		
		    - None         : tries to use ``numexpr``, falls back to ``python``
		    - ``'numexpr'``: This default engine evaluates pandas objects using
		                     numexpr for large speed ups in complex expressions
		                     with large frames.
		    - ``'python'``: Performs operations as if you had ``eval``'d in top
		                    level python. This engine is generally not that useful.
		
		    More backends may be available in the future.
		
		truediv : bool, optional
		    Whether to use true division, like in Python >= 3.
		
		    .. deprecated:: 1.0.0
		
		local_dict : dict or None, optional
		    A dictionary of local variables, taken from locals() by default.
		global_dict : dict or None, optional
		    A dictionary of global variables, taken from globals() by default.
		resolvers : list of dict-like or None, optional
		    A list of objects implementing the ``__getitem__`` special method that
		    you can use to inject an additional collection of namespaces to use for
		    variable lookup. For example, this is used in the
		    :meth:`~DataFrame.query` method to inject the
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
		ndarray, numeric scalar, DataFrame, Series, or None
		    The completion value of evaluating the given code or None if ``inplace=True``.
		
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
		DataFrame.query : Evaluates a boolean expression to query the columns
		        of a frame.
		DataFrame.eval : Evaluate a string describing operations on
		        DataFrame columns.
		
		Notes
		-----
		The ``dtype`` of any objects involved in an arithmetic ``%`` operation are
		recursively cast to ``float64``.
		
		See the :ref:`enhancing performance <enhancingperf.eval>` documentation for
		more details.
		
		Examples
		--------
		>>> df = pd.DataFrame({"animal": ["dog", "pig"], "age": [10, 20]})
		>>> df
		  animal  age
		0    dog   10
		1    pig   20
		
		We can add a new column using ``pd.eval``:
		
		>>> pd.eval("double_age = df.age * 2", target=df)
		  animal  age  double_age
		0    dog   10          20
		1    pig   20          40
	**/
	static public function eval(expr:Dynamic, ?parser:Dynamic, ?engine:Dynamic, ?truediv:Dynamic, ?local_dict:Dynamic, ?global_dict:Dynamic, ?resolvers:Dynamic, ?level:Dynamic, ?target:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	static public var no_default : Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a string representation and properly handles nested sequences.
		
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
		max_seq_items : int or None, default None
		    Pass through to other pretty printers to limit sequence printing
		
		Returns
		-------
		str
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
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
	/**
		Ensure that argument passed in arg_name can be interpreted as boolean.
		
		Parameters
		----------
		value : bool
		    Value to be validated.
		arg_name : str
		    Name of the argument. To be reflected in the error message.
		none_allowed : bool, default True
		    Whether to consider None to be a valid boolean.
		int_allowed : bool, default False
		    Whether to consider integer value to be a valid boolean.
		
		Returns
		-------
		value
		    The same value as input.
		
		Raises
		------
		ValueError
		    If the value is not a valid boolean.
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic, ?none_allowed:Dynamic, ?int_allowed:Dynamic):Dynamic;
}