/* This file is generated, do not edit! */
package docutils.writers.s5_html;
@:pythonImport("docutils.writers.s5_html", "S5HTMLTranslator") extern class S5HTMLTranslator {
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
	public function ___init__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>):Void;
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
	public function add_meta(tag:Dynamic):Dynamic;
	public function astext():Dynamic;
	static public var attribution_formats : Dynamic;
	/**
		Cleanse, HTML encode, and return attribute value text.
	**/
	public function attval(text:Dynamic, ?whitespace:Dynamic):Dynamic;
	static public var base_theme_file : Dynamic;
	/**
		Check for a simple list that can be rendered compactly.
	**/
	public function check_simple_list(node:Dynamic):Dynamic;
	/**
		Try to hide the link text of a email link from harversters.
	**/
	public function cloak_email(addr:Dynamic):Dynamic;
	/**
		Try to hide a mailto: URL from harvesters.
	**/
	public function cloak_mailto(uri:Dynamic):Dynamic;
	static public var content_type : Dynamic;
	static public var content_type_mathml : Dynamic;
	/**
		Copy file `name` from `source_dir` to `dest_dir`.
		Return 1 if the file exists in either `source_dir` or `dest_dir`.
	**/
	public function copy_file(name:Dynamic, source_dir:Dynamic, dest_dir:Dynamic):Dynamic;
	/**
		Locate & copy theme files.
		
		A theme may be explicitly based on another theme via a '__base__'
		file.  The default base theme is 'default'.  Files are accumulated
		from the specified theme, any base themes, and 'default'.
	**/
	public function copy_theme():Dynamic;
	static public var default_theme : Dynamic;
	public function depart_Text(node:Dynamic):Dynamic;
	public function depart_abbreviation(node:Dynamic):Dynamic;
	public function depart_acronym(node:Dynamic):Dynamic;
	public function depart_address(node:Dynamic):Dynamic;
	public function depart_admonition(?node:Dynamic):Dynamic;
	public function depart_attribution(node:Dynamic):Dynamic;
	public function depart_author(node:Dynamic):Dynamic;
	public function depart_authors(node:Dynamic):Dynamic;
	public function depart_block_quote(node:Dynamic):Dynamic;
	public function depart_bullet_list(node:Dynamic):Dynamic;
	public function depart_caption(node:Dynamic):Dynamic;
	public function depart_citation(node:Dynamic):Dynamic;
	public function depart_citation_reference(node:Dynamic):Dynamic;
	public function depart_classifier(node:Dynamic):Dynamic;
	public function depart_colspec(node:Dynamic):Dynamic;
	public function depart_compound(node:Dynamic):Dynamic;
	public function depart_contact(node:Dynamic):Dynamic;
	public function depart_container(node:Dynamic):Dynamic;
	public function depart_copyright(node:Dynamic):Dynamic;
	public function depart_date(node:Dynamic):Dynamic;
	public function depart_decoration(node:Dynamic):Dynamic;
	public function depart_definition(node:Dynamic):Dynamic;
	public function depart_definition_list(node:Dynamic):Dynamic;
	public function depart_definition_list_item(node:Dynamic):Dynamic;
	public function depart_description(node:Dynamic):Dynamic;
	public function depart_docinfo(node:Dynamic):Dynamic;
	public function depart_docinfo_item():Dynamic;
	public function depart_doctest_block(node:Dynamic):Dynamic;
	public function depart_document(node:Dynamic):Dynamic;
	public function depart_emphasis(node:Dynamic):Dynamic;
	public function depart_entry(node:Dynamic):Dynamic;
	public function depart_enumerated_list(node:Dynamic):Dynamic;
	public function depart_field(node:Dynamic):Dynamic;
	public function depart_field_body(node:Dynamic):Dynamic;
	public function depart_field_list(node:Dynamic):Dynamic;
	public function depart_field_name(node:Dynamic):Dynamic;
	public function depart_figure(node:Dynamic):Dynamic;
	public function depart_footer(node:Dynamic):Dynamic;
	public function depart_footnote(node:Dynamic):Dynamic;
	public function depart_footnote_reference(node:Dynamic):Dynamic;
	public function depart_generated(node:Dynamic):Dynamic;
	public function depart_header(node:Dynamic):Dynamic;
	public function depart_image(node:Dynamic):Dynamic;
	public function depart_inline(node:Dynamic):Dynamic;
	public function depart_label(node:Dynamic):Dynamic;
	public function depart_legend(node:Dynamic):Dynamic;
	public function depart_line(node:Dynamic):Dynamic;
	public function depart_line_block(node:Dynamic):Dynamic;
	public function depart_list_item(node:Dynamic):Dynamic;
	public function depart_literal(node:Dynamic):Dynamic;
	public function depart_literal_block(node:Dynamic):Dynamic;
	public function depart_math(node:Dynamic):Dynamic;
	public function depart_math_block(node:Dynamic):Dynamic;
	public function depart_meta(node:Dynamic):Dynamic;
	public function depart_option(node:Dynamic):Dynamic;
	public function depart_option_argument(node:Dynamic):Dynamic;
	public function depart_option_group(node:Dynamic):Dynamic;
	public function depart_option_list(node:Dynamic):Dynamic;
	public function depart_option_list_item(node:Dynamic):Dynamic;
	public function depart_option_string(node:Dynamic):Dynamic;
	public function depart_organization(node:Dynamic):Dynamic;
	public function depart_paragraph(node:Dynamic):Dynamic;
	public function depart_problematic(node:Dynamic):Dynamic;
	public function depart_reference(node:Dynamic):Dynamic;
	public function depart_revision(node:Dynamic):Dynamic;
	public function depart_row(node:Dynamic):Dynamic;
	public function depart_rubric(node:Dynamic):Dynamic;
	public function depart_section(node:Dynamic):Dynamic;
	public function depart_sidebar(node:Dynamic):Dynamic;
	public function depart_status(node:Dynamic):Dynamic;
	public function depart_strong(node:Dynamic):Dynamic;
	public function depart_subscript(node:Dynamic):Dynamic;
	public function depart_subtitle(node:Dynamic):Dynamic;
	public function depart_superscript(node:Dynamic):Dynamic;
	public function depart_system_message(node:Dynamic):Dynamic;
	public function depart_table(node:Dynamic):Dynamic;
	public function depart_target(node:Dynamic):Dynamic;
	public function depart_tbody(node:Dynamic):Dynamic;
	public function depart_term(node:Dynamic):Dynamic;
	public function depart_tgroup(node:Dynamic):Dynamic;
	public function depart_thead(node:Dynamic):Dynamic;
	public function depart_title(node:Dynamic):Dynamic;
	public function depart_title_reference(node:Dynamic):Dynamic;
	public function depart_topic(node:Dynamic):Dynamic;
	public function depart_transition(node:Dynamic):Dynamic;
	public function depart_version(node:Dynamic):Dynamic;
	static public var direct_theme_files : Dynamic;
	static public var disable_current_slide : Dynamic;
	/**
		Call self."``depart_`` + node class name" with `node` as
		parameter.  If the ``depart_...`` method does not exist, call
		self.unknown_departure.
	**/
	public function dispatch_departure(node:Dynamic):Dynamic;
	/**
		Call self."``visit_`` + node class name" with `node` as
		parameter.  If the ``visit_...`` method does not exist, call
		self.unknown_visit.
	**/
	public function dispatch_visit(node:Dynamic):Dynamic;
	static public var doctype : Dynamic;
	static public var doctype_mathml : Dynamic;
	static public var embedded_stylesheet : Dynamic;
	/**
		Construct and return an XML-compatible empty tag.
	**/
	public function emptytag(node:Dynamic, tagname:Dynamic, ?suffix:Dynamic, ?attributes:python.KwArgs<Dynamic>):Dynamic;
	/**
		Encode special characters in `text` & return.
	**/
	public function encode(text:Dynamic):Dynamic;
	static public var files_to_skip_pattern : Dynamic;
	public function footnote_backrefs(node:Dynamic):Dynamic;
	static public var generator : Dynamic;
	static public var head_prefix_template : Dynamic;
	static public var in_word_wrap_point : Dynamic;
	static public var indirect_theme_files : Dynamic;
	public function is_compactable(node:Dynamic):Dynamic;
	static public var lang_attribute : Dynamic;
	static public var layout_template : Dynamic;
	static public var math_tags : Dynamic;
	static public var mathjax_script : Dynamic;
	static public var mathjax_url : Dynamic;
	static public var object_image_types : Dynamic;
	static public var optional : Dynamic;
	static public var required_theme_files : Dynamic;
	static public var s5_stylesheet_template : Dynamic;
	public function section_title_tags(node:Dynamic):Dynamic;
	/**
		Set class `class_` on the visible child no. index of `node`.
		Do nothing if node has fewer children than `index`.
	**/
	public function set_class_on_child(node:Dynamic, class_:Dynamic, ?index:Dynamic):Dynamic;
	public function set_first_last(node:Dynamic):Dynamic;
	public function setup_theme():Dynamic;
	/**
		Determine if the <p> tags around paragraph ``node`` can be omitted.
	**/
	public function should_be_compact_paragraph(node:Dynamic):Dynamic;
	static public var special_characters : Dynamic;
	/**
		Construct and return a start tag given a node (id & class attributes
		are extracted), tag name, and optional attributes.
	**/
	public function starttag(node:Dynamic, tagname:Dynamic, ?suffix:Dynamic, ?empty:Dynamic, ?attributes:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return code to reference or embed stylesheet file `path`
	**/
	public function stylesheet_call(path:Dynamic, ?adjust_path:Dynamic):Dynamic;
	static public var stylesheet_link : Dynamic;
	public function unimplemented_visit(node:Dynamic):Dynamic;
	/**
		Called before exiting unknown `Node` types.
		
		Raise exception unless overridden.
	**/
	public function unknown_departure(node:Dynamic):Dynamic;
	/**
		Called when entering unknown `Node` types.
		
		Raise an exception unless overridden.
	**/
	public function unknown_visit(node:Dynamic):Dynamic;
	public function visit_Text(node:Dynamic):Dynamic;
	public function visit_abbreviation(node:Dynamic):Dynamic;
	public function visit_acronym(node:Dynamic):Dynamic;
	public function visit_address(node:Dynamic):Dynamic;
	public function visit_admonition(node:Dynamic):Dynamic;
	public function visit_attribution(node:Dynamic):Dynamic;
	public function visit_author(node:Dynamic):Dynamic;
	public function visit_authors(node:Dynamic):Dynamic;
	public function visit_block_quote(node:Dynamic):Dynamic;
	public function visit_bullet_list(node:Dynamic):Dynamic;
	public function visit_caption(node:Dynamic):Dynamic;
	public function visit_citation(node:Dynamic):Dynamic;
	public function visit_citation_reference(node:Dynamic):Dynamic;
	public function visit_classifier(node:Dynamic):Dynamic;
	public function visit_colspec(node:Dynamic):Dynamic;
	/**
		Escape double-dashes in comment text.
	**/
	public function visit_comment(node:Dynamic, ?sub:Dynamic):Dynamic;
	public function visit_compound(node:Dynamic):Dynamic;
	public function visit_contact(node:Dynamic):Dynamic;
	public function visit_container(node:Dynamic):Dynamic;
	public function visit_copyright(node:Dynamic):Dynamic;
	public function visit_date(node:Dynamic):Dynamic;
	public function visit_decoration(node:Dynamic):Dynamic;
	public function visit_definition(node:Dynamic):Dynamic;
	public function visit_definition_list(node:Dynamic):Dynamic;
	public function visit_definition_list_item(node:Dynamic):Dynamic;
	public function visit_description(node:Dynamic):Dynamic;
	public function visit_docinfo(node:Dynamic):Dynamic;
	public function visit_docinfo_item(node:Dynamic, name:Dynamic, ?meta:Dynamic):Dynamic;
	public function visit_doctest_block(node:Dynamic):Dynamic;
	public function visit_document(node:Dynamic):Dynamic;
	public function visit_emphasis(node:Dynamic):Dynamic;
	public function visit_entry(node:Dynamic):Dynamic;
	/**
		The 'start' attribute does not conform to HTML 4.01's strict.dtd, but
		cannot be emulated in CSS1 (HTML 5 reincludes it).
	**/
	public function visit_enumerated_list(node:Dynamic):Dynamic;
	public function visit_field(node:Dynamic):Dynamic;
	public function visit_field_body(node:Dynamic):Dynamic;
	public function visit_field_list(node:Dynamic):Dynamic;
	public function visit_field_name(node:Dynamic):Dynamic;
	public function visit_figure(node:Dynamic):Dynamic;
	public function visit_footer(node:Dynamic):Dynamic;
	public function visit_footnote(node:Dynamic):Dynamic;
	public function visit_footnote_reference(node:Dynamic):Dynamic;
	public function visit_generated(node:Dynamic):Dynamic;
	public function visit_header(node:Dynamic):Dynamic;
	public function visit_image(node:Dynamic):Dynamic;
	public function visit_inline(node:Dynamic):Dynamic;
	public function visit_label(node:Dynamic):Dynamic;
	public function visit_legend(node:Dynamic):Dynamic;
	public function visit_line(node:Dynamic):Dynamic;
	public function visit_line_block(node:Dynamic):Dynamic;
	public function visit_list_item(node:Dynamic):Dynamic;
	public function visit_literal(node:Dynamic):Dynamic;
	public function visit_literal_block(node:Dynamic):Dynamic;
	public function visit_math(node:Dynamic, ?math_env:Dynamic):Dynamic;
	public function visit_math_block(node:Dynamic):Dynamic;
	public function visit_meta(node:Dynamic):Dynamic;
	public function visit_option(node:Dynamic):Dynamic;
	public function visit_option_argument(node:Dynamic):Dynamic;
	public function visit_option_group(node:Dynamic):Dynamic;
	public function visit_option_list(node:Dynamic):Dynamic;
	public function visit_option_list_item(node:Dynamic):Dynamic;
	public function visit_option_string(node:Dynamic):Dynamic;
	public function visit_organization(node:Dynamic):Dynamic;
	public function visit_paragraph(node:Dynamic):Dynamic;
	public function visit_problematic(node:Dynamic):Dynamic;
	public function visit_raw(node:Dynamic):Dynamic;
	public function visit_reference(node:Dynamic):Dynamic;
	public function visit_revision(node:Dynamic):Dynamic;
	public function visit_row(node:Dynamic):Dynamic;
	public function visit_rubric(node:Dynamic):Dynamic;
	public function visit_section(node:Dynamic):Dynamic;
	public function visit_sidebar(node:Dynamic):Dynamic;
	public function visit_status(node:Dynamic):Dynamic;
	public function visit_strong(node:Dynamic):Dynamic;
	public function visit_subscript(node:Dynamic):Dynamic;
	/**
		Internal only.
	**/
	public function visit_substitution_definition(node:Dynamic):Dynamic;
	public function visit_substitution_reference(node:Dynamic):Dynamic;
	public function visit_subtitle(node:Dynamic):Dynamic;
	public function visit_superscript(node:Dynamic):Dynamic;
	public function visit_system_message(node:Dynamic):Dynamic;
	public function visit_table(node:Dynamic):Dynamic;
	public function visit_target(node:Dynamic):Dynamic;
	public function visit_tbody(node:Dynamic):Dynamic;
	public function visit_term(node:Dynamic):Dynamic;
	public function visit_tgroup(node:Dynamic):Dynamic;
	public function visit_thead(node:Dynamic):Dynamic;
	public function visit_title(node:Dynamic):Dynamic;
	public function visit_title_reference(node:Dynamic):Dynamic;
	public function visit_topic(node:Dynamic):Dynamic;
	public function visit_transition(node:Dynamic):Dynamic;
	public function visit_version(node:Dynamic):Dynamic;
	static public var words_and_spaces : Dynamic;
	static public var xml_declaration : Dynamic;
}