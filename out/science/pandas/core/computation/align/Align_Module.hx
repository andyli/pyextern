/* This file is generated, do not edit! */
package pandas.core.computation.align;
@:pythonImport("pandas.core.computation.align") extern class Align_Module {
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _align_core(terms:Dynamic):Dynamic;
	static public function _align_core_single_unary_op(term:Dynamic):Dynamic;
	/**
		Check a sequence of terms for instances of PandasObject.
	**/
	static public function _any_pandas_objects(terms:Dynamic):Dynamic;
	static public function _filter_special_cases(f:Dynamic):Dynamic;
	static public function _zip_axes_from_type(typ:Dynamic, new_axes:Dynamic):Dynamic;
	/**
		Align a set of terms.
	**/
	static public function align_terms(terms:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Reconstruct an object given its type, raw value, and possibly empty
		(None) axes.
		
		Parameters
		----------
		typ : object
		    A type
		obj : object
		    The value to use in the type constructor
		axes : dict
		    The axes to use to construct the resulting pandas object
		
		Returns
		-------
		ret : typ
		    An object of type ``typ`` with the value `obj` and possible axes
		    `axes`.
	**/
	static public function reconstruct_object(typ:Dynamic, obj:Dynamic, axes:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Wrapper around numpy.result_type which overcomes the NPY_MAXARGS (32)
		argument limit.
	**/
	static public function result_type_many(?arrays_and_dtypes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}