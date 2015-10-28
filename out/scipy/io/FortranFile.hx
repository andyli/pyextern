/* This file is generated, do not edit! */
package scipy.io;
@:pythonImport("scipy.io", "FortranFile") extern class FortranFile {
	public function close(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function read_ints(?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function read_reals(?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function read_record(?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function write_record(s:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}