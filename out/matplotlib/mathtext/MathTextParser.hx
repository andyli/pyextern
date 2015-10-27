/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:native("matplotlib.mathtext.MathTextParser") extern class MathTextParser {
	public function get_depth(texstr:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic):Void;
	public function parse(s:Dynamic, ?dpi:Dynamic, ?prop:Dynamic = null):Void;
	public function to_mask(texstr:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic):Void;
	public function to_png(filename:Dynamic, texstr:Dynamic, ?color:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic):Void;
	public function to_rgba(texstr:Dynamic, ?color:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic):Void;
}