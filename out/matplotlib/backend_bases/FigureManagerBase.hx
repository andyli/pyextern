/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases", "FigureManagerBase") extern class FigureManagerBase {
	public function destroy(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function full_screen_toggle(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_window_title(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function key_press(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var key_press_handler_id : Dynamic;
	public function resize(w:Dynamic, h:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_window_title(title:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function show(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function show_popup(msg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}