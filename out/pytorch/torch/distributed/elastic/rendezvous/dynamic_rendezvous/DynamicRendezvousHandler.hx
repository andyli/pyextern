/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.dynamic_rendezvous;
@:pythonImport("torch.distributed.elastic.rendezvous.dynamic_rendezvous", "DynamicRendezvousHandler") extern class DynamicRendezvousHandler {
	static public var __abstractmethods__ : Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(node:Dynamic, settings:Dynamic, backend_name:Dynamic, store:Dynamic, state_holder:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(node:Dynamic, settings:Dynamic, backend_name:Dynamic, store:Dynamic, state_holder:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	public function _close():Dynamic;
	public function _get_deadline(timeout:Dynamic):Dynamic;
	public function _get_store():Dynamic;
	public function _get_world():Dynamic;
	public function _keep_alive():Dynamic;
	static public function _keep_alive_weak(weak_self:Dynamic):Dynamic;
	static public var _node_desc_generator : Dynamic;
	public function _record(message:Dynamic, ?node_state:Dynamic, ?rank:Dynamic):Dynamic;
	public function _start_heartbeats():Dynamic;
	public function _stop_heartbeats():Dynamic;
	/**
		Creates a new :py:class:`DynamicRendezvousHandler`.
		
		Args:
		    run_id:
		        The run id of the rendezvous.
		    store:
		        The C10d store to return as part of the rendezvous.
		    backend:
		        The backend to use to hold the rendezvous state.
		    min_nodes:
		        The minimum number of nodes to admit to the rendezvous.
		    max_nodes:
		        The maximum number of nodes to admit to the rendezvous.
		    timeout:
		        The timeout configuration of the rendezvous.
	**/
	static public function from_backend(run_id:Dynamic, store:Dynamic, backend:Dynamic, min_nodes:Dynamic, max_nodes:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		See base class.
	**/
	public function get_backend():Dynamic;
	/**
		See base class.
	**/
	public function get_run_id():Dynamic;
	/**
		See base class.
	**/
	public function is_closed():Dynamic;
	/**
		See base class.
	**/
	public function next_rendezvous():Dynamic;
	/**
		See base class.
	**/
	public function num_nodes_waiting():Dynamic;
	/**
		See base class.
	**/
	public function set_closed():Dynamic;
	/**
		Gets the settings of the rendezvous.
	**/
	public var settings : Dynamic;
	/**
		See base class.
	**/
	public function shutdown():Dynamic;
}