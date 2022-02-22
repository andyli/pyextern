/* This file is generated, do not edit! */
package pyarrow.plasma;
@:pythonImport("pyarrow.plasma") extern class Plasma_Module {
	static public var TF_PLASMA_OP_PATH : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function build_plasma_tensorflow_op():Dynamic;
	/**
		connect(store_socket_name, int num_retries=-1)
		
		Return a new PlasmaClient that is connected a plasma store and
		optionally a manager.
		
		Parameters
		----------
		store_socket_name : str
		    Name of the socket the plasma store is listening at.
		num_retries : int, default -1
		    Number of times to try to connect to plasma store. Default value of -1
		    uses the default (50)
	**/
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function load_plasma_tensorflow_op():Dynamic;
	/**
		Start a plasma store process.
		
		Parameters
		----------
		plasma_store_memory : int
		    Capacity of the plasma store in bytes.
		use_valgrind : bool
		    True if the plasma store should be started inside of valgrind. If this
		    is True, use_profiler must be False.
		use_profiler : bool
		    True if the plasma store should be started inside a profiler. If this
		    is True, use_valgrind must be False.
		plasma_directory : str
		    Directory where plasma memory mapped files will be stored.
		use_hugepages : bool
		    True if the plasma store should use huge pages.
		external_store : str
		    External store to use for evicted objects.
		
		Returns
		-------
		result : (str, subprocess.Popen)
		    A tuple of the name of the plasma store socket and the process ID of
		    the plasma store process.
	**/
	static public function start_plasma_store(plasma_store_memory:Dynamic, ?use_valgrind:Dynamic, ?use_profiler:Dynamic, ?plasma_directory:Dynamic, ?use_hugepages:Dynamic, ?external_store:Dynamic):Dynamic;
	static public var tf_plasma_op : Dynamic;
}