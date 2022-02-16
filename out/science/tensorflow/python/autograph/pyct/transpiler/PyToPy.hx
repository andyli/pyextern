/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.transpiler;
@:pythonImport("tensorflow.python.autograph.pyct.transpiler", "PyToPy") extern class PyToPy {
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
	public function _cached_factory(fn:Dynamic, cache_subkey:Dynamic):Dynamic;
	/**
		Erase arg default expressions, which would otherwise be unbound.
	**/
	public function _erase_arg_defaults(node:Dynamic):Dynamic;
	/**
		Returns a unique key to use for caching.
		
		Subclasses must override this.
		
		Calls made to `transform_function` with functions that have the same code
		object and caching key will return a cached instance on subsequent
		invocations.
		
		Args:
		  user_context: The context object which was passed to `transform`.
		
		Returns:
		  extra_locals: A hashable.
	**/
	public function get_caching_key(user_context:Dynamic):Dynamic;
	/**
		Returns extra static local variables to be made to transformed code.
		
		Subclasses must override this.
		
		Returns:
		  extra_locals: A Dict[Text, Any] containing additional variables to make
		    available to the transformed code.
	**/
	public function get_extra_locals():Dynamic;
	/**
		Returns a name for the output function. Subclasses may override this.
	**/
	public function get_transformed_name(node:Dynamic):Dynamic;
	/**
		Transforms a Python object.
		
		Users typically call this method.
		
		Args:
		  obj: A Python object, function, type, etc.
		  user_context: An opaque object (may be None) that is forwarded to
		    transform_ast, through the ctx.user_context argument.
		Returns:
		  The result of calling transform_function.
		
		Raises:
		  NotImplementedError: if the type of obj is not handled.
	**/
	public function transform(obj:Dynamic, user_context:Dynamic):Dynamic;
	/**
		Performs an actual transformation of a function's AST.
		
		Subclasses must implement this method, and do not usually call it.
		
		Args:
		  node: One or more ast.AST nodes representing the AST to be transformed.
		  ctx: transformer.Context.
	**/
	public function transform_ast(node:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Transforms a function. See GenericTranspiler.trasnform_function.
		
		This overload wraps the parent's `transform_function`, adding caching and
		facilities to instantiate the output as a Python object. It also
		adds facilities to make new symbols available to the generated Python code,
		visible as local variables - see `get_extra_locals`.
		
		Args:
		  fn: A function or lambda.
		  user_context: An opaque object (may be None) that is forwarded to
		    transform_ast, through the ctx.user_context argument.
		Returns:
		  A tuple:
		    * A function or lambda with the same signature and closure as `fn`
		    * The temporary module into which the transformed function was loaded
		    * The source map as a
		        Dict[origin_info.LineLocation, origin_info.OriginInfo]
	**/
	public function transform_function(fn:Dynamic, user_context:Dynamic):Dynamic;
	/**
		Transforms a module.
		
		Subclasses may override this method. The return value is opaque.
		
		The method receives the original AST. The result is passed as-is to the
		output of `transform`.
		
		Args:
		  mod: A Python module.
		  user_context: An opaque object (may be None) that is forwarded to
		    transform_ast, through the ctx.user_context argument.
		Returns:
		  List[Tuple[Any, Any]]. By default it returns the output of transform_ast,
		  evaluated on each supported member, other than modules, together with a
		  `transformer.Context` containing information about the transformation
		  process.
	**/
	public function transform_module(mod:Dynamic, user_context:Dynamic):Dynamic;
}