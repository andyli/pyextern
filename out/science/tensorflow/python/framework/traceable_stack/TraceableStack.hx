/* This file is generated, do not edit! */
package tensorflow.python.framework.traceable_stack;
@:pythonImport("tensorflow.python.framework.traceable_stack", "TraceableStack") extern class TraceableStack {
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
		Constructor.
		
		Args:
		  existing_stack: [TraceableObject, ...] If provided, this object will
		    set its new stack to a SHALLOW COPY of existing_stack.
	**/
	@:native("__init__")
	public function ___init__(?existing_stack:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  existing_stack: [TraceableObject, ...] If provided, this object will
		    set its new stack to a SHALLOW COPY of existing_stack.
	**/
	public function new(?existing_stack:Dynamic):Void;
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
		Return number of items on the stack, and used for truth-value testing.
	**/
	public function __len__():Dynamic;
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
		Return a copy of self referencing the same objects but in a new list.
		
		This method is implemented to support thread-local stacks.
		
		Returns:
		  TraceableStack with a new list that holds existing objects.
	**/
	public function copy():Dynamic;
	/**
		Return iterator over stored objects ordered newest to oldest.
	**/
	public function peek_objs():Dynamic;
	/**
		Return the most recent stored object.
	**/
	public function peek_top_obj():Dynamic;
	/**
		Return iterator over stored TraceableObjects ordered newest to oldest.
	**/
	public function peek_traceable_objs():Dynamic;
	/**
		Remove last-inserted object and return it, without filename/line info.
	**/
	public function pop_obj():Dynamic;
	/**
		Add object to the stack and record its filename and line information.
		
		Args:
		  obj: An object to store on the stack.
		  offset: Integer.  If 0, the caller's stack frame is used.  If 1,
		      the caller's caller's stack frame is used.
		
		Returns:
		  TraceableObject.SUCCESS if appropriate stack information was found,
		  TraceableObject.HEURISTIC_USED if the stack was smaller than expected,
		  and TraceableObject.FAILURE if the stack was empty.
	**/
	public function push_obj(obj:Dynamic, ?offset:Dynamic):Dynamic;
}