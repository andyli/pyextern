/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "FontFunction") extern class FontFunction {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		The formula bit type can be 'alpha', 'number', 'font'.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		The formula bit type can be 'alpha', 'number', 'font'.
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get a string representation
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Add any kind of formula bit already processed
	**/
	public function add(bit:Dynamic):Dynamic;
	static public var begin : Dynamic;
	/**
		Return a copy of itself.
	**/
	public function clone():Dynamic;
	static public var commandmap : Dynamic;
	/**
		Compute the size of the bit as the max of the sizes of all contents.
	**/
	public function computesize():Dynamic;
	/**
		Find the current command.
	**/
	public function detect(pos:Dynamic):Dynamic;
	/**
		Check for an empty command: look for command disguised as ending.
		Special case against '{ \{ \} }' situation.
	**/
	public function emptycommand(pos:Dynamic):Dynamic;
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
		Extract the command from elyxer.the current position.
	**/
	public function extractcommand(pos:Dynamic):Dynamic;
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
	static public var original : Dynamic;
	static public var parent : Dynamic;
	/**
		Parse a function with one parameter
	**/
	public function parsebit(pos:Dynamic):Dynamic;
	/**
		Parse a given command type.
	**/
	public function parsecommandtype(command:Dynamic, type:Dynamic, pos:Dynamic):Dynamic;
	/**
		Parse a literal bracket.
	**/
	public function parseliteral(pos:Dynamic):Dynamic;
	/**
		Parse a parameter at the current position
	**/
	public function parseparameter(pos:Dynamic):Dynamic;
	/**
		Parse a square bracket
	**/
	public function parsesquare(pos:Dynamic):Dynamic;
	/**
		Parse a square bracket literally.
	**/
	public function parsesquareliteral(pos:Dynamic):Dynamic;
	/**
		Parse a text parameter.
	**/
	public function parsetext(pos:Dynamic):Dynamic;
	/**
		Parse the Greek \up command..
	**/
	public function parseupgreek(command:Dynamic, pos:Dynamic):Dynamic;
	/**
		Parse the command type once we have the command.
	**/
	public function parsewithcommand(command:Dynamic, pos:Dynamic):Dynamic;
	static public var partkey : Dynamic;
	/**
		Simplify if possible using a single character.
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
		Set the command in the bit
	**/
	public function setcommand(command:Dynamic):Dynamic;
	/**
		Set the internal formula factory.
	**/
	public function setfactory(factory:Dynamic):Dynamic;
	static public var simplified : Dynamic;
	/**
		Try to simplify to a single character.
	**/
	public function simplifyifpossible():Dynamic;
	static public var size : Dynamic;
	/**
		Skip a string and add it to the original formula
	**/
	public function skiporiginal(string:Dynamic, pos:Dynamic):Dynamic;
	static public var start : Dynamic;
	/**
		Show in a tree
	**/
	public function tree(?level:Dynamic):Dynamic;
	static public var type : Dynamic;
	static public var types : Dynamic;
}