/* This file is generated, do not edit! */
package pandas.core.ops.methods;
@:pythonImport("pandas.core.ops.methods") extern class Methods_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_methods(cls:Dynamic, new_methods:Dynamic):Dynamic;
	static public function _create_methods(cls:Dynamic, arith_method:Dynamic, comp_method:Dynamic):Dynamic;
	/**
		Find the appropriate operation-wrappers to use when defining flex/special
		arithmetic, boolean, and comparison operations with the given class.
		
		Parameters
		----------
		cls : class
		
		Returns
		-------
		arith_flex : function or None
		comp_flex : function or None
	**/
	static public function _get_method_wrappers(cls:Dynamic):Dynamic;
	/**
		Adds the full suite of flex arithmetic methods (``pow``, ``mul``, ``add``)
		to the class.
		
		Parameters
		----------
		cls : class
		    flex methods will be defined and pinned to this class
	**/
	static public function add_flex_arithmetic_methods(cls:Dynamic):Dynamic;
}