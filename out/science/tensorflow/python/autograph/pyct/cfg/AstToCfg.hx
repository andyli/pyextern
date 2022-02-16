/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.cfg;
@:pythonImport("tensorflow.python.autograph.pyct.cfg", "AstToCfg") extern class AstToCfg {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _enter_lexical_scope(node:Dynamic):Dynamic;
	public function _exit_lexical_scope(node:Dynamic):Dynamic;
	public function _get_enclosing_except_scopes(stop_at:Dynamic):Dynamic;
	public function _get_enclosing_finally_scopes(stop_at:Dynamic):Dynamic;
	public function _process_basic_statement(node:Dynamic):Dynamic;
	public function _process_continue_statement(node:Dynamic, ?loops_to_nodes_of_type:python.VarArgs<Dynamic>):Dynamic;
	public function _process_exit_statement(node:Dynamic, exits_nodes_of_type:Dynamic, ?may_exit_via_except:Dynamic):Dynamic;
	public function _process_function_def(node:Dynamic, is_lambda:Dynamic):Dynamic;
	/**
		Called if no explicit visitor function exists for a node.
	**/
	public function generic_visit(node:Dynamic):Dynamic;
	/**
		Visit a node.
	**/
	public function visit(node:Dynamic):Dynamic;
	public function visit_AnnAssign(node:Dynamic):Dynamic;
	public function visit_Assert(node:Dynamic):Dynamic;
	public function visit_Assign(node:Dynamic):Dynamic;
	public function visit_AugAssign(node:Dynamic):Dynamic;
	public function visit_Break(node:Dynamic):Dynamic;
	public function visit_ClassDef(node:Dynamic):Dynamic;
	public function visit_Constant(node:Dynamic):Dynamic;
	public function visit_Continue(node:Dynamic):Dynamic;
	public function visit_Delete(node:Dynamic):Dynamic;
	public function visit_ExceptHandler(node:Dynamic):Dynamic;
	public function visit_Expr(node:Dynamic):Dynamic;
	public function visit_For(node:Dynamic):Dynamic;
	public function visit_FunctionDef(node:Dynamic):Dynamic;
	public function visit_Global(node:Dynamic):Dynamic;
	public function visit_If(node:Dynamic):Dynamic;
	public function visit_Import(node:Dynamic):Dynamic;
	public function visit_ImportFrom(node:Dynamic):Dynamic;
	public function visit_Lambda(node:Dynamic):Dynamic;
	public function visit_Nonlocal(node:Dynamic):Dynamic;
	public function visit_Pass(node:Dynamic):Dynamic;
	public function visit_Print(node:Dynamic):Dynamic;
	public function visit_Raise(node:Dynamic):Dynamic;
	public function visit_Return(node:Dynamic):Dynamic;
	public function visit_Try(node:Dynamic):Dynamic;
	public function visit_While(node:Dynamic):Dynamic;
	public function visit_With(node:Dynamic):Dynamic;
}