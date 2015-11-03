/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "FormulaMacro") extern class FormulaMacro {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a printable representation.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var begin : Dynamic;
	/**
		Make the contents using classic output generation with XHTML and CSS.
	**/
	public function classic():Dynamic;
	/**
		Escape a line with replacements from elyxer.a map
	**/
	public function escape(line:Dynamic, ?replacements:Dynamic):Dynamic;
	/**
		Escape all lines in an array according to the output options.
	**/
	public function escapeall(lines:Dynamic):Dynamic;
	/**
		Escape all Unicode characters to HTML entities.
	**/
	public function escapeentities(line:Dynamic):Dynamic;
	/**
		Extract all text from elyxer.allowed containers.
	**/
	public function extracttext():Dynamic;
	/**
		Get the resulting HTML
	**/
	public function gethtml():Dynamic;
	/**
		Get the value of a parameter, if present.
	**/
	public function getparameter(name:Dynamic):Dynamic;
	/**
		Get the value of a comma-separated parameter as a list.
	**/
	public function getparameterlist(name:Dynamic):Dynamic;
	/**
		Make the contents using Google Charts http://code.google.com/apis/chart/.
	**/
	public function googlecharts():Dynamic;
	/**
		Group some adjoining elements into a group
	**/
	public function group(index:Dynamic, group:Dynamic, isingroup:Dynamic):Dynamic;
	/**
		Check if the parent's output is empty.
	**/
	public function hasemptyoutput():Dynamic;
	/**
		Make the contents for jsMath.
	**/
	public function jsmath():Dynamic;
	/**
		Search for all embedded containers and process them
	**/
	public function locateprocess(locate:Dynamic, process:Dynamic):Dynamic;
	/**
		Make the contents for MathJax.
	**/
	public function mathjax():Dynamic;
	static public var parent : Dynamic;
	/**
		Parse using a parse position instead of self.parser.
	**/
	public function parse(pos:Dynamic):Dynamic;
	/**
		Parse a \[...\] formula.
	**/
	public function parseblockto(pos:Dynamic, limit:Dynamic):Dynamic;
	/**
		Parse to the next $.
	**/
	public function parsedollar(pos:Dynamic):Dynamic;
	/**
		Parse a $$...$$ formula.
	**/
	public function parsedollarblock(pos:Dynamic):Dynamic;
	/**
		Parse a $...$ formula.
	**/
	public function parsedollarinline(pos:Dynamic):Dynamic;
	/**
		Parse a \(...\) formula.
	**/
	public function parseinlineto(pos:Dynamic, limit:Dynamic):Dynamic;
	/**
		Parse a formula that ends with the given command.
	**/
	public function parseupto(pos:Dynamic, limit:Dynamic):Dynamic;
	static public var partkey : Dynamic;
	/**
		Convert the formula to tags
	**/
	public function process():Dynamic;
	/**
		Perform a recursive search in the container.
	**/
	public function recursivesearch(locate:Dynamic, recursive:Dynamic, process:Dynamic):Dynamic;
	/**
		Remove a container but leave its contents
	**/
	public function remove(index:Dynamic):Dynamic;
	/**
		Search for all embedded containers of a given type
	**/
	public function searchall(type:Dynamic):Dynamic;
	/**
		Search for elements of a given type and process them
	**/
	public function searchprocess(type:Dynamic, process:Dynamic):Dynamic;
	/**
		Search for all containers of a type and remove them
	**/
	public function searchremove(type:Dynamic):Dynamic;
	/**
		Show in a tree
	**/
	public function tree(?level:Dynamic):Dynamic;
}