/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.sleep;
@:pythonImport("tensorflow.python.data.experimental.ops.sleep") extern class Sleep_Module {
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
		Sleeps for `sleep_microseconds` before producing each input element.
		
		Args:
		  sleep_microseconds: The number of microseconds to sleep before producing an
		    input element.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function sleep(sleep_microseconds:Dynamic):Dynamic;
}