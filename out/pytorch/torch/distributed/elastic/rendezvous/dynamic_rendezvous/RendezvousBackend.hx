/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.dynamic_rendezvous;
@:pythonImport("torch.distributed.elastic.rendezvous.dynamic_rendezvous", "RendezvousBackend") extern class RendezvousBackend {
	static public var __abstractmethods__ : Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Gets the rendezvous state.
		
		Returns:
		    A tuple of the encoded rendezvous state and its fencing token or
		    ``None`` if no state is found in the backend.
		
		Raises:
		    RendezvousConnectionError:
		        The connection to the backend has failed.
		    RendezvousStateError:
		        The rendezvous state is corrupt.
	**/
	public function get_state():Dynamic;
	/**
		Gets the name of the backend.
	**/
	public var name : Dynamic;
	/**
		Sets the rendezvous state.
		
		The new rendezvous state is set conditionally:
		
		  - If the specified ``token`` matches the fencing token stored in the
		    backend, the state will be updated. The new state will be returned
		    to the caller along with its fencing token.
		  - If the specified ``token`` does not match the fencing token stored
		    in the backend, the state won't be updated; instead the existing
		    state along with its fencing token will be returned to the caller.
		  - If the specified ``token`` is ``None``, the new state will be set
		    only if there is no existing state in the backend. Either the new
		    state or the existing state along with its fencing token will be
		    returned to the caller.
		
		Args:
		    state:
		        The encoded rendezvous state.
		    token:
		        An optional fencing token that was retrieved by a previous call
		        to :py:meth:`get_state` or ``set_state()``.
		
		Returns:
		    A tuple of the serialized rendezvous state, its fencing token, and
		    a boolean value indicating whether our set attempt succeeded.
		
		Raises:
		    RendezvousConnectionError:
		        The connection to the backend has failed.
		    RendezvousStateError:
		        The rendezvous state is corrupt.
	**/
	public function set_state(state:Dynamic, ?token:Dynamic):Dynamic;
}