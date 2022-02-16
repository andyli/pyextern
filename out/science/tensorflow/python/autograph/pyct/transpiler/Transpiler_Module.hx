/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.transpiler;
@:pythonImport("tensorflow.python.autograph.pyct.transpiler") extern class Transpiler_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wraps an AST into the body of a factory with consistent lexical context.
		
		The AST is expected to define some symbol with a name given by `entity_name`.
		
		This mechanism ensures that the resulting transformed entity has lexical
		scoping identical to that of the source entity, while allowing extra
		parametrization.
		
		Two nested factories achieve the following:
		
		 1. The inner factory dynamically creates the entity represented by `nodes`.
		 2. The inner factory is parametrized by a custom set of arguments.
		 3. The inner factory has a closure identical to that of the transformed
		     entity.
		 4. The inner factory has local variables named like `args`, which `nodes` may
		     use as additional parameters.
		 5. The inner factory returns the variables given by `entity_name`.
		 6. The outer factory is niladic.
		 7. The outer factory has no closure.
		 8. The outer factory creates the necessary lexical scope for the inner
		     factory, so that the loaded code has the given configuration for
		     closure/globals.
		 9. The outer factory returns the inner factory.
		
		Roughly speaking, the following code is generated:
		
		    from __future__ import future_feature_1
		    from __future__ import future_feature_2
		    ...
		
		    def outer_factory():
		      closure_var_1 = None
		      closure_var_2 = None
		      ...
		
		      def inner_factory(arg_1, arg_2, ...):
		        <<nodes>>
		        return entity
		
		      return inner_factory
		
		The lexical scoping is created using dummy symbol declarations which create
		local variables in the body of the outer factory, so that the Python parser
		correctly marks them as free non-global variables upon load (that is, it
		creates cell slots for each symbol. These symbols are initialized with None,
		but their values are not expected to be used; instead, the caller is expected
		to replace them with the cells of the source entity. For more details, see:
		https://docs.python.org/3/reference/executionmodel.html#binding-of-names
		
		Args:
		  nodes: Tuple[ast.AST], the source code to wrap.
		  entity_name: Union[Text, ast.AST], the name of the principal entity that
		    `nodes` define.
		  inner_factory_name: Text, the name of the inner factory.
		  outer_factory_name: Text, the name of the outer factory.
		  closure_vars: Iterable[Text], names of the closure variables for the inner
		    factory.
		  factory_args: Iterable[Text], names of additional arguments for the
		    inner factory. Useful to configure variables that the converted code can
		    use. Typically, these are modules.
		  future_features: Iterable[Text], names of future statements to associate the
		    code with.
		
		Returns:
		  ast.AST
	**/
	static public function _wrap_into_factory(nodes:Dynamic, entity_name:Dynamic, inner_factory_name:Dynamic, outer_factory_name:Dynamic, closure_vars:Dynamic, factory_args:Dynamic, future_features:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}