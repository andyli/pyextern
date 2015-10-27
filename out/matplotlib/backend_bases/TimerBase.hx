/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:native("matplotlib.backend_bases.TimerBase") extern class TimerBase {
	public function add_callback(args:haxe.extern.Rest<Dynamic>):Void;
	public var interval : Dynamic;
	public function remove_callback(args:haxe.extern.Rest<Dynamic>):Void;
	public var single_shot : Dynamic;
	public function start(?interval:Dynamic = null):Void;
	public function stop():Void;
}