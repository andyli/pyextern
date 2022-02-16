/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.registry;
@:pythonImport("torch.distributed.elastic.rendezvous.registry") extern class Registry_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _create_c10d_handler(params:Dynamic):Dynamic;
	static public function _create_etcd_handler(params:Dynamic):Dynamic;
	static public function _create_etcd_v2_handler(params:Dynamic):Dynamic;
	static public function _create_static_handler(params:Dynamic):Dynamic;
	static public function _register_default_handlers():Dynamic;
	/**
		Creates a new :py:class:`DynamicRendezvousHandler` from the specified
		parameters.
		
		Args:
		    store:
		        The C10d store to return as part of the rendezvous.
		    backend:
		        The backend to use to hold the rendezvous state.
		
		+-------------------+------------------------------------------------------+
		| Parameter         | Description                                          |
		+===================+======================================================+
		| join_timeout      | The total time, in seconds, within which the         |
		|                   | rendezvous is expected to complete. Defaults to 600  |
		|                   | seconds.                                             |
		+-------------------+------------------------------------------------------+
		| last_call_timeout | An additional wait amount, in seconds, before        |
		|                   | completing the rendezvous once the minimum number of |
		|                   | nodes has been reached. Defaults to 30 seconds.      |
		+-------------------+------------------------------------------------------+
		| close_timeout     | The time, in seconds, within which the rendezvous is |
		|                   | expected to close after a call to                    |
		|                   | :py:meth:`RendezvousHandler.set_closed` or           |
		|                   | :py:meth:`RendezvousHandler.shutdown`. Defaults to   |
		|                   | 30 seconds.                                          |
		+-------------------+------------------------------------------------------+
	**/
	static public function create_handler(store:Dynamic, backend:Dynamic, params:Dynamic):Dynamic;
	/**
		This method is used to obtain a reference to a :py:class`RendezvousHandler`.
		Custom rendezvous handlers can be registered by
		
		::
		
		  from torch.distributed.elastid.rendezvous import rendezvous_handler_registry
		  from torch.distributed.elastic.rendezvous.registry import get_rendezvous_handler
		
		  def create_my_rdzv(params: RendezvousParameters):
		    return MyCustomRdzv(params)
		
		  rendezvous_handler_registry.register("my_rdzv_backend_name", create_my_rdzv)
		
		  my_rdzv_handler = get_rendezvous_handler("my_rdzv_backend_name", RendezvousParameters)
	**/
	static public function get_rendezvous_handler(params:Dynamic):Dynamic;
	static public var handler_registry : Dynamic;
}