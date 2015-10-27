/* This file is generated, do not edit! */
package scipy.io;
@:native("scipy.io.FortranFile") extern class FortranFile {
	public function close():Void;
	public function read_ints(?dtype:Dynamic):Dynamic;
	public function read_reals(?dtype:Dynamic):Dynamic;
	public function read_record(?dtype:Dynamic = null):Dynamic;
	public function write_record(s:Dynamic):Void;
}