/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.skip.portal;
@:pythonImport("torch.distributed.pipeline.sync.skip.portal", "Portal") extern class Portal {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(tensor:Dynamic, tensor_life:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(tensor:Dynamic, tensor_life:Dynamic):Void;
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
	/**
		Creates a :class:`PortalBlue` which hides the underlying tensor from
		the autograd engine.
		
		Join the returning phony to the main lane of the autograd graph to
		assure the correct backpropagation::
		
		    PortalBlue --+
		                 |
		    ---------- Join --
	**/
	public function blue():Dynamic;
	public function check_tensor_life():Dynamic;
	/**
		Copies the hidden tensor by a :class:`PortalCopy`.
		
		Give a phony and use the returning phony to keep backpropagation::
		
		        +-- PortalCopy --+
		        |                |
		    -- Fork ---------- Join --
	**/
	public function copy(prev_stream:Dynamic, next_stream:Dynamic, phony:Dynamic):Dynamic;
	/**
		Creates a :class:`PortalOrange` which retrieves the hidden tensor
		without losing ability of backpropagation.
		
		Give a phony forked from the main lane of an autograd graph::
		
		        +-- PortalOrange --+
		        |                  |
		    -- Fork --------- f(a, b) --
	**/
	public function orange(phony:Dynamic):Dynamic;
	/**
		Stores a gradient into this portal.
	**/
	public function put_grad(grad:Dynamic):Dynamic;
	/**
		Stores a tensor into this portal.
	**/
	public function put_tensor(tensor:Dynamic, tensor_life:Dynamic):Dynamic;
	/**
		Retrieves and removes the underlying gradient. The gradient is
		always ephemeral.
	**/
	public function use_grad():Dynamic;
	/**
		Retrieves the underlying tensor and decreases the tensor  life. When
		the life becomes 0, it the tensor will be removed.
	**/
	public function use_tensor():Dynamic;
}