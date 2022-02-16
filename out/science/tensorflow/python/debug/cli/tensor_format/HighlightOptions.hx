/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.tensor_format;
@:pythonImport("tensorflow.python.debug.cli.tensor_format", "HighlightOptions") extern class HighlightOptions {
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
		Constructor of HighlightOptions.
		
		Args:
		  criterion: (callable) A callable of the following signature:
		    def to_highlight(X):
		      # Args:
		      #   X: The tensor to highlight elements in.
		      #
		      # Returns:
		      #   (boolean ndarray) A boolean ndarray of the same shape as X
		      #   indicating which elements are to be highlighted (iff True).
		    This callable will be used as the argument of np.argwhere() to
		    determine which elements of the tensor are to be highlighted.
		  description: (str) Description of the highlight criterion embodied by
		    criterion.
		  font_attr: (str) Font attribute to be applied to the
		    highlighted elements.
	**/
	@:native("__init__")
	public function ___init__(criterion:Dynamic, ?description:Dynamic, ?font_attr:Dynamic):Dynamic;
	/**
		Constructor of HighlightOptions.
		
		Args:
		  criterion: (callable) A callable of the following signature:
		    def to_highlight(X):
		      # Args:
		      #   X: The tensor to highlight elements in.
		      #
		      # Returns:
		      #   (boolean ndarray) A boolean ndarray of the same shape as X
		      #   indicating which elements are to be highlighted (iff True).
		    This callable will be used as the argument of np.argwhere() to
		    determine which elements of the tensor are to be highlighted.
		  description: (str) Description of the highlight criterion embodied by
		    criterion.
		  font_attr: (str) Font attribute to be applied to the
		    highlighted elements.
	**/
	public function new(criterion:Dynamic, ?description:Dynamic, ?font_attr:Dynamic):Void;
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
}