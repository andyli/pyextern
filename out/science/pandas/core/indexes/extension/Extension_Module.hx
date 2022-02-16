/* This file is generated, do not edit! */
package pandas.core.indexes.extension;
@:pythonImport("pandas.core.indexes.extension") extern class Extension_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _ExtensionIndexT : Dynamic;
	static public var _T : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Make an alias for a method of the underlying ExtensionArray.
		
		Parameters
		----------
		name : str
		    Name of an attribute the class should inherit from its EA parent.
		delegate : class
		cache : bool, default False
		    Whether to convert wrapped properties into cache_readonly
		wrap : bool, default False
		    Whether to wrap the inherited result in an Index.
		
		Returns
		-------
		attribute, method, property, or cache_readonly
	**/
	static public function _inherit_from_data(name:Dynamic, delegate:Dynamic, ?cache:Dynamic, ?wrap:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		A decorator take docstring templates, concatenate them and perform string
		substitution on it.
		
		This decorator will add a variable "_docstring_components" to the wrapped
		callable to keep track the original docstring template for potential usage.
		If it should be consider as a template, it will be saved as a string.
		Otherwise, it will be saved as callable, and later user __doc__ and dedent
		to get docstring.
		
		Parameters
		----------
		*docstrings : str or callable
		    The string / docstring / docstring template to be appended in order
		    after default docstring under callable.
		**params
		    The string which would be used to format docstring template.
	**/
	static public function doc(?docstrings:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Class decorator to pin attributes from an ExtensionArray to a Index subclass.
		
		Parameters
		----------
		names : List[str]
		delegate : class
		cache : bool, default False
		wrap : bool, default False
		    Whether to wrap the inherited result in an Index.
	**/
	static public function inherit_names(names:Dynamic, delegate:Dynamic, ?cache:Dynamic, ?wrap:Dynamic):Dynamic;
	static public var npt : Dynamic;
}