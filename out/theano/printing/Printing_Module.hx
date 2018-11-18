/* This file is generated, do not edit! */
package theano.printing;
@:pythonImport("theano.printing") extern class Printing_Module {
	static public var VALID_ASSOC : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public function _print_fn(op:Dynamic, xin:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	/**
		Print a computation graph as text to stdout or a file.
		
		:type obj: :class:`~theano.gof.Variable`, Apply, or Function instance
		:param obj: symbolic thing to print
		:type depth: integer
		:param depth: print graph to this depth (-1 for unlimited)
		:type print_type: boolean
		:param print_type: whether to print the type of printed objects
		:type file: None, 'str', or file-like object
		:param file: print to this file ('str' means to return a string)
		:type ids: str
		:param ids: How do we print the identifier of the variable
		            id - print the python id value
		            int - print integer character
		            CHAR - print capital character
		            "" - don't print an identifier
		:param stop_on_name: When True, if a node in the graph has a name,
		                     we don't print anything below it.
		:type done: None or dict
		:param done: A dict where we store the ids of printed node.
		    Useful to have multiple call to debugprint share the same ids.
		:type print_storage: bool
		:param print_storage: If True, this will print the storage map
		    for Theano functions. Combined with allow_gc=False, after the
		    execution of a Theano function, we see the intermediate result.
		:type print_clients: bool
		:param print_clients: If True, this will print for Apply node that
		     have more then 1 clients its clients. This help find who use
		     an Apply node.
		:type used_ids: dict or None
		:param used_ids: the id to use for some object, but maybe we only
		     referred to it yet.
		
		:returns: string if `file` == 'str', else file arg
		
		Each line printed represents a Variable in the graph.
		The indentation of lines corresponds to its depth in the symbolic graph.
		The first part of the text identifies whether it is an input
		(if a name or type is printed) or the output of some Apply (in which case
		the Op is printed).
		The second part of the text is an identifier of the Variable.
		If print_type is True, we add a part containing the type of the Variable
		
		If a Variable is encountered multiple times in the depth-first search,
		it is only printed recursively the first time. Later, just the Variable
		identifier is printed.
		
		If an Apply has multiple outputs, then a '.N' suffix will be appended
		to the Apply's identifier, to indicate which output a line corresponds to.
	**/
	static public function debugprint(obj:Dynamic, ?depth:Dynamic, ?print_type:Dynamic, ?file:Dynamic, ?ids:Dynamic, ?stop_on_name:Dynamic, ?done:Dynamic, ?print_storage:Dynamic, ?print_clients:Dynamic, ?used_ids:Dynamic):Dynamic;
	static public var default_colorCodes : Dynamic;
	static public var default_printer : Dynamic;
	static public var division : Dynamic;
	static public var greek : Dynamic;
	/**
		Returns a short, mostly hexadecimal hash of a numpy ndarray
	**/
	static public function hex_digest(x:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var leaf_printer : Dynamic;
	/**
		Returns a string specifying to the user what obj is
		The string will print out as much of the graph as is needed
		for the whole thing to be specified in terms only of constants
		or named variables.
		
		
		Parameters
		----------
		obj: the name to convert to a string
		indent_level: the number of tabs the tree should start printing at
		              (nested levels of the tree will get more tabs)
		_prev_obs: should only be used by min_informative_str
		                a dictionary mapping previously converted
		                objects to short tags
		
		
		Basic design philosophy
		-----------------------
		
		The idea behind this function is that it can be used as parts of
		command line tools for debugging or for error messages. The
		information displayed is intended to be concise and easily read by
		a human. In particular, it is intended to be informative when
		working with large graphs composed of subgraphs from several
		different people's code, as in pylearn2.
		
		Stopping expanding subtrees when named variables are encountered
		makes it easier to understand what is happening when a graph
		formed by composing several different graphs made by code written
		by different authors has a bug.
		
		An example output is:
		
		A. Elemwise{add_no_inplace}
		    B. log_likelihood_v_given_h
		    C. log_likelihood_h
		
		
		If the user is told they have a problem computing this value, it's
		obvious that either log_likelihood_h or log_likelihood_v_given_h
		has the wrong dimensionality. The variable's str object would only
		tell you that there was a problem with an
		Elemwise{add_no_inplace}. Since there are many such ops in a
		typical graph, such an error message is considerably less
		informative. Error messages based on this function should convey
		much more information about the location in the graph of the error
		while remaining succint.
		
		One final note: the use of capital letters to uniquely identify
		nodes within the graph is motivated by legibility. I do not use
		numbers or lower case letters since these are pretty common as
		parts of names of ops, etc. I also don't use the object's id like
		in debugprint because it gives such a long string that takes time
		to visually diff.
	**/
	static public function min_informative_str(obj:Dynamic, ?indent_level:Dynamic, ?_prev_obs:Dynamic, ?_tag_generator:Dynamic):Dynamic;
	static public function position_independent_str(obj:Dynamic):Dynamic;
	static public function pp(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function pprint(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public var pydot_imported : Dynamic;
	static public var pydot_imported_msg : Dynamic;
	/**
		Print to a file the graph of a compiled theano function's ops. Supports
		all pydot output formats, including png and svg.
		
		:param fct: a compiled Theano function, a Variable, an Apply or
		            a list of Variable.
		:param outfile: the output file where to put the graph.
		:param compact: if True, will remove intermediate var that don't have name.
		:param format: the file format of the output.
		:param with_ids: Print the toposort index of the node in the node name.
		                 and an index number in the variable ellipse.
		:param high_contrast: if true, the color that describes the respective
		        node is filled with its corresponding color, instead of coloring
		        the border
		:param colorCodes: dictionary with names of ops as keys and colors as
		        values
		:param cond_highlight: Highlights a lazy if by surrounding each of the 3
		            possible categories of ops with a border. The categories
		            are: ops that are on the left branch, ops that are on the
		            right branch, ops that are on both branches
		            As an alternative you can provide the node that represents
		            the lazy if
		:param scan_graphs: if true it will plot the inner graph of each scan op
		            in files with the same name as the name given for the main
		            file to which the name of the scan op is concatenated and
		            the index in the toposort of the scan.
		            This index can be printed with the option with_ids.
		:param var_with_name_simple: If true and a variable have a name,
		            we will print only the variable name.
		            Otherwise, we concatenate the type to the var name.
		:param return_image: If True, it will create the image and return it.
		    Useful to display the image in ipython notebook.
		
		    .. code-block:: python
		
		        import theano
		        v = theano.tensor.vector()
		        from IPython.display import SVG
		        SVG(theano.printing.pydotprint(v*2, return_image=True,
		                                       format='svg'))
		
		In the graph, ellipses are Apply Nodes (the execution of an op)
		and boxes are variables.  If variables have names they are used as
		text (if multiple vars have the same name, they will be merged in
		the graph).  Otherwise, if the variable is constant, we print its
		value and finally we print the type + a unique number to prevent
		multiple vars from being merged.  We print the op of the apply in
		the Apply box with a number that represents the toposort order of
		application of those Apply.  If an Apply has more than 1 input, we
		label each edge between an input and the Apply node with the
		input's index.
		
		Variable color code::
		    - Cyan boxes are SharedVariable, inputs and/or outputs) of the graph,
		    - Green boxes are inputs variables to the graph,
		    - Blue boxes are outputs variables of the graph,
		    - Grey boxes are variables that are not outputs and are not used,
		
		Default apply node code::
		    - Red ellipses are transfers from/to the gpu
		    - Yellow are scan node
		    - Brown are shape node
		    - Magenta are IfElse node
		    - Dark pink are elemwise node
		    - Purple are subtensor
		    - Orange are alloc node
		
		For edges, they are black by default. If a node returns a view
		of an input, we put the corresponding input edge in blue. If it
		returns a destroyed input, we put the corresponding edge in red.
		
		.. note::
		
		    Since October 20th, 2014, this print the inner function of all
		    scan separately after the top level debugprint output.
	**/
	static public function pydotprint(fct:Dynamic, ?outfile:Dynamic, ?compact:Dynamic, ?format:Dynamic, ?with_ids:Dynamic, ?high_contrast:Dynamic, ?cond_highlight:Dynamic, ?colorCodes:Dynamic, ?max_label_size:Dynamic, ?scan_graphs:Dynamic, ?var_with_name_simple:Dynamic, ?print_output_file:Dynamic, ?return_image:Dynamic):Dynamic;
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
	static public var special : Dynamic;
	static public var string_types : Dynamic;
	static public var use_ascii : Dynamic;
	/**
		Returns a string, with no endlines, fully specifying
		how a variable is computed. Does not include any memory
		location dependent information such as the id of a node.
	**/
	static public function var_descriptor(obj:Dynamic, ?_prev_obs:Dynamic, ?_tag_generator:Dynamic):Dynamic;
}