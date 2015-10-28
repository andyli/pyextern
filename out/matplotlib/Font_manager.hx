/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.font_manager") extern class Font_manager {
	static public function OSXInstalledFonts(?directories:Dynamic = null, ?fontext:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function afmFontProperty(fontpath:Dynamic, font:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function createFontList(fontfiles:Dynamic, ?fontext:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function findSystemFonts(?fontpaths:Dynamic = null, ?fontext:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function findfont(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_fontconfig_fonts(?fontext:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_fontext_synonyms(fontext:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_opentype_cff_font(filename:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function list_fonts(directory:Dynamic, extensions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pickle_dump(data:Dynamic, filename:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pickle_load(filename:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ttfFontProperty(font:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ttfdict_to_fnames(d:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function weight_as_number(weight:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function win32FontDirectory(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function win32InstalledFonts(?directory:Dynamic = null, ?fontext:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}