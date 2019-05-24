/* This file is generated, do not edit! */
package torch.jit.frontend;
@:pythonImport("torch.jit.frontend") extern class Frontend_Module {
	/**
		FalseLiteral(arg0: torch._C._jit_tree_views.SourceRange) -> torch::jit::script::Expr
	**/
	static public function FalseLiteral(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NoneLiteral(arg0: torch._C._jit_tree_views.SourceRange) -> torch::jit::script::Expr
	**/
	static public function NoneLiteral(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PY2 : Dynamic;
	/**
		TrueLiteral(arg0: torch._C._jit_tree_views.SourceRange) -> torch::jit::script::Expr
	**/
	static public function TrueLiteral(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function _uses_true_division(fn:Dynamic):Dynamic;
	static public var _vararg_kwarg_err : Dynamic;
	static public function build_def(ctx:Dynamic, py_def:Dynamic, type_line:Dynamic, is_method:Dynamic):Dynamic;
	static public function build_expr(ctx:Dynamic, node:Dynamic):Dynamic;
	static public function build_param(ctx:Dynamic, py_arg:Dynamic):Dynamic;
	static public function build_param_list(ctx:Dynamic, py_args:Dynamic):Dynamic;
	static public function build_stmt(ctx:Dynamic, node:Dynamic):Dynamic;
	static public function build_stmts(ctx:Dynamic, stmts:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	static public function find_after(ctx:Dynamic, pos:Dynamic, substr:Dynamic, ?offsets:Dynamic):Dynamic;
	static public function find_before(ctx:Dynamic, pos:Dynamic, substr:Dynamic, ?offsets:Dynamic):Dynamic;
	static public function get_default_args(fn:Dynamic):Dynamic;
	static public function get_jit_ast(fn:Dynamic, is_method:Dynamic):Dynamic;
	static public function is_reserved_name(name:Dynamic):Dynamic;
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
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	static public var node_start_tokens : Dynamic;
	static public var pretty_node_names : Dynamic;
}