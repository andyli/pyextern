/* This file is generated, do not edit! */
package docutils.writers.odf_odt;
@:pythonImport("docutils.writers.odf_odt", "Writer") extern class Writer {
	static public var EXTENSION : Dynamic;
	static public var MIME_TYPE : Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		Assemble the `self.parts` dictionary.  Extend in subclasses.
		        
	**/
	public function assemble_my_parts():Dynamic;
	/**
		Assemble the `self.parts` dictionary.  Extend in subclasses.
	**/
	public function assemble_parts():Dynamic;
	static public var component_type : Dynamic;
	static public var config_section : Dynamic;
	static public var config_section_dependencies : Dynamic;
	/**
		Copy images, settings, etc from the stylesheet doc into target doc.
		        
	**/
	public function copy_from_stylesheet(outzipfile:Dynamic):Dynamic;
	public function create_manifest():Dynamic;
	public function create_meta():Dynamic;
	static public var default_stylesheet : Dynamic;
	static public var default_stylesheet_path : Dynamic;
	static public var default_template : Dynamic;
	static public var default_template_path : Dynamic;
	static public var default_transforms : Dynamic;
	static public var destination : Dynamic;
	static public var document : Dynamic;
	/**
		modeled after get_stylesheet
	**/
	public function get_settings():Dynamic;
	/**
		Get the stylesheet from the visitor.
		Ask the visitor to setup the page.
	**/
	public function get_stylesheet():Dynamic;
	/**
		Transforms required by this class.  Override in subclasses.
	**/
	public function get_transforms():Dynamic;
	static public var language : Dynamic;
	static public var output : Dynamic;
	static public var relative_path_settings : Dynamic;
	static public var settings_default_overrides : Dynamic;
	static public var settings_defaults : Dynamic;
	static public var settings_spec : Dynamic;
	public function store_embedded_files(zfile:Dynamic):Dynamic;
	static public var supported : Dynamic;
	/**
		Is `format` supported by this component?
		
		To be used by transforms to ask the dependent component if it supports
		a certain input context or output format.
	**/
	public function supports(format:Dynamic):Dynamic;
	/**
		Do final translation of `self.document` into `self.output`.  Called
		from `write`.  Override in subclasses.
		
		Usually done with a `docutils.nodes.NodeVisitor` subclass, in
		combination with a call to `docutils.nodes.Node.walk()` or
		`docutils.nodes.Node.walkabout()`.  The ``NodeVisitor`` subclass must
		support all standard elements (listed in
		`docutils.nodes.node_class_names`) and possibly non-standard elements
		used by the current Reader as well.
	**/
	public function translate():Dynamic;
	static public var unknown_reference_resolvers : Dynamic;
	/**
		Update xml style sheet element with language and region/country.
	**/
	public function update_stylesheet(stylesheet_root:Dynamic, language_code:Dynamic, region_code:Dynamic):Dynamic;
	/**
		Process a document into its final form.
		
		Translate `document` (a Docutils document tree) into the Writer's
		native format, and write it out to its `destination` (a
		`docutils.io.Output` subclass object).
		
		Normally not overridden or extended in subclasses.
	**/
	public function write(document:Dynamic, destination:Dynamic):Dynamic;
	public function write_zip_str(zfile:Dynamic, name:Dynamic, bytes:Dynamic, ?compress_type:Dynamic):Dynamic;
}