/* This file is generated, do not edit! */
package pandas.io.formats.latex;
@:pythonImport("pandas.io.formats.latex", "LongTableBuilder") extern class LongTableBuilder {
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
	public function ___init__(formatter:Dynamic, ?column_format:Dynamic, ?multicolumn:Dynamic, ?multicolumn_format:Dynamic, ?multirow:Dynamic, ?caption:Dynamic, ?short_caption:Dynamic, ?label:Dynamic, ?position:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(formatter:Dynamic, ?column_format:Dynamic, ?multicolumn:Dynamic, ?multicolumn_format:Dynamic, ?multirow:Dynamic, ?caption:Dynamic, ?short_caption:Dynamic, ?label:Dynamic, ?position:Dynamic):Void;
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
	public function _caption_and_label():Dynamic;
	/**
		Caption macro, extracted from self.caption.
		
		With short caption:
		    \caption[short_caption]{caption_string}.
		
		Without short caption:
		    \caption{caption_string}.
	**/
	public var _caption_macro : Dynamic;
	/**
		Create iterator over header or body of the table.
		
		Parameters
		----------
		over : {'body', 'header'}
		    Over what to iterate.
		
		Returns
		-------
		RowStringIterator
		    Iterator over body or header.
	**/
	public function _create_row_iterator(over:Dynamic):Dynamic;
	public function _is_separator_required():Dynamic;
	/**
		Label macro, extracted from self.label, like \label{ref}.
	**/
	public var _label_macro : Dynamic;
	/**
		Position macro, extracted from self.position, like [h].
	**/
	public var _position_macro : Dynamic;
	/**
		Select proper iterator over table rows.
	**/
	public function _select_iterator(over:Dynamic):Dynamic;
	/**
		Bottom level separator.
	**/
	public var bottom_separator : Dynamic;
	/**
		Beginning of the environment.
	**/
	public var env_begin : Dynamic;
	/**
		Environment body.
	**/
	public var env_body : Dynamic;
	/**
		End of the environment.
	**/
	public var env_end : Dynamic;
	/**
		String representation of LaTeX table.
	**/
	public function get_result():Dynamic;
	/**
		Header lines.
	**/
	public var header : Dynamic;
	/**
		Middle level separator.
	**/
	public var middle_separator : Dynamic;
	/**
		Top level separator.
	**/
	public var top_separator : Dynamic;
}