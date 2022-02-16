/* This file is generated, do not edit! */
package pandas.core.computation.engines;
@:pythonImport("pandas.core.computation.engines") extern class Engines_Module {
	static public var ENGINES : Dynamic;
	static public var MATHOPS : Dynamic;
	static public var REDUCTIONS : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Attempt to prevent foot-shooting in a helpful way.
		
		Parameters
		----------
		expr : Expr
		    Terms can contain
	**/
	static public function _check_ne_builtin_clash(expr:Dynamic):Dynamic;
	static public var _ne_builtins : Dynamic;
	/**
		Align a set of terms.
	**/
	static public function align_terms(terms:Dynamic):Dynamic;
	static public var annotations : Dynamic;
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
}