/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.debugger_cli_common;
@:pythonImport("tensorflow.python.debug.cli.debugger_cli_common", "RichTextLines") extern class RichTextLines {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		Constructor of RichTextLines.
		
		Args:
		  lines: A list of str or a single str, representing text output to
		    screen. The latter case is for convenience when the text output is
		    single-line.
		  font_attr_segs: A map from 0-based row index to a list of 3-tuples.
		    It lists segments in each row that have special font attributes, such
		    as colors, that are not the default attribute. For example:
		    {1: [(0, 3, "red"), (4, 7, "green")], 2: [(10, 20, "yellow")]}
		
		    In each tuple, the 1st element is the start index of the segment. The
		    2nd element is the end index, in an "open interval" fashion. The 3rd
		    element is an object or a list of objects that represents the font
		    attribute. Colors are represented as strings as in the examples above.
		  annotations: A map from 0-based row index to any object for annotating
		    the row. A typical use example is annotating rows of the output as
		    indices in a multi-dimensional tensor. For example, consider the
		    following text representation of a 3x2x2 tensor:
		      [[[0, 0], [0, 0]],
		       [[0, 0], [0, 0]],
		       [[0, 0], [0, 0]]]
		    The annotation can indicate the indices of the first element shown in
		    each row, i.e.,
		      {0: [0, 0, 0], 1: [1, 0, 0], 2: [2, 0, 0]}
		    This information can make display of tensors on screen clearer and can
		    help the user navigate (scroll) to the desired location in a large
		    tensor.
		
		Raises:
		  ValueError: If lines is of invalid type.
	**/
	@:native("__init__")
	public function ___init__(lines:Dynamic, ?font_attr_segs:Dynamic, ?annotations:Dynamic):Dynamic;
	/**
		Constructor of RichTextLines.
		
		Args:
		  lines: A list of str or a single str, representing text output to
		    screen. The latter case is for convenience when the text output is
		    single-line.
		  font_attr_segs: A map from 0-based row index to a list of 3-tuples.
		    It lists segments in each row that have special font attributes, such
		    as colors, that are not the default attribute. For example:
		    {1: [(0, 3, "red"), (4, 7, "green")], 2: [(10, 20, "yellow")]}
		
		    In each tuple, the 1st element is the start index of the segment. The
		    2nd element is the end index, in an "open interval" fashion. The 3rd
		    element is an object or a list of objects that represents the font
		    attribute. Colors are represented as strings as in the examples above.
		  annotations: A map from 0-based row index to any object for annotating
		    the row. A typical use example is annotating rows of the output as
		    indices in a multi-dimensional tensor. For example, consider the
		    following text representation of a 3x2x2 tensor:
		      [[[0, 0], [0, 0]],
		       [[0, 0], [0, 0]],
		       [[0, 0], [0, 0]]]
		    The annotation can indicate the indices of the first element shown in
		    each row, i.e.,
		      {0: [0, 0, 0], 1: [1, 0, 0], 2: [2, 0, 0]}
		    This information can make display of tensors on screen clearer and can
		    help the user navigate (scroll) to the desired location in a large
		    tensor.
		
		Raises:
		  ValueError: If lines is of invalid type.
	**/
	public function new(lines:Dynamic, ?font_attr_segs:Dynamic, ?annotations:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Add another RichTextLines object to the front.
		
		Args:
		  other: (RichTextLines) The other object to add to the front to this
		    object.
	**/
	public function _extend_before(other:Dynamic):Dynamic;
	public var annotations : Dynamic;
	/**
		Append a single line of text.
		
		Args:
		  line: (str) The text to be added to the end.
		  font_attr_segs: (list of tuples) Font attribute segments of the appended
		    line.
	**/
	public function append(line:Dynamic, ?font_attr_segs:Dynamic):Dynamic;
	public function append_rich_line(rich_line:Dynamic):Dynamic;
	/**
		Extend this instance of RichTextLines with another instance.
		
		The extension takes effect on the text lines, the font attribute segments,
		as well as the annotations. The line indices in the font attribute
		segments and the annotations are adjusted to account for the existing
		lines. If there are duplicate, non-line-index fields in the annotations,
		the value from the input argument "other" will override that in this
		instance.
		
		Args:
		  other: (RichTextLines) The other RichTextLines instance to be appended at
		    the end of this instance.
	**/
	public function extend(other:Dynamic):Dynamic;
	public var font_attr_segs : Dynamic;
	public var lines : Dynamic;
	public function num_lines():Dynamic;
	/**
		Prepend (i.e., add to the front) a single line of text.
		
		Args:
		  line: (str) The text to be added to the front.
		  font_attr_segs: (list of tuples) Font attribute segments of the appended
		    line.
	**/
	public function prepend(line:Dynamic, ?font_attr_segs:Dynamic):Dynamic;
	/**
		Slice a RichTextLines object.
		
		The object itself is not changed. A sliced instance is returned.
		
		Args:
		  begin: (int) Beginning line index (inclusive). Must be >= 0.
		  end: (int) Ending line index (exclusive). Must be >= 0.
		
		Returns:
		  (RichTextLines) Sliced output instance of RichTextLines.
		
		Raises:
		  ValueError: If begin or end is negative.
	**/
	public function slice(begin:Dynamic, end:Dynamic):Dynamic;
	/**
		Write the object itself to file, in a plain format.
		
		The font_attr_segs and annotations are ignored.
		
		Args:
		  file_path: (str) path of the file to write to.
	**/
	public function write_to_file(file_path:Dynamic):Dynamic;
}