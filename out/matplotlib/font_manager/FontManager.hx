/* This file is generated, do not edit! */
package matplotlib.font_manager;
@:native("matplotlib.font_manager.FontManager") extern class FontManager {
	public function findfont(prop:Dynamic, ?fontext:Dynamic, ?directory:Dynamic = null, ?fallback_to_default:Dynamic = true, ?rebuild_if_missing:Dynamic = true):Void;
	static public function get_default_size():Void;
	public function get_default_weight():Void;
	public function score_family(families:Dynamic, family2:Dynamic):Void;
	public function score_size(size1:Dynamic, size2:Dynamic):Void;
	public function score_stretch(stretch1:Dynamic, stretch2:Dynamic):Void;
	public function score_style(style1:Dynamic, style2:Dynamic):Void;
	public function score_variant(variant1:Dynamic, variant2:Dynamic):Void;
	public function score_weight(weight1:Dynamic, weight2:Dynamic):Void;
	public function set_default_weight(weight:Dynamic):Void;
	public function update_fonts(filenames:Dynamic):Void;
}