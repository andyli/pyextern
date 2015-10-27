/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:native("matplotlib.backend_bases.FigureManagerBase") extern class FigureManagerBase {
	public function destroy():Void;
	public function full_screen_toggle():Void;
	public function get_window_title():Void;
	public function key_press(event:Dynamic):Void;
	public var key_press_handler_id : Dynamic;
	public function resize(w:Dynamic, h:Dynamic):Void;
	public function set_window_title(title:Dynamic):Void;
	public function show():Void;
	public function show_popup(msg:Dynamic):Void;
}