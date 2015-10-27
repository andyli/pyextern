/* This file is generated, do not edit! */
package matplotlib;
@:native("matplotlib") extern class Matplotlib {
	static public function use(arg:Dynamic, ?warn:Dynamic = true, ?force:Dynamic = false):Void;
	static public function get_backend():Void;
	static public function rcParams(args:haxe.extern.Rest<Dynamic>):Void;
	static public function rc(args:haxe.extern.Rest<Dynamic>):Void;
	static public function matplotlib_fname():Void;
	static public function rc_params(?fail_on_error:Dynamic = false):Void;
	static public function rc_params_from_file(fname:Dynamic, ?fail_on_error:Dynamic = false, ?use_default_template:Dynamic = true):Void;
}