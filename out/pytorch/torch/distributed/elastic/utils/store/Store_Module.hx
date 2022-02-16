/* This file is generated, do not edit! */
package torch.distributed.elastic.utils.store;
@:pythonImport("torch.distributed.elastic.utils.store") extern class Store_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		A global lock between agents.
		
		Note: Since the data is not removed from the store, the barrier can be used
		    once per unique ``key_prefix``.
	**/
	static public function barrier(store:Dynamic, rank:Dynamic, world_size:Dynamic, key_prefix:Dynamic, ?barrier_timeout:Dynamic):Dynamic;
	/**
		Given a store and a prefix, the method goes through the array of keys
		of the following format: ``{prefix}{idx}``, where idx is in a range
		from 0 to size, and tries to retrieve the data.
		
		Usage
		
		::
		
		 values = get_all(store, 'torchelastic/data', 3)
		 value1 = values[0] # retrieves the data for key torchelastic/data0
		 value2 = values[1] # retrieves the data for key torchelastic/data1
		 value3 = values[2] # retrieves the data for key torchelastic/data2
	**/
	static public function get_all(store:Dynamic, prefix:Dynamic, size:Dynamic):Dynamic;
	/**
		Synchronizes ``world_size`` agents between each other using the underlying c10d store.
		The ``data`` will be available on each of the agents.
		
		Note: The data on the path is not deleted, as a result there can be stale data if
		    you use the same key_prefix twice.
	**/
	static public function synchronize(store:Dynamic, data:Dynamic, rank:Dynamic, world_size:Dynamic, key_prefix:Dynamic, ?barrier_timeout:Dynamic):Dynamic;
}