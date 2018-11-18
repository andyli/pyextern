/* This file is generated, do not edit! */
package matplotlib.dviread;
@:pythonImport("matplotlib.dviread", "Vf") extern class Vf {
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
		Context manager enter method, does nothing.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Context manager exit method, closes the underlying file if it is open.
	**/
	public function __exit__(etype:Dynamic, evalue:Dynamic, etrace:Dynamic):Dynamic;
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
	public function __getitem__(code:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Read the data from the file named *filename* and convert
		TeX's internal units to units of *dpi* per inch.
		*dpi* only sets the units and does not limit the resolution.
		Use None to return TeX's internal units.
	**/
	@:native("__init__")
	public function ___init__(filename:Dynamic):Dynamic;
	/**
		Read the data from the file named *filename* and convert
		TeX's internal units to units of *dpi* per inch.
		*dpi* only sets the units and does not limit the resolution.
		Use None to return TeX's internal units.
	**/
	public function new(filename:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Iterate through the pages of the file.
		
		Yields
		------
		Page
		    Details of all the text and box objects on the page.
		    The Page tuple contains lists of Text and Box tuples and
		    the page dimensions, and the Text and Box tuples contain
		    coordinates transformed into a standard Cartesian
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function _dispatch(min:Dynamic, ?max:Dynamic, ?state:Dynamic, ?args:Dynamic):Dynamic;
	public function _down(a:Dynamic):Dynamic;
	public function _down_y(new_y:Dynamic):Dynamic;
	public function _down_z(new_z:Dynamic):Dynamic;
	static public var _dtable : Dynamic;
	public function _eop(_:Dynamic):Dynamic;
	public function _finalize_packet(packet_char:Dynamic, packet_width:Dynamic):Dynamic;
	public function _fnt_def(k:Dynamic, c:Dynamic, s:Dynamic, d:Dynamic, a:Dynamic, l:Dynamic):Dynamic;
	public function _fnt_def_real(k:Dynamic, c:Dynamic, s:Dynamic, d:Dynamic, a:Dynamic, l:Dynamic):Dynamic;
	public function _fnt_num(new_f:Dynamic):Dynamic;
	public function _fnt_num_immediate(k:Dynamic):Dynamic;
	public function _get_baseline(filename:Dynamic):Dynamic;
	public function _init_packet(pl:Dynamic):Dynamic;
	public function _malformed(offset:Dynamic):Dynamic;
	public function _nop(_:Dynamic):Dynamic;
	/**
		Output the text and boxes belonging to the most recent page.
		page = dvi._output()
	**/
	public function _output():Dynamic;
	public function _pop(_:Dynamic):Dynamic;
	public function _post(_:Dynamic):Dynamic;
	public function _post_post(_:Dynamic):Dynamic;
	public function _pre(i:Dynamic, x:Dynamic, cs:Dynamic, ds:Dynamic):Dynamic;
	public function _push(_:Dynamic):Dynamic;
	public function _put_char(char:Dynamic):Dynamic;
	public function _put_char_real(char:Dynamic):Dynamic;
	public function _put_rule(a:Dynamic, b:Dynamic):Dynamic;
	public function _put_rule_real(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Read one page from the file. Return True if successful,
		False if there were no more pages.
	**/
	public function _read():Dynamic;
	public function _right(b:Dynamic):Dynamic;
	public function _right_w(new_w:Dynamic):Dynamic;
	public function _right_x(new_x:Dynamic):Dynamic;
	public function _set_char(char:Dynamic):Dynamic;
	public function _set_char_immediate(char:Dynamic):Dynamic;
	public function _set_rule(a:Dynamic, b:Dynamic):Dynamic;
	public function _xxx(datalen:Dynamic):Dynamic;
	/**
		Close the underlying file if it is open.
	**/
	public function close():Dynamic;
}