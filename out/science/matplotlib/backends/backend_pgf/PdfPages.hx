/* This file is generated, do not edit! */
package matplotlib.backends.backend_pgf;
@:pythonImport("matplotlib.backends.backend_pgf", "PdfPages") extern class PdfPages {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_val:Dynamic, exc_tb:Dynamic):Dynamic;
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
		Create a new PdfPages object.
		
		Parameters
		----------
		filename : str or path-like
		    Plots using `PdfPages.savefig` will be written to a file at this
		    location. Any older file with the same name is overwritten.
		
		keep_empty : bool, default: True
		    If set to False, then empty pdf files will be deleted automatically
		    when closed.
		
		metadata : dict, optional
		    Information dictionary object (see PDF reference section 10.2.1
		    'Document Information Dictionary'), e.g.:
		    ``{'Creator': 'My software', 'Author': 'Me', 'Title': 'Awesome'}``.
		
		    The standard keys are 'Title', 'Author', 'Subject', 'Keywords',
		    'Creator', 'Producer', 'CreationDate', 'ModDate', and
		    'Trapped'. Values have been predefined for 'Creator', 'Producer'
		    and 'CreationDate'. They can be removed by setting them to `None`.
		
		    Note that some versions of LaTeX engines may ignore the 'Producer'
		    key and set it to themselves.
	**/
	@:native("__init__")
	public function ___init__(filename:Dynamic, ?keep_empty:Dynamic, ?metadata:Dynamic):Dynamic;
	/**
		Create a new PdfPages object.
		
		Parameters
		----------
		filename : str or path-like
		    Plots using `PdfPages.savefig` will be written to a file at this
		    location. Any older file with the same name is overwritten.
		
		keep_empty : bool, default: True
		    If set to False, then empty pdf files will be deleted automatically
		    when closed.
		
		metadata : dict, optional
		    Information dictionary object (see PDF reference section 10.2.1
		    'Document Information Dictionary'), e.g.:
		    ``{'Creator': 'My software', 'Author': 'Me', 'Title': 'Awesome'}``.
		
		    The standard keys are 'Title', 'Author', 'Subject', 'Keywords',
		    'Creator', 'Producer', 'CreationDate', 'ModDate', and
		    'Trapped'. Values have been predefined for 'Creator', 'Producer'
		    and 'CreationDate'. They can be removed by setting them to `None`.
		
		    Note that some versions of LaTeX engines may ignore the 'Producer'
		    key and set it to themselves.
	**/
	public function new(filename:Dynamic, ?keep_empty:Dynamic, ?metadata:Dynamic):Void;
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
	public var _file : Dynamic;
	public var _info_dict : Dynamic;
	public var _metadata : Dynamic;
	public var _n_figures : Dynamic;
	public var _output_name : Dynamic;
	public function _run_latex():Dynamic;
	public function _write_header(width_inches:Dynamic, height_inches:Dynamic):Dynamic;
	/**
		Finalize this object, running LaTeX in a temporary directory
		and moving the final pdf file to *filename*.
	**/
	public function close():Dynamic;
	/**
		Return the current number of pages in the multipage pdf file.
	**/
	public function get_pagecount():Dynamic;
	public var keep_empty : Dynamic;
	/**
		Save a `.Figure` to this file as a new page.
		
		Any other keyword arguments are passed to `~.Figure.savefig`.
		
		Parameters
		----------
		figure : `.Figure` or int, default: the active figure
		    The figure, or index of the figure, that is saved to the file.
	**/
	public function savefig(?figure:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}