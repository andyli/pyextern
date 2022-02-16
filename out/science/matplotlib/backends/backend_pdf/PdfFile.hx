/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf", "PdfFile") extern class PdfFile {
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
		Parameters
		----------
		filename : str or path-like or file-like
		    Output target; if a string, a file will be opened for writing.
		
		metadata : dict from strings to strings and dates
		    Information dictionary object (see PDF reference section 10.2.1
		    'Document Information Dictionary'), e.g.:
		    ``{'Creator': 'My software', 'Author': 'Me', 'Title': 'Awesome'}``.
		
		    The standard keys are 'Title', 'Author', 'Subject', 'Keywords',
		    'Creator', 'Producer', 'CreationDate', 'ModDate', and
		    'Trapped'. Values have been predefined for 'Creator', 'Producer'
		    and 'CreationDate'. They can be removed by setting them to `None`.
	**/
	@:native("__init__")
	public function ___init__(filename:Dynamic, ?metadata:Dynamic):Dynamic;
	/**
		Parameters
		----------
		filename : str or path-like or file-like
		    Output target; if a string, a file will be opened for writing.
		
		metadata : dict from strings to strings and dates
		    Information dictionary object (see PDF reference section 10.2.1
		    'Document Information Dictionary'), e.g.:
		    ``{'Creator': 'My software', 'Author': 'Me', 'Title': 'Awesome'}``.
		
		    The standard keys are 'Title', 'Author', 'Subject', 'Keywords',
		    'Creator', 'Producer', 'CreationDate', 'ModDate', and
		    'Trapped'. Values have been predefined for 'Creator', 'Producer'
		    and 'CreationDate'. They can be removed by setting them to `None`.
	**/
	public function new(filename:Dynamic, ?metadata:Dynamic):Void;
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
	public function _embedTeXFont(fontinfo:Dynamic):Dynamic;
	public function _get_subsetted_psname(ps_name:Dynamic, charmap:Dynamic):Dynamic;
	public function _get_xobject_symbol_name(filename:Dynamic, symbol_name:Dynamic):Dynamic;
	static public var _identityToUnicodeCMap : Dynamic;
	/**
		Return an ExtGState that sets the soft mask to the given shading.
		
		Parameters
		----------
		smask : Reference
		    Reference to a shading in DeviceGray color space, whose luminosity
		    is to be used as the alpha channel.
		
		Returns
		-------
		Name
	**/
	public function _soft_mask_state(smask:Dynamic):Dynamic;
	/**
		Unpack image array *im* into ``(data, alpha)``, which have shape
		``(height, width, 3)`` (RGB) or ``(height, width, 1)`` (grayscale or
		alpha), except that alpha is None if the image is fully opaque.
	**/
	public function _unpack(im:Dynamic):Dynamic;
	/**
		Write the image *data*, of shape ``(height, width, 1)`` (grayscale) or
		``(height, width, 3)`` (RGB), as pdf object *id* and with the soft mask
		(alpha channel) *smask*, which should be either None or a ``(height,
		width, 1)`` array.
	**/
	public function _writeImg(data:Dynamic, id:Dynamic, ?smask:Dynamic):Dynamic;
	/**
		Write the image *img* into the pdf file using png
		predictors with Flate compression.
	**/
	public function _writePng(img:Dynamic):Dynamic;
	public function _write_afm_font(filename:Dynamic):Dynamic;
	public function _write_annotations():Dynamic;
	public function _write_soft_mask_groups():Dynamic;
	/**
		Add a Gouraud triangle shading.
		
		Parameters
		----------
		points : np.ndarray
		    Triangle vertices, shape (n, 3, 2)
		    where n = number of triangles, 3 = vertices, 2 = x, y.
		colors : np.ndarray
		    Vertex colors, shape (n, 3, 1) or (n, 3, 4)
		    as with points, but last dimension is either (gray,)
		    or (r, g, b, alpha).
		
		Returns
		-------
		Name, Reference
	**/
	public function addGouraudTriangles(points:Dynamic, colors:Dynamic):Dynamic;
	/**
		Return name of an ExtGState that sets alpha to the given value.
	**/
	public function alphaState(alpha:Dynamic):Dynamic;
	public function beginStream(id:Dynamic, len:Dynamic, ?extra:Dynamic, ?png:Dynamic):Dynamic;
	/**
		Flush all buffers and free all resources.
	**/
	public function close():Dynamic;
	public function createType1Descriptor(t1font:Dynamic, fontfile:Dynamic):Dynamic;
	/**
		Given a dvi font object, return a name suitable for Op.selectfont.
		This registers the font information in ``self.dviFontInfo`` if not yet
		registered.
	**/
	public function dviFontName(dvifont:Dynamic):Dynamic;
	/**
		Embed the TTF font from the named file into the document.
	**/
	public function embedTTF(filename:Dynamic, characters:Dynamic):Dynamic;
	public function endStream():Dynamic;
	/**
		Write out the various deferred objects and the pdf end matter.
	**/
	public function finalize():Dynamic;
	/**
		Select a font based on fontprop and return a name suitable for
		Op.selectfont. If fontprop is a string, it will be interpreted
		as the filename of the font.
	**/
	public function fontName(fontprop:Dynamic):Dynamic;
	public function hatchPattern(hatch_style:Dynamic):Dynamic;
	/**
		Return name of an image XObject representing the given image.
	**/
	public function imageObject(image:Dynamic):Dynamic;
	/**
		Return name of a marker XObject representing the given path.
	**/
	public function markerObject(path:Dynamic, trans:Dynamic, fill:Dynamic, stroke:Dynamic, lw:Dynamic, joinstyle:Dynamic, capstyle:Dynamic):Dynamic;
	public function newPage(width:Dynamic, height:Dynamic):Dynamic;
	public function newTextnote(text:Dynamic, ?positionRect:Dynamic):Dynamic;
	public function output(?data:python.VarArgs<Dynamic>):Dynamic;
	public function pathCollectionObject(gc:Dynamic, path:Dynamic, trans:Dynamic, padding:Dynamic, filled:Dynamic, stroked:Dynamic):Dynamic;
	static public function pathOperations(path:Dynamic, transform:Dynamic, ?clip:Dynamic, ?simplify:Dynamic, ?sketch:Dynamic):Dynamic;
	public function recordXref(id:Dynamic):Dynamic;
	/**
		Reserve an ID for an indirect object.
		
		The name is used for debugging in case we forget to print out
		the object with writeObject.
	**/
	public function reserveObject(?name:Dynamic):Dynamic;
	public function write(data:Dynamic):Dynamic;
	public function writeExtGSTates():Dynamic;
	public function writeFonts():Dynamic;
	public function writeGouraudTriangles():Dynamic;
	public function writeHatches():Dynamic;
	public function writeImages():Dynamic;
	/**
		Write out the info dictionary, checking it for good form
	**/
	public function writeInfoDict():Dynamic;
	public function writeMarkers():Dynamic;
	public function writeObject(object:Dynamic, contents:Dynamic):Dynamic;
	public function writePath(path:Dynamic, transform:Dynamic, ?clip:Dynamic, ?sketch:Dynamic):Dynamic;
	public function writePathCollectionTemplates():Dynamic;
	/**
		Write out the PDF trailer.
	**/
	public function writeTrailer():Dynamic;
	/**
		Write out the xref table.
	**/
	public function writeXref():Dynamic;
}