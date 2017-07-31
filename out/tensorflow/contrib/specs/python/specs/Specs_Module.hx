/* This file is generated, do not edit! */
package tensorflow.contrib.specs.python.specs;
@:pythonImport("tensorflow.contrib.specs.python.specs") extern class Specs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Evaluates a spec and creates a network instance given the inputs.
		
		Args:
		    spec: specification as a string, ending with a `net = ...` statement
		    inputs: input that `net` is applied to
		    environment: a dictionary of input bindings
		
		Returns:
		    A callable that instantiates the `net` binding.
		
		Raises:
		    ValueError: spec failed to create a `net`
		    Exception: other exceptions raised during execution of `spec`
	**/
	static public function create_net(spec:Dynamic, inputs:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Evaluates a spec and returns the binding of `net`.
		
		Specs are written in a DSL based on function composition.  A spec
		like `net = Cr(64, [3, 3])` assigns an object that represents a
		single argument function capable of creating a network to
		the variable `net`.
		
		Args:
		    spec: specification as a string, ending with a `net = ...` statement
		    environment: a dictionary of input bindings
		
		Returns:
		    A callable that instantiates the `net` binding.
		
		Raises:
		    ValueError: spec failed to create a `net`
		    Exception: other exceptions raised during execution of `spec`
	**/
	static public function create_net_fun(spec:Dynamic, ?environment:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Evaluates a parameter specification and returns the environment.
		
		Args:
		    params: parameter assignments as a string
		    environment: a dictionary of input bindings
		
		Returns:
		    Environment with additional bindings created by
		    executing `params`
		
		Raises:
		    Exception: other exceptions raised during execution of `params`
	**/
	static public function eval_params(params:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Evaluates a spec and returns the environment.
		
		This function allows you to use a spec to obtain multiple bindings
		in an environment. That is useful if you use the spec language to
		specify multiple components of a larger network, for example: "left
		= Cr(64, [5,5]); right = Fc(64)" Usually, you will want to use
		`create_net` or `create_net_fun` below.
		
		Args:
		    spec: specification as a string
		    environment: a dictionary of input bindings
		
		Returns:
		    Environment with additional bindings created by spec.
		
		Raises:
		    Exception: other exceptions raised during execution of `spec`
	**/
	static public function eval_spec(spec:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Execute the given source in the context of globals and locals.
		
		The source may be a string representing one or more Python statements
		or a code object as returned by compile().
		The globals must be a dictionary and locals can be any mapping,
		defaulting to the current globals and locals.
		If only globals is given, locals defaults to it.
	**/
	static public function exec_(source:Dynamic, ?globals:Dynamic, ?locals:Dynamic):Dynamic;
	static public var ops : Dynamic;
	static public var print_function : Dynamic;
}