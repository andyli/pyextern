/* This file is generated, do not edit! */
package torch.fx.graph_module;
@:pythonImport("torch.fx.graph_module") extern class Graph_module_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _addindent(s_:Dynamic, numSpaces:Dynamic):Dynamic;
	static public function _assign_attr(from_obj:Dynamic, to_module:Dynamic, target:Dynamic):Dynamic;
	static public function _copy_attr(from_module:Dynamic, to_module:Dynamic, target:Dynamic):Dynamic;
	static public var _custom_builtins : Dynamic;
	/**
		Deserialize a GraphModule given the dictionary of the original module,
		using the code to reconstruct the graph. We delete the actual graph before
		saving the dictionary so that changes to the in-memory graph format do not
		get serialized.
	**/
	static public function _deserialize_graph_module(forward:Dynamic, body:Dynamic):Dynamic;
	static public function _exec_with_source(src:Dynamic, globals:Dynamic):Dynamic;
	static public function _format_import_block(globals:Dynamic, importer:Dynamic):Dynamic;
	static public function _format_import_statement(name:Dynamic, obj:Dynamic, importer:Dynamic):Dynamic;
	static public function _forward_from_src(src:Dynamic, globals:Dynamic):Dynamic;
	static public function _is_from_torch(obj:Dynamic):Dynamic;
	static public var _loader : Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
	/**
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function reduce_deploy_graph_module(importer:Dynamic, body:Dynamic, import_block:Dynamic):Dynamic;
	/**
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function reduce_graph_module(body:Dynamic, import_block:Dynamic):Dynamic;
	/**
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function reduce_package_graph_module(importer:Dynamic, body:Dynamic, generated_module_name:Dynamic):Dynamic;
	static public var sys_importer : Dynamic;
}