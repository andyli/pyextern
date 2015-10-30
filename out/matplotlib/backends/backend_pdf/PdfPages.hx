/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf", "PdfPages") extern class PdfPages {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_val:Dynamic, exc_tb:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create a new PdfPages object.
		
		Parameters
		----------
		
		filename: str
		    Plots using :meth:`PdfPages.savefig` will be written to a file at
		    this location. The file is opened at once and any older file with
		    the same name is overwritten.
		keep_empty: bool, optional
		    If set to False, then empty pdf files will be deleted automatically
		    when closed.
	**/
	@:native("__init__")
	public function ___init__(filename:Dynamic, ?keep_empty:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _file : Dynamic;
	/**
		Finalize this object, making the underlying file a complete
		PDF file.
	**/
	public function close():Dynamic;
	/**
		Returns the current number of pages in the multipage pdf file.
	**/
	public function get_pagecount():Dynamic;
	/**
		Return a modifiable information dictionary object
		(see PDF reference section 10.2.1 'Document Information
		Dictionary').
	**/
	public function infodict():Dynamic;
	public var keep_empty : Dynamic;
	/**
		Saves a :class:`~matplotlib.figure.Figure` to this file as a new page.
		
		Any other keyword arguments are passed to
		:meth:`~matplotlib.figure.Figure.savefig`.
		
		Parameters
		----------
		
		figure: :class:`~matplotlib.figure.Figure` or int, optional
		    Specifies what figure is saved to file. If not specified, the
		    active figure is saved. If a :class:`~matplotlib.figure.Figure`
		    instance is provided, this figure is saved. If an int is specified,
		    the figure instance to save is looked up by number.
	**/
	public function savefig(?figure:Dynamic, kwargs:Dynamic):Dynamic;
}