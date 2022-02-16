/* This file is generated, do not edit! */
package torch.fx.experimental.optimization;
@:pythonImport("torch.fx.experimental.optimization") extern class Optimization_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Argument(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Target(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Splits a qualname into parent path and last atom.
		For example, `foo.bar.baz` -> (`foo.bar`, `baz`)
	**/
	static public function _parent_name(target:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Given lists of nodes from an existing graph that represent a subgraph, returns a submodule that executes that subgraph.
	**/
	static public function extract_subgraph(orig_module:Dynamic, nodes:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Fuses convolution/BN layers for inference purposes. Will deepcopy your
		model by default, but can modify the model inplace as well.
	**/
	static public function fuse(model:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function fuse_conv_bn_eval(conv:Dynamic, bn:Dynamic):Dynamic;
	/**
		This generates a heuristic that can be passed into `optimize_for_inference` that
		determines whether a subgraph should be run in MKL by running it with the example_inputs.
		
		Example usage:
		    heuristic = gen_mkl_autotuner(example_inputs, iters=10)
		    fast_model = optimization.optimize_for_inference(model, heuristic)
	**/
	static public function gen_mkl_autotuner(example_inputs:Dynamic, ?iters:Dynamic, ?warmup:Dynamic):Dynamic;
	static public function matches_module_pattern(pattern:Dynamic, node:Dynamic, modules:Dynamic):Dynamic;
	static public var mkldnn_map : Dynamic;
	static public var mkldnn_supported : Dynamic;
	static public var mkldnn_supported_unknown : Dynamic;
	/**
		For each node, if it's a module that can be preconverted into MKLDNN,
		then we do so and create a mapping to allow us to convert from the MKLDNN
		version of the module to the original.
	**/
	static public function modules_to_mkldnn(nodes:Dynamic, modules:Dynamic):Dynamic;
	/**
		Performs a set of optimization passes to optimize a model for the
		purposes of inference. Specifically, the passes that are run are:
		1. Conv/BN fusion
		2. Dropout removal
		3. MKL layout optimizations
		
		The third optimization takes a function `use_mkl_heuristic` that's used
		to determine whether a subgraph should be explicity run in MKL layout.
		
		Note: As FX does not currently handle aliasing, this pass currently
		assumes nothing aliases. If that isn't true, use at your own risk.
	**/
	static public function optimize_for_inference(model:Dynamic, ?pass_config:Dynamic, ?tracer:Dynamic):Dynamic;
	/**
		Removes all dropout layers from the module.
	**/
	static public function remove_dropout(model:Dynamic):Dynamic;
	static public function replace_node_module(node:Dynamic, modules:Dynamic, new_module:Dynamic):Dynamic;
	/**
		Maps each module that's been changed with `modules_to_mkldnn` back to its
		original.
	**/
	static public function reset_modules(nodes:Dynamic, modules:Dynamic, old_modules:Dynamic):Dynamic;
	/**
		This is a heuristic that can be passed into `optimize_for_inference` that
		determines whether a subgraph should be run in MKL by checking if there
		are more than 2 nodes in it
	**/
	static public function use_mkl_length(graph:Dynamic):Dynamic;
}