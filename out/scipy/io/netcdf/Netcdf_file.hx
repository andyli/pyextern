/* This file is generated, do not edit! */
package scipy.io.netcdf;
@:native("scipy.io.netcdf.netcdf_file") extern class Netcdf_file {
	public function close():Void;
	public function createDimension(name:Dynamic, length:Dynamic):Void;
	public function createVariable(name:Dynamic, type:Dynamic, dimensions:Dynamic):Dynamic;
	public function flush():Void;
	public function sync():Void;
}