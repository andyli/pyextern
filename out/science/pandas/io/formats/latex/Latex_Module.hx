/* This file is generated, do not edit! */
package pandas.io.formats.latex;
@:pythonImport("pandas.io.formats.latex") extern class Latex_Module {
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert elements in ``crow`` to bold.
	**/
	static public function _convert_to_bold(crow:Dynamic, ilevels:Dynamic):Dynamic;
	/**
		Carry out string replacements for special symbols.
		
		Parameters
		----------
		row : list
		    List of string, that may contain special symbols.
		
		Returns
		-------
		list
		    list of strings with the special symbols replaced.
	**/
	static public function _escape_symbols(row:Dynamic):Dynamic;
	/**
		Extract full and short captions from caption string/tuple.
		
		Parameters
		----------
		caption : str or tuple, optional
		    Either table caption string or tuple (full_caption, short_caption).
		    If string is provided, then it is treated as table full caption,
		    while short_caption is considered an empty string.
		
		Returns
		-------
		full_caption, short_caption : tuple
		    Tuple of full_caption, short_caption strings.
	**/
	static public function _split_into_full_short_caption(caption:Dynamic):python.Tuple<Dynamic>;
	/**
		A decorator indicating abstract methods.
		
		Requires that the metaclass is ABCMeta or derived from it.  A
		class that has a metaclass derived from ABCMeta cannot be
		instantiated unless all of its abstract methods are overridden.
		The abstract methods can be called using any of the normal
		'super' call mechanisms.  abstractmethod() may be used to declare
		abstract methods for properties and descriptors.
		
		Usage:
		
		    class C(metaclass=ABCMeta):
		        @abstractmethod
		        def my_abstract_method(self, ...):
		            ...
	**/
	static public function abstractmethod(funcobj:Dynamic):Dynamic;
	static public var annotations : Dynamic;
}