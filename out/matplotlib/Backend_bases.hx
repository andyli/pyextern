/* This file is generated, do not edit! */
package matplotlib;
@:native("matplotlib.backend_bases") extern class Backend_bases {
	static public function get_registered_canvas_class(format:Dynamic):Void;
	static public function key_press_handler(event:Dynamic, canvas:Dynamic, ?toolbar:Dynamic = null):Void;
	static public function register_backend(format:Dynamic, backend:Dynamic, ?description:Dynamic = null):Void;
}