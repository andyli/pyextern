/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "Formula") extern class Formula {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return a printable representation.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Escape a line with replacements from a map
	**/
	public function escape(line:Dynamic, ?replacements:Dynamic):Dynamic;
	/**
		Escape all Unicode characters to HTML entities.
	**/
	public function escapeentities(line:Dynamic):Dynamic;
	/**
		Extract all text from allowed containers.
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
		Group some adjoining elements into a group
	**/
	public function group(index:Dynamic, group:Dynamic, isingroup:Dynamic):Dynamic;
	/**
		Check if the parent's output is empty.
	**/
	public function hasemptyoutput():Dynamic;
	/**
		Search for all embedded containers and process them
	**/
	public function locateprocess(locate:Dynamic, process:Dynamic):Dynamic;
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