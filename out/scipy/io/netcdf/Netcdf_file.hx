/* This file is generated, do not edit! */
package scipy.io.netcdf;
@:pythonImport("scipy.io.netcdf", "netcdf_file") extern class Netcdf_file {
	public function close(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function createDimension(name:Dynamic, length:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function createVariable(name:Dynamic, type:Dynamic, dimensions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function flush(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sync(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}