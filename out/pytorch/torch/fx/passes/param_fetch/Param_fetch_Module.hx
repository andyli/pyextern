/* This file is generated, do not edit! */
package torch.fx.passes.param_fetch;
@:pythonImport("torch.fx.passes.param_fetch") extern class Param_fetch_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function Type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
	/**
		Default matching method
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function default_matching(name:Dynamic, target_version:Dynamic):Dynamic;
	/**
		If `mod` is in `module_fetch_book`, fetch the mod's attributes that in the `module_fetch_book`
		    after checking module's version is compatible with the `module_fetch_book`.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function extract_attrs_for_lowering(mod:Dynamic):Dynamic;
	/**
		Recursively traverse all `fx_module` nodes and fetch the module's attributes if the node is a leaf module.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function lift_lowering_attrs_to_nodes(fx_module:Dynamic):Dynamic;
	static public var module_fetch_book : Dynamic;
}