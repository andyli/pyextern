/* This file is generated, do not edit! */
package pandas.core.computation.scope;
@:pythonImport("pandas.core.computation.scope") extern class Scope_Module {
	static public var DEFAULT_GLOBALS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a prettier version of obj.
		
		Parameters
		----------
		obj : object
		    Object to pretty print
		
		Returns
		-------
		str
		    Pretty print object repr
	**/
	static public function _get_pretty_string(obj:Dynamic):Dynamic;
	/**
		Return the padded hexadecimal id of ``obj``.
	**/
	static public function _raw_hex_id(obj:Dynamic):Dynamic;
	/**
		Replace a number with its hexadecimal representation. Used to tag
		temporary variables with their calling scope's id.
	**/
	static public function _replacer(x:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Ensure that we are grabbing the correct scope.
	**/
	static public function ensure_scope(level:Dynamic, ?global_dict:Dynamic, ?local_dict:Dynamic, ?resolvers:Dynamic, ?target:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}