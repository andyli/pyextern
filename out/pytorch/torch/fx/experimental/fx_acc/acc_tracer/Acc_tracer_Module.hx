/* This file is generated, do not edit! */
package torch.fx.experimental.fx_acc.acc_tracer;
@:pythonImport("torch.fx.experimental.fx_acc.acc_tracer") extern class Acc_tracer_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_REWRITE_ALLOW_LIST : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_exception_wrapper_attr_name(exc_type:Dynamic):Dynamic;
	/**
		Unconditionally removes all assertions found in GraphModule gm.
		Returns whether the graph is modified.
	**/
	static public function _remove_assertions(gm:Dynamic):Dynamic;
	/**
		Unconditionally removes all call_modules to ConditionalExceptionWrappers
		found in GraphModule gm. Returns whether the graph is modified.
	**/
	static public function _remove_exceptions(gm:Dynamic):Dynamic;
	static public function _rewrite(mod_to_rewrite:Dynamic, ?allow_list:Dynamic):Dynamic;
	/**
		    This helper function accepts a list of source lines. It finds the
		    indentation level of the function definition (`def`), then it indents
		    all lines in the function body to a point at or greater than that
		    level. This allows for comments and continued string literals that
		    are at a lower indentation than the rest of the code.
		    Args:
		        sourcelines: function source code, separated into lines by
		                        the '
		' character
		    Returns:
		        A list of source lines that have been correctly aligned
		    
	**/
	static public function normalize_source_lines(sourcelines:Dynamic):Dynamic;
	/**
		Performs tracing and arg normalization specialized for accelerator lowering.
		
		It first rewrites the AST of the module's methods (and all attr methods
		recursively) to transform un-tracable parts of the module to make them
		traceable.
		
		It then traces to the functional level so that optimizations and backend
		accelerator importers have the ability to see and/or change inputs to each
		op.
		
		It then removes assertions and exception wrappers found during symbolic
		tracing if requested based on remove_assertions and remove_exceptions
		
		Dead code is then eliminated, which will e.g. remove any nodes that were
		only used by assertions or exceptions if they were removed.
		
		It then performs normalization on args/kwargs, aligning any arg that can be
		moved to kwarg to be so, and then making default values explicit.
		
		Args:
		
		    mod (Module): The module to transform and trace.
		
		    sample_inputs (Tuple[Union[torch.Tensor, List[torch.Tensor]]]):
		            Sample inputs with which to run shape prop.
		
		    remove_assertions (bool): Whether to remove assertion nodes from
		                                the graph after symbolic tracing.
		
		    remove_exceptions (bool): Whether to remove exception wrapper nodes
		                                from the graph after symbolic tracing.
		
		    use_acc_normalization (bool): Whether to use acc-specific
		                                    normalization to all acc_ops.
		
		    ast_rewriter_allow_list (Optional[Set[nn.Module]]): Optional allow list of
		                                        modules that need AST rewriting.
		
		    leaf_module_list (Optional[Set[nn.Module]]): Optional leaf module list where
		                                        modules will not be traced into.
	**/
	static public function trace(mod:Dynamic, sample_inputs:Dynamic, ?remove_assertions:Dynamic, ?remove_exceptions:Dynamic, ?use_acc_normalization:Dynamic, ?ast_rewriter_allow_list:Dynamic, ?leaf_module_list:Dynamic):Dynamic;
}