/* This file is generated, do not edit! */
package tensorflow.contrib.labeled_tensor.python.ops._typecheck;
@:pythonImport("tensorflow.contrib.labeled_tensor.python.ops._typecheck") extern class _Typecheck_Module {
	static public var _TYPE_ABBREVIATIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Replace forward references in the given type.
	**/
	static public function _replace_forward_references(t:Dynamic, context:Dynamic):Dynamic;
	/**
		A more succinct repr for typecheck tracebacks.
	**/
	static public function _type_repr(t:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		A decorator which checks the input types of a function.
		
		Based on:
		http://stackoverflow.com/questions/15299878/how-to-use-python-decorators-to-check-function-arguments
		The above draws from:
		https://www.python.org/dev/peps/pep-0318/
		
		Args:
		  *types: A list of Python types.
		
		Returns:
		  A function to use as a decorator.
	**/
	static public function accepts(?types:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Register an abbreviation for a type in typecheck tracebacks.
		
		This makes otherwise very long typecheck errors much more readable.
		
		Example:
		  typecheck.register_type_abbreviation(tf.Dimension, 'tf.Dimension')
		
		Args:
		  name: type or class to abbreviate.
		  alias: string alias to substitute.
	**/
	static public function register_type_abbreviation(name:Dynamic, alias:Dynamic):Dynamic;
	/**
		A decorator which checks the return types of a function.
		
		Based on:
		http://stackoverflow.com/questions/15299878/how-to-use-python-decorators-to-check-function-arguments
		The above draws from:
		https://www.python.org/dev/peps/pep-0318/
		
		Args:
		  *types: A list of Python types.
		    A list of one element corresponds to a single return value.
		    A list of several elements corresponds to several return values.
		    Note that a function with no explicit return value has an implicit
		    NoneType return and should be annotated correspondingly.
		
		Returns:
		  A function to use as a decorator.
	**/
	static public function returns(?types:python.VarArgs<Dynamic>):Dynamic;
}