/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext", "MathTextParser") extern class MathTextParser {
	public function get_depth(texstr:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function parse(s:Dynamic, ?dpi:Dynamic, ?prop:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_mask(texstr:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_png(filename:Dynamic, texstr:Dynamic, ?color:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_rgba(texstr:Dynamic, ?color:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}