/* This file is generated, do not edit! */
package torch.storage;
@:pythonImport("torch.storage") extern class Storage_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function Type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a copy of this object in CUDA memory.
		
		If this object is already in CUDA memory and on the correct device, then
		no copy is performed and the original object is returned.
		
		Args:
		    device (int): The destination GPU id. Defaults to the current device.
		    non_blocking (bool): If ``True`` and the source is in pinned memory,
		        the copy will be asynchronous with respect to the host. Otherwise,
		        the argument has no effect.
		    **kwargs: For compatibility, may contain the key ``async`` in place of
		        the ``non_blocking`` argument.
	**/
	static public function _cuda(self:Dynamic, ?device:Dynamic, ?non_blocking:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _load_from_bytes(b:Dynamic):Dynamic;
	/**
		Returns the type if `dtype` is not provided, else casts this object to
		the specified type.
		
		If this is already of the correct type, no copy is performed and the
		original object is returned.
		
		Args:
		    dtype (type or string): The desired type
		    non_blocking (bool): If ``True``, and the source is in pinned memory
		        and destination is on the GPU or vice versa, the copy is performed
		        asynchronously with respect to the host. Otherwise, the argument
		        has no effect.
		    **kwargs: For compatibility, may contain the key ``async`` in place of
		        the ``non_blocking`` argument. The ``async`` arg is deprecated.
	**/
	static public function _type(self:Dynamic, ?dtype:Dynamic, ?non_blocking:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}