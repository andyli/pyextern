/* This file is generated, do not edit! */
package pandas.computation.expr;
@:pythonImport("pandas.computation.expr", "PythonExprVisitor") extern class PythonExprVisitor {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(env:Dynamic, engine:Dynamic, parser:Dynamic, ?preparser:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(env:Dynamic, engine:Dynamic, parser:Dynamic, ?preparser:Dynamic):Void;
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
	public function _possibly_eval(binop:Dynamic, eval_in_python:Dynamic):Dynamic;
	public function _possibly_evaluate_binop(op:Dynamic, op_class:Dynamic, lhs:Dynamic, rhs:Dynamic, ?eval_in_python:Dynamic, ?maybe_eval_in_python:Dynamic):Dynamic;
	public function _possibly_transform_eq_ne(node:Dynamic, ?left:Dynamic, ?right:Dynamic):Dynamic;
	public function _rewrite_membership_op(node:Dynamic, left:Dynamic, right:Dynamic):Dynamic;
	public function _try_visit_binop(bop:Dynamic):Dynamic;
	static public var binary_op_nodes : Dynamic;
	static public var binary_op_nodes_map : Dynamic;
	static public var binary_ops : Dynamic;
	/**
		implements string methods so long as object defines a `__unicode__`
		method.
		
		Handles Python2/3 compatibility transparently.
	**/
	static public function const_type(name:Dynamic, env:Dynamic, ?side:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Called if no explicit visitor function exists for a node.
	**/
	public function generic_visit(node:Dynamic):Dynamic;
	static public var rewrite_map : Dynamic;
	/**
		implements string methods so long as object defines a `__unicode__`
		method.
		
		Handles Python2/3 compatibility transparently.
	**/
	static public function term_type(name:Dynamic, env:Dynamic, ?side:Dynamic, ?encoding:Dynamic):Dynamic;
	public function translate_In(op:Dynamic):Dynamic;
	static public var unary_op_nodes : Dynamic;
	static public var unary_op_nodes_map : Dynamic;
	static public var unary_ops : Dynamic;
	static public var unsupported_nodes : Dynamic;
	/**
		Visit a node.
	**/
	public function visit(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_AST(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Add(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_And(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_Assert(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		support a single assignment node, like
		
		c = a + b
		
		set the assigner at the top level, must be a Name node which
		might or might not exist in the resolvers
	**/
	public function visit_Assign(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_AsyncFor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_AsyncFunctionDef(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_AsyncWith(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Attribute(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_AugAssign(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_AugLoad(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_AugStore(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_BinOp(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_BitAnd(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_BitOr(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_BoolOp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Break(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		in 3.5 the starargs attribute was changed to be more flexible,
		#11097 
	**/
	public function visit_Call(node:Dynamic, ?side:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		in 3.5 the starargs attribute was changed to be more flexible,
		#11097 
	**/
	public function visit_Call_35(node:Dynamic, ?side:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Call_legacy(node:Dynamic, ?side:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_ClassDef(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Compare(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Continue(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Del(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Delete(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_DictComp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Div(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Eq(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_ExceptHandler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Expr(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Expression(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_FloorDiv(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_For(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_FunctionDef(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_GeneratorExp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Global(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Gt(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_GtE(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_If(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_IfExp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Import(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_ImportFrom(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_In(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		df.index[4] 
	**/
	public function visit_Index(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Interactive(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Invert(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_Is(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_IsNot(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Lambda(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_List(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Load(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Lt(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_LtE(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Mod(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_Module(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Mult(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_Name(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_NameConstant(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Nonlocal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Not(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_NotEq(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_NotIn(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Num(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Or(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_Param(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Pass(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Pow(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_Raise(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Repr(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Return(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_SetComp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		df.index[slice(4,6)] 
	**/
	public function visit_Slice(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Store(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Str(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_Sub(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_Subscript(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Suite(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Try(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Tuple(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_UAdd(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Return a partial function with an Op subclass with an operator
		already passed.
		
		Returns
		-------
		f : callable
	**/
	public function visit_USub(node:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	public function visit_UnaryOp(node:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_While(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_With(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_Yield(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_alias(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_arguments(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_excepthandler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_expr_context(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_keyword(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_mod(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function visit_stmt(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}