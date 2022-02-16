/* This file is generated, do not edit! */
package torch.jit.frontend;
@:pythonImport("torch.jit.frontend") extern class Frontend_Module {
	/**
		FalseLiteral(arg0: torch._C._jit_tree_views.SourceRange) -> torch::jit::Expr
	**/
	static public function FalseLiteral(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		NoneLiteral(arg0: torch._C._jit_tree_views.SourceRange) -> torch::jit::Expr
	**/
	static public function NoneLiteral(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TrueLiteral(arg0: torch._C._jit_tree_views.SourceRange) -> torch::jit::Expr
	**/
	static public function TrueLiteral(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _IS_ASTUNPARSE_INSTALLED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _identifier_chars : Dynamic;
	static public var _reserved_names : Dynamic;
	static public var _reserved_prefix : Dynamic;
	static public var _vararg_kwarg_err : Dynamic;
	static public function build_class_def(ctx:Dynamic, py_def:Dynamic, methods:Dynamic, properties:Dynamic, self_name:Dynamic, assigns:Dynamic):Dynamic;
	static public function build_def(ctx:Dynamic, py_def:Dynamic, type_line:Dynamic, def_name:Dynamic, ?self_name:Dynamic, ?pdt_arg_types:Dynamic):Dynamic;
	static public function build_expr(ctx:Dynamic, node:Dynamic):Dynamic;
	static public function build_ignore_context_manager(ctx:Dynamic, stmt:Dynamic):Dynamic;
	static public function build_param(ctx:Dynamic, py_arg:Dynamic, self_name:Dynamic, kwarg_only:Dynamic, ?pdt_arg_type:Dynamic):Dynamic;
	static public function build_param_list(ctx:Dynamic, py_args:Dynamic, self_name:Dynamic, ?pdt_arg_types:Dynamic):Dynamic;
	static public function build_stmt(ctx:Dynamic, node:Dynamic):Dynamic;
	static public function build_stmts(ctx:Dynamic, stmts:Dynamic):Dynamic;
	static public function build_withitem(ctx:Dynamic, node:Dynamic):Dynamic;
	static public function build_withitems(ctx:Dynamic, items:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.
		
		Entirely blank lines are normalized to a newline character.
	**/
	static public function dedent(text:Dynamic):Dynamic;
	static public function find_before(ctx:Dynamic, pos:Dynamic, substr:Dynamic, ?offsets:Dynamic):Dynamic;
	static public function get_class_assigns(ctx:Dynamic, cls_ast:Dynamic):Dynamic;
	/**
		Get a list of Property objects representing the properties of a class.
		
		Args:
		    cls:  The class to get properties of.
		    self_name: The name of the class that the properties should belong to.
		Returns:
		    A list of Property objects corresponding to the properties of cls. Property
		    here refers to the subclass of TreeView.
	**/
	static public function get_class_properties(cls:Dynamic, self_name:Dynamic):Dynamic;
	static public function get_default_args(fn:Dynamic):Dynamic;
	/**
		Get default arguments for all methods in a class (except for static methods).
		
		Args:
		    cls: type - The class type to inspect for default arguments.
		Returns:
		    A Dict[str, Dict[str, Any]] which maps each method name to a Dict[str, Any]
		    that maps each argument name to its default value.
	**/
	static public function get_default_args_for_class(cls:Dynamic):Dynamic;
	static public function get_jit_class_def(cls:Dynamic, self_name:Dynamic):Dynamic;
	/**
		Build a JIT AST (TreeView) from the given function.
		
		Args:
		    fn: A function object to compile
		    def_name: The name to give to the resulting AST object. This is not
		        always the same as `fn.__name__`, for example:
		            def _forward(self):
		                ...
		            forward = _forward
		        In this case, the `__name__` attribute of the function object is "_forward",
		        but we want the result AST to have the name "forward".
		    self_name: If this function is a method, what the type name of `self` is.
	**/
	static public function get_jit_def(fn:Dynamic, def_name:Dynamic, ?self_name:Dynamic, ?is_classmethod:Dynamic):Dynamic;
	static public function get_qualified_name(func:Dynamic):Dynamic;
	/**
		Wrapper around inspect.getsourcelines and inspect.getsourcefile.
		
		Returns: (sourcelines, file_lino, filename)
	**/
	static public function get_source_lines_and_file(obj:Dynamic, ?error_msg:Dynamic):Dynamic;
	static public function is_reserved_name(name:Dynamic):Dynamic;
	static public function is_static_fn(cls:Dynamic, fn:Dynamic):Dynamic;
	static public function is_torch_jit_ignore_context_manager(stmt:Dynamic):Dynamic;
	static public function make_source_context(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var monkeytype_trace : Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	static public var node_start_tokens : Dynamic;
	static public function parse_def(fn:Dynamic):Dynamic;
	static public var pretty_node_names : Dynamic;
	static public function should_drop(fn:Dynamic):Dynamic;
}