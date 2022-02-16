/* This file is generated, do not edit! */
package pandas.io.formats.format;
@:pythonImport("pandas.io.formats.format", "DataFrameRenderer") extern class DataFrameRenderer {
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
	public function ___init__(fmt:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(fmt:Dynamic):Void;
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
		Render dataframe as comma-separated file.
	**/
	public function to_csv(?path_or_buf:Dynamic, ?encoding:Dynamic, ?sep:Dynamic, ?columns:Dynamic, ?index_label:Dynamic, ?mode:Dynamic, ?compression:Dynamic, ?quoting:Dynamic, ?quotechar:Dynamic, ?line_terminator:Dynamic, ?chunksize:Dynamic, ?date_format:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?errors:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Render a DataFrame to a html table.
		
		Parameters
		----------
		buf : str, path object, file-like object, or None, default None
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a string ``write()`` function. If None, the result is
		    returned as a string.
		encoding : str, default “utf-8”
		    Set character encoding.
		classes : str or list-like
		    classes to include in the `class` attribute of the opening
		    ``<table>`` tag, in addition to the default "dataframe".
		notebook : {True, False}, optional, default False
		    Whether the generated HTML is for IPython Notebook.
		border : int
		    A ``border=border`` attribute is included in the opening
		    ``<table>`` tag. Default ``pd.options.display.html.border``.
		table_id : str, optional
		    A css id is included in the opening `<table>` tag if specified.
		render_links : bool, default False
		    Convert URLs to HTML links.
	**/
	public function to_html(?buf:Dynamic, ?encoding:Dynamic, ?classes:Dynamic, ?notebook:Dynamic, ?border:Dynamic, ?table_id:Dynamic, ?render_links:Dynamic):Dynamic;
	/**
		Render a DataFrame to a LaTeX tabular/longtable environment output.
	**/
	public function to_latex(?buf:Dynamic, ?column_format:Dynamic, ?longtable:Dynamic, ?encoding:Dynamic, ?multicolumn:Dynamic, ?multicolumn_format:Dynamic, ?multirow:Dynamic, ?caption:Dynamic, ?label:Dynamic, ?position:Dynamic):Dynamic;
	/**
		Render a DataFrame to a console-friendly tabular output.
		
		Parameters
		----------
		buf : str, path object, file-like object, or None, default None
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a string ``write()`` function. If None, the result is
		    returned as a string.
		encoding: str, default “utf-8”
		    Set character encoding.
		line_width : int, optional
		    Width to wrap a line in characters.
	**/
	public function to_string(?buf:Dynamic, ?encoding:Dynamic, ?line_width:Dynamic):Dynamic;
}