/* This file is generated, do not edit! */
package tensorflow.tools.compatibility.ast_edits;
@:pythonImport("tensorflow.tools.compatibility.ast_edits", "_ASTCallVisitor") extern class _ASTCallVisitor {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(filename:Dynamic, lines:Dynamic, api_change_spec:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(filename:Dynamic, lines:Dynamic, api_change_spec:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Return correct line number and column offset for a given node.
		
		This is necessary mainly because ListComp's location reporting reports
		the next token after the list comprehension list opening.
		
		Returns:
		  lineno, offset for the given node
		
		Args:
		  node: Node for which we wish to know the lineno and col_offset
	**/
	public function _find_true_position(node:Dynamic):Dynamic;
	/**
		Traverse an attribute to generate a full name e.g. tf.foo.bar.
		
		Args:
		  node: A Node of type Attribute.
		
		Returns:
		  a '.'-delimited full-name or None if the tree was not a simple form.
		  i.e. `foo()+b).bar` returns None, while `a.b.c` would return "a.b.c".
	**/
	public function _get_attribute_full_path(node:Dynamic):Dynamic;
	public function _print_warning_for_function(node:Dynamic, full_name:Dynamic):Dynamic;
	/**
		Print a warning when specific functions are called.
		
		The function _print_warning_for_function matches the full name of the called
		function, e.g., tf.foo.bar(). This function matches the function name that
		is called, as long as the function is an attribute. For example,
		`tf.foo.bar()` and `foo.bar()` are matched, but not `bar()`.
		
		Args:
		  node: ast.Call object
	**/
	public function _print_warning_for_function_unrestricted(node:Dynamic):Dynamic;
	public function _rename_functions(node:Dynamic, full_name:Dynamic):Dynamic;
	/**
		Called if no explicit visitor function exists for a node.
	**/
	public function generic_visit(node:Dynamic):Dynamic;
	public function process(lines:Dynamic):Dynamic;
	/**
		Visit a node.
	**/
	public function visit(node:Dynamic):Dynamic;
	/**
		Handle bare Attributes i.e. [tf.foo, tf.bar].
		
		Args:
		  node: Node that is of type ast.Attribute
	**/
	public function visit_Attribute(node:Dynamic):Dynamic;
	/**
		Handle visiting a call node in the AST.
		
		Args:
		  node: Current Node
	**/
	public function visit_Call(node:Dynamic):Dynamic;
}