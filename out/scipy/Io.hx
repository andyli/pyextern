/* This file is generated, do not edit! */
package scipy;
@:native("scipy.io") extern class Io {
	static public function loadmat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mminfo(source:Dynamic):Dynamic;
	static public function mmread(source:Dynamic):Dynamic;
	static public function mmwrite(target:Dynamic, a:Dynamic, ?comment:Dynamic, ?field:Dynamic = null, ?precision:Dynamic = null):Void;
	static public function readsav(file_name:Dynamic, ?idict:Dynamic = null, ?python_dict:Dynamic = false, ?uncompressed_file_name:Dynamic = null, ?verbose:Dynamic = false):Dynamic;
	static public function savemat(file_name:Dynamic, mdict:Dynamic, ?appendmat:Dynamic = true, ?format:Dynamic, ?long_field_names:Dynamic = false, ?do_compression:Dynamic = false, ?oned_as:Dynamic):Void;
	static public function whosmat(args:haxe.extern.Rest<Dynamic>):Dynamic;
}