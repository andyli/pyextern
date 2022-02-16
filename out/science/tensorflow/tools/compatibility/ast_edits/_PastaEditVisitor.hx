/* This file is generated, do not edit! */
package tensorflow.tools.compatibility.ast_edits;
@:pythonImport("tensorflow.tools.compatibility.ast_edits", "_PastaEditVisitor") extern class _PastaEditVisitor {
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
	public function ___init__(api_change_spec:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(api_change_spec:Dynamic):Void;
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
	/**
		Get all dict entries indexed by name that apply to full_name or name.
	**/
	public function _get_applicable_dict(transformer_field:Dynamic, full_name:Dynamic, name:Dynamic):Dynamic;
	/**
		Get all list entries indexed by name that apply to full_name or name.
	**/
	public function _get_applicable_entries(transformer_field:Dynamic, full_name:Dynamic, name:Dynamic):Dynamic;
	/**
		Traverse an Attribute node to generate a full name, e.g., "tf.foo.bar".
		
		This is the inverse of `full_name_node`.
		
		Args:
		  node: A Node of type Attribute.
		
		Returns:
		  a '.'-delimited full-name or None if node was not Attribute or Name.
		  i.e. `foo()+b).bar` returns None, while `a.b.c` would return "a.b.c".
	**/
	public function _get_full_name(node:Dynamic):Dynamic;
	/**
		Make args into keyword args if function called full_name requires it.
	**/
	public function _maybe_add_arg_names(node:Dynamic, full_name:Dynamic):Dynamic;
	/**
		Print a warning when specific functions are called with selected args.
		
		The function _print_warning_for_function matches the full name of the called
		function, e.g., tf.foo.bar(). This function matches the function name that
		is called, as long as the function is an attribute. For example,
		`tf.foo.bar()` and `foo.bar()` are matched, but not `bar()`.
		
		Args:
		  node: ast.Call object
		  full_name: The precomputed full name of the callable, if one exists, None
		    otherwise.
		  name: The precomputed name of the callable, if one exists, None otherwise.
		
		Returns:
		  Whether an error was recorded.
	**/
	public function _maybe_add_call_warning(node:Dynamic, full_name:Dynamic, name:Dynamic):Dynamic;
	/**
		Adds a warning if full_name is a deprecated module.
	**/
	public function _maybe_add_module_deprecation_warning(node:Dynamic, full_name:Dynamic, whole_name:Dynamic):Dynamic;
	/**
		Adds an error to be printed about full_name at node.
	**/
	public function _maybe_add_warning(node:Dynamic, full_name:Dynamic):Dynamic;
	/**
		Wraps node (typically, an Attribute or Expr) in a Call.
	**/
	public function _maybe_change_to_function_call(parent:Dynamic, node:Dynamic, full_name:Dynamic):Dynamic;
	/**
		Rename keyword args if the function called full_name requires it.
	**/
	public function _maybe_modify_args(node:Dynamic, full_name:Dynamic, name:Dynamic):Dynamic;
	/**
		Replace node (Attribute or Name) with a node representing full_name.
	**/
	public function _maybe_rename(parent:Dynamic, node:Dynamic, full_name:Dynamic):Dynamic;
	public function add_log(severity:Dynamic, lineno:Dynamic, col:Dynamic, msg:Dynamic):Dynamic;
	/**
		Record a log and print it.
		
		The log should be a tuple `(severity, lineno, col_offset, msg)`, which will
		be printed and recorded. It is part of the log available in the `self.log`
		property.
		
		Args:
		  logs: The logs to add. Must be a list of tuples
		    `(severity, lineno, col_offset, msg)`.
	**/
	public function add_logs(logs:Dynamic):Dynamic;
	public var errors : Dynamic;
	/**
		Called if no explicit visitor function exists for a node.
	**/
	public function generic_visit(node:Dynamic):Dynamic;
	public var info : Dynamic;
	public var log : Dynamic;
	/**
		Visit a node.
	**/
	public function visit(node:Dynamic):Dynamic;
	/**
		Handle bare Attributes i.e. [tf.foo, tf.bar].
	**/
	public function visit_Attribute(node:Dynamic):Dynamic;
	/**
		Handle visiting a call node in the AST.
		
		Args:
		  node: Current Node
	**/
	public function visit_Call(node:Dynamic):Dynamic;
	public function visit_Constant(node:Dynamic):Dynamic;
	/**
		Handle visiting an import node in the AST.
		
		Args:
		  node: Current Node
	**/
	public function visit_Import(node:Dynamic):Dynamic;
	/**
		Handle visiting an import-from node in the AST.
		
		Args:
		  node: Current Node
	**/
	public function visit_ImportFrom(node:Dynamic):Dynamic;
	public var warnings : Dynamic;
	public var warnings_and_errors : Dynamic;
}