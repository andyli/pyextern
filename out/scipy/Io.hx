/* This file is generated, do not edit! */
package scipy;
@:pythonImport("scipy.io") extern class Io {
	static public function loadmat(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mminfo(source:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mmread(source:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mmwrite(target:Dynamic, a:Dynamic, ?comment:Dynamic, ?field:Dynamic = null, ?precision:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function readsav(file_name:Dynamic, ?idict:Dynamic = null, ?python_dict:Dynamic = false, ?uncompressed_file_name:Dynamic = null, ?verbose:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function savemat(file_name:Dynamic, mdict:Dynamic, ?appendmat:Dynamic = true, ?format:Dynamic, ?long_field_names:Dynamic = false, ?do_compression:Dynamic = false, ?oned_as:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function whosmat(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}