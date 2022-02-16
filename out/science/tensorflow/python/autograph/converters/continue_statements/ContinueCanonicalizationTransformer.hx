/* This file is generated, do not edit! */
package tensorflow.python.autograph.converters.continue_statements;
@:pythonImport("tensorflow.python.autograph.converters.continue_statements", "ContinueCanonicalizationTransformer") extern class ContinueCanonicalizationTransformer {
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
		Initialize the transformer.
		
		Subclasses should call this.
		
		Args:
		  ctx: A Context object.
	**/
	@:native("__init__")
	public function ___init__(ctx:Dynamic):Dynamic;
	/**
		Initialize the transformer.
		
		Subclasses should call this.
		
		Args:
		  ctx: A Context object.
	**/
	public function new(ctx:Dynamic):Void;
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
	public function _postprocess_statement(node:Dynamic):Dynamic;
	public function _visit_loop_body(node:Dynamic, nodes:Dynamic):Dynamic;
	public function _visit_non_loop_body(nodes:Dynamic):Dynamic;
	/**
		Applies a function to each individual assignment.
		
		This function can process a possibly-unpacked (e.g. a, b = c, d) assignment.
		It tries to break down the unpacking if possible. In effect, it has the same
		effect as passing the assigned values in SSA form to apply_fn.
		
		Examples:
		
		The following will result in apply_fn(a, c), apply_fn(b, d):
		
		    a, b = c, d
		
		The following will result in apply_fn(a, c[0]), apply_fn(b, c[1]):
		
		    a, b = c
		
		The following will result in apply_fn(a, (b, c)):
		
		    a = b, c
		
		It uses the visitor pattern to allow subclasses to process single
		assignments individually.
		
		Args:
		  targets: list, tuple of or individual AST node. Should be used with the
		    targets field of an ast.Assign node.
		  values: an AST node.
		  apply_fn: a function of a single argument, which will be called with the
		    respective nodes of each single assignment. The signature is
		    apply_fn(target, value), no return value.
	**/
	public function apply_to_single_assignments(targets:Dynamic, values:Dynamic, apply_fn:Dynamic):Dynamic;
	public function create_assignment(target:Dynamic, expression:Dynamic):Dynamic;
	/**
		Helper method useful for debugging. Prints the AST.
	**/
	public function debug_print(node:Dynamic):Dynamic;
	/**
		Helper method useful for debugging. Prints the AST as code.
	**/
	public function debug_print_src(node:Dynamic):Dynamic;
	/**
		Called if no explicit visitor function exists for a node.
	**/
	public function generic_visit(node:Dynamic):Dynamic;
	/**
		Returns the unique directive argument for a symbol.
		
		See lang/directives.py for details on directives.
		
		Example:
		   # Given a directive in the code:
		   ag.foo_directive(bar, baz=1)
		
		   # One can write for an AST node Name(id='bar'):
		   get_definition_directive(node, ag.foo_directive, 'baz')
		
		Args:
		  node: ast.AST, the node representing the symbol for which the directive
		    argument is needed.
		  directive: Callable[..., Any], the directive to search.
		  arg: str, the directive argument to return.
		  default: Any
		
		Raises:
		  ValueError: if conflicting annotations have been found
	**/
	public function get_definition_directive(node:Dynamic, directive:Dynamic, arg:Dynamic, _default:Dynamic):Dynamic;
	/**
		Visit a node.
	**/
	public function visit(node:Dynamic):Dynamic;
	public function visit_Constant(node:Dynamic):Dynamic;
	public function visit_Continue(node:Dynamic):Dynamic;
	public function visit_ExceptHandler(node:Dynamic):Dynamic;
	public function visit_For(node:Dynamic):Dynamic;
	public function visit_If(node:Dynamic):Dynamic;
	public function visit_Try(node:Dynamic):Dynamic;
	public function visit_While(node:Dynamic):Dynamic;
	public function visit_With(node:Dynamic):Dynamic;
	/**
		A more powerful version of generic_visit for statement blocks.
		
		An example of a block is the body of an if statement.
		
		This function allows specifying a postprocessing callback (the
		after_visit argument) argument which can be used to move nodes to a new
		destination. This is done by after_visit by returning a non-null
		second return value, e.g. return new_node, new_destination.
		
		For example, a transformer could perform the following move:
		
		    foo()
		    bar()
		    baz()
		
		    foo()
		    if cond:
		      bar()
		      baz()
		
		The above could be done with a postprocessor of this kind:
		
		    def after_visit(node):
		      if node_is_function_call(bar):
		        new_container_node = build_cond()
		        new_container_node.body.append(node)
		        return new_container_node, new_container_node.body
		      else:
		        # Once we set a new destination, all subsequent items will be
		        # moved to it, so we don't need to explicitly handle baz.
		        return node, None
		
		Args:
		  nodes: enumerable of AST node objects. If None, the function returns None.
		  before_visit: optional callable that is called before visiting each item
		    in nodes
		  after_visit: optional callable that takes in an AST node and returns a
		    tuple (new_node, new_destination). It is called after visiting each item
		    in nodes. Is used in the same was as the
		      visit_* methods: new_node will replace the node; if not None,
		        new_destination must be a list, and subsequent nodes will be placed
		        in this list instead of the list returned by visit_block.
		
		Returns:
		  A list of AST node objects containing the transformed items fron nodes,
		  except those nodes that have been relocated using after_visit.
	**/
	public function visit_block(nodes:Dynamic, ?before_visit:Dynamic, ?after_visit:Dynamic):Dynamic;
}