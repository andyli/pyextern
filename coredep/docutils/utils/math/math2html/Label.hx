/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "Label") extern class Label {
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
		Initialize the link, add target if configured.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize the link, add target if configured.
	**/
	public function new():Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var anchor : Dynamic;
	static public var begin : Dynamic;
	/**
		Complete the link.
	**/
	public function complete(text:Dynamic, ?anchor:Dynamic, ?url:Dynamic, ?type:Dynamic, ?title:Dynamic):Dynamic;
	/**
		Use the destination link to fill in the destination URL.
	**/
	public function computedestination():Dynamic;
	/**
		Create the label for a given key.
	**/
	public function create(text:Dynamic, key:Dynamic, ?type:Dynamic):Dynamic;
	static public var destination : Dynamic;
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
		Get the part key for the latest numbered container seen.
	**/
	public function findpartkey():Dynamic;
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
	static public var lastlayout : Dynamic;
	/**
		Search for all embedded containers and process them
	**/
	public function locateprocess(locate:Dynamic, process:Dynamic):Dynamic;
	static public var names : Dynamic;
	/**
		Get the numbered container for the label.
	**/
	public function numbered(container:Dynamic):Dynamic;
	static public var page : Dynamic;
	static public var parent : Dynamic;
	static public var partkey : Dynamic;
	/**
		Process a label container.
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
		Set another link as destination, and set its destination to this one.
	**/
	public function setmutualdestination(destination:Dynamic):Dynamic;
	static public var target : Dynamic;
	static public var title : Dynamic;
	/**
		Show in a tree
	**/
	public function tree(?level:Dynamic):Dynamic;
	static public var type : Dynamic;
	static public var url : Dynamic;
}