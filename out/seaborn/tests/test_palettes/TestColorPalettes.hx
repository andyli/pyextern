/* This file is generated, do not edit! */
package seaborn.tests.test_palettes;
@:pythonImport("seaborn.tests.test_palettes", "TestColorPalettes") extern class TestColorPalettes {
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	public function test_as_hex():Dynamic;
	public function test_bad_palette_colors():Dynamic;
	public function test_bad_palette_name():Dynamic;
	public function test_big_palette_context():Dynamic;
	public function test_blend_palette():Dynamic;
	public function test_cbrewer_qual():Dynamic;
	public function test_color_codes():Dynamic;
	public function test_crayon_palette():Dynamic;
	public function test_cubehelix_against_matplotlib():Dynamic;
	public function test_cubehelix_cmap():Dynamic;
	public function test_cubehelix_n_colors():Dynamic;
	public function test_cubehelix_reverse():Dynamic;
	public function test_current_palette():Dynamic;
	public function test_dark_palette():Dynamic;
	public function test_hls_palette():Dynamic;
	public function test_hls_values():Dynamic;
	public function test_husl_palette():Dynamic;
	public function test_husl_values():Dynamic;
	public function test_light_palette():Dynamic;
	public function test_mpl_dark_palette():Dynamic;
	public function test_mpl_palette():Dynamic;
	public function test_mpl_reversal():Dynamic;
	public function test_palette_context():Dynamic;
	public function test_palette_cycles():Dynamic;
	public function test_palette_desat():Dynamic;
	public function test_palette_is_list_of_tuples():Dynamic;
	public function test_preserved_palette_length():Dynamic;
	public function test_rgb_from_hls():Dynamic;
	public function test_rgb_from_husl():Dynamic;
	public function test_rgb_from_xkcd():Dynamic;
	public function test_seaborn_palettes():Dynamic;
	public function test_terrible_palette_name():Dynamic;
	public function test_xkcd_palette():Dynamic;
}