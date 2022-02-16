/* This file is generated, do not edit! */
package torch.distributed.algorithms.model_averaging.utils;
@:pythonImport("torch.distributed.algorithms.model_averaging.utils") extern class Utils_Module {
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Averages all the given parameters.
		For allreduce efficiency, all the parameters are flattened into a contiguous buffer.
		Thus, it requires extra memory of the same size as the given parameters.
	**/
	static public function average_parameters(params:Dynamic, process_group:Dynamic):Dynamic;
}