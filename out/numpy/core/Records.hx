/* This file is generated, do not edit! */
package numpy.core;
@:pythonImport("numpy.core.records") extern class Records {
	static public function array(obj:Dynamic, ?dtype:Dynamic = null, ?shape:Dynamic = null, ?offset:Dynamic, ?strides:Dynamic = null, ?formats:Dynamic = null, ?names:Dynamic = null, ?titles:Dynamic = null, ?aligned:Dynamic = false, ?byteorder:Dynamic = null, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fromarrays(arrayList:Dynamic, ?dtype:Dynamic = null, ?shape:Dynamic = null, ?formats:Dynamic = null, ?names:Dynamic = null, ?titles:Dynamic = null, ?aligned:Dynamic = false, ?byteorder:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fromfile(fd:Dynamic, ?dtype:Dynamic = null, ?shape:Dynamic = null, ?offset:Dynamic, ?formats:Dynamic = null, ?names:Dynamic = null, ?titles:Dynamic = null, ?aligned:Dynamic = false, ?byteorder:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fromrecords(recList:Dynamic, ?dtype:Dynamic = null, ?shape:Dynamic = null, ?formats:Dynamic = null, ?names:Dynamic = null, ?titles:Dynamic = null, ?aligned:Dynamic = false, ?byteorder:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fromstring(datastring:Dynamic, ?dtype:Dynamic = null, ?shape:Dynamic = null, ?offset:Dynamic, ?formats:Dynamic = null, ?names:Dynamic = null, ?titles:Dynamic = null, ?aligned:Dynamic = false, ?byteorder:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}