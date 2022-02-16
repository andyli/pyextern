/* This file is generated, do not edit! */
package tensorflow.lite.python.metrics_wrapper.metrics_wrapper;
@:pythonImport("tensorflow.lite.python.metrics_wrapper.metrics_wrapper") extern class Metrics_wrapper_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns and clears the list of collected errors in ErrorCollector.
		
		The RetrieveCollectedErrors function in C++ returns a list of serialized proto
		messages. This function will convert them to ConverterErrorData instances.
		
		Returns:
		  A list of ConverterErrorData.
	**/
	static public function retrieve_collected_errors():Dynamic;
}