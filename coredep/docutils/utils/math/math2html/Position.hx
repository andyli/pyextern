/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "Position") extern class Position {
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
		Advance the position and return the next character.
	**/
	public function __next__():Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Check for a Unicode byte mark and skip it.
	**/
	public function checkbytemark():Dynamic;
	/**
		Check for a string at the given position.
	**/
	public function checkfor(string:Dynamic):Dynamic;
	/**
		Check for a string in lower case.
	**/
	public function checkforlower(string:Dynamic):Dynamic;
	/**
		Check for a string at the given position; if there, skip it
	**/
	public function checkskip(string:Dynamic):Dynamic;
	/**
		Return the current character.
	**/
	public function current():Dynamic;
	/**
		Show an error message and the position identifier.
	**/
	public function error(message:Dynamic):Dynamic;
	/**
		Extract the next string of the given length, or None if not enough text,
	**/
	public function extract(length:Dynamic):Dynamic;
	/**
		Find out if the current text has finished.
	**/
	public function finished():Dynamic;
	/**
		Glob a bit of text that satisfies a check on the current char.
	**/
	public function glob(currentcheck:Dynamic):Dynamic;
	/**
		Glob a bit of alpha text
	**/
	public function globalpha():Dynamic;
	/**
		Glob a bit of text up until (excluding) any excluded character.
	**/
	public function globexcluding(excluded:Dynamic):Dynamic;
	/**
		Glob alphanumeric and _ symbols.
	**/
	public function globidentifier():Dynamic;
	/**
		Glob a bit of text up to (including) the magic char.
	**/
	public function globincluding(magicchar:Dynamic):Dynamic;
	/**
		Glob a row of digits.
	**/
	public function globnumber():Dynamic;
	/**
		Glob a value: any symbols but brackets.
	**/
	public function globvalue():Dynamic;
	/**
		Return an identifier for the current position.
	**/
	public function identifier():Dynamic;
	/**
		Return if the current character is alphanumeric or _.
	**/
	public function isidentifier():Dynamic;
	/**
		Find out if we are out of the position yet.
	**/
	public function isout():Dynamic;
	/**
		Return if the current character is a value character:
	**/
	public function isvalue():Dynamic;
	static public var leavepending : Dynamic;
	/**
		Return the next ending in the queue.
	**/
	public function nextending():Dynamic;
	/**
		Pop the ending found at the current position
	**/
	public function popending(?expected:Dynamic):Dynamic;
	/**
		Push a new ending to the bottom
	**/
	public function pushending(ending:Dynamic, ?optional:Dynamic):Dynamic;
	/**
		Skip a string
	**/
	public function skip(string:Dynamic):Dynamic;
	/**
		Return the current character and skip it.
	**/
	public function skipcurrent():Dynamic;
	/**
		Skip all whitespace at current position.
	**/
	public function skipspace():Dynamic;
}