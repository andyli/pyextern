/* This file is generated, do not edit! */
package matplotlib;
@:native("matplotlib.font_manager") extern class Font_manager {
	static public function OSXInstalledFonts(?directories:Dynamic = null, ?fontext:Dynamic):Void;
	static public function afmFontProperty(fontpath:Dynamic, font:Dynamic):Void;
	static public function createFontList(fontfiles:Dynamic, ?fontext:Dynamic):Void;
	static public function findSystemFonts(?fontpaths:Dynamic = null, ?fontext:Dynamic):Void;
	static public function findfont(args:haxe.extern.Rest<Dynamic>):Void;
	static public function get_fontconfig_fonts(?fontext:Dynamic):Void;
	static public function get_fontext_synonyms(fontext:Dynamic):Void;
	static public function is_opentype_cff_font(filename:Dynamic):Void;
	static public function list_fonts(directory:Dynamic, extensions:Dynamic):Void;
	static public function pickle_dump(data:Dynamic, filename:Dynamic):Void;
	static public function pickle_load(filename:Dynamic):Void;
	static public function ttfFontProperty(font:Dynamic):Void;
	static public function ttfdict_to_fnames(d:Dynamic):Void;
	static public function weight_as_number(weight:Dynamic):Void;
	static public function win32FontDirectory():Void;
	static public function win32InstalledFonts(?directory:Dynamic = null, ?fontext:Dynamic):Void;
}