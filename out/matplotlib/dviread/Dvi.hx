/* This file is generated, do not edit! */
package matplotlib.dviread;
@:pythonImport("matplotlib.dviread", "Dvi") extern class Dvi {
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
		Initialize the object. This takes the filename as input and
		opens the file; actually reading the file happens when
		iterating through the pages of the file.
	**/
	@:native("__init__")
	public function ___init__(filename:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Iterate through the pages of the file.
		
		Returns (text, boxes) pairs, where:
		  text is a list of (x, y, fontnum, glyphnum, width) tuples
		  boxes is a list of (x, y, height, width) tuples
		
		The coordinates are transformed into a standard Cartesian
		coordinate system at the dpi value given when initializing.
		The coordinates are floating point numbers, but otherwise
		precision is not lost and coordinate values are not clipped to
		integers.
	**/
	public function __iter__():Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Read and return an integer argument *nbytes* long.
		Signedness is determined by the *signed* keyword.
	**/
	public function _arg(nbytes:Dynamic, ?signed:Dynamic):Dynamic;
	public function _bop(c0:Dynamic, c1:Dynamic, c2:Dynamic, c3:Dynamic, c4:Dynamic, c5:Dynamic, c6:Dynamic, c7:Dynamic, c8:Dynamic, c9:Dynamic, p:Dynamic):Dynamic;
	/**
		Based on the opcode *byte*, read the correct kinds of
		arguments from the dvi file and call the method implementing
		that opcode with those arguments.
	**/
	public function _dispatch(byte:Dynamic):Dynamic;
	public function _down(a:Dynamic):Dynamic;
	public function _down_y(new_y:Dynamic):Dynamic;
	public function _down_z(new_z:Dynamic):Dynamic;
	public function _eop():Dynamic;
	public function _fnt_def(k:Dynamic, c:Dynamic, s:Dynamic, d:Dynamic, a:Dynamic, l:Dynamic, n:Dynamic):Dynamic;
	public function _fnt_num(k:Dynamic):Dynamic;
	public function _get_baseline(filename:Dynamic):Dynamic;
	public function _nop():Dynamic;
	/**
		Output the text and boxes belonging to the most recent page.
		page = dvi._output()
	**/
	public function _output():Dynamic;
	public function _pop():Dynamic;
	public function _post():Dynamic;
	public function _post_post():Dynamic;
	public function _pre(i:Dynamic, num:Dynamic, den:Dynamic, mag:Dynamic, comment:Dynamic):Dynamic;
	public function _push():Dynamic;
	public function _put_char(char:Dynamic):Dynamic;
	public function _put_rule(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Read one page from the file. Return True if successful,
		False if there were no more pages.
	**/
	public function _read():Dynamic;
	public function _right(b:Dynamic):Dynamic;
	public function _right_w(new_w:Dynamic):Dynamic;
	public function _right_x(new_x:Dynamic):Dynamic;
	public function _set_char(char:Dynamic):Dynamic;
	public function _set_rule(a:Dynamic, b:Dynamic):Dynamic;
	public function _xxx(special:Dynamic):Dynamic;
	/**
		Close the underlying file if it is open.
	**/
	public function close():Dynamic;
}