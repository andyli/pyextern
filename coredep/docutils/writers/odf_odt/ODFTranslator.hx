/* This file is generated, do not edit! */
package docutils.writers.odf_odt;
@:pythonImport("docutils.writers.odf_odt", "ODFTranslator") extern class ODFTranslator {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(document:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(document:Dynamic):Void;
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
	public function _add_syntax_highlighting(insource:Dynamic, language:Dynamic):Dynamic;
	public function _calculate_code_block_padding(line:Dynamic):Dynamic;
	public function add_doc_title():Dynamic;
	public function add_header_footer(root_el:Dynamic):Dynamic;
	public function append_child(tag:Dynamic, ?attrib:Dynamic, ?parent:Dynamic):Dynamic;
	public function append_p(style:Dynamic, ?text:Dynamic):Dynamic;
	public function append_pending_ids(el:Dynamic):Dynamic;
	public function astext():Dynamic;
	/**
		Attach the default page style.
		
		Create an automatic-style that refers to the current style
		of this element and that refers to the default page style.
	**/
	public function attach_page_style(el:Dynamic):Dynamic;
	public function check_file_exists(path:Dynamic):Dynamic;
	static public var code_field : Dynamic;
	static public var code_none : Dynamic;
	static public var code_text : Dynamic;
	public function content_astext():Dynamic;
	public function create_custom_headfoot(parent:Dynamic, text:Dynamic, style_name:Dynamic, automatic_styles:Dynamic):Dynamic;
	/**
		Override for generic, uniform traversals.
	**/
	public function default_departure(node:Dynamic):Dynamic;
	/**
		Override for generic, uniform traversals.
	**/
	public function default_visit(node:Dynamic):Dynamic;
	public function depart_Text(node:Dynamic):Dynamic;
	public function depart_abbreviation(node:Dynamic):Dynamic;
	public function depart_acronym(node:Dynamic):Dynamic;
	public function depart_address(node:Dynamic):Dynamic;
	public function depart_admonition(node:Dynamic):Dynamic;
	public function depart_attention(node:Dynamic):Dynamic;
	public function depart_attribution(node:Dynamic):Dynamic;
	public function depart_author(node:Dynamic):Dynamic;
	public function depart_authors(node:Dynamic):Dynamic;
	public function depart_block_quote(node:Dynamic):Dynamic;
	public function depart_bullet_list(node:Dynamic):Dynamic;
	public function depart_caption(node:Dynamic):Dynamic;
	public function depart_caution(node:Dynamic):Dynamic;
	public function depart_citation(node:Dynamic):Dynamic;
	public function depart_citation_reference(node:Dynamic):Dynamic;
	public function depart_classifier(node:Dynamic):Dynamic;
	public function depart_colspec(node:Dynamic):Dynamic;
	public function depart_comment(node:Dynamic):Dynamic;
	public function depart_compound(node:Dynamic):Dynamic;
	public function depart_contact(node:Dynamic):Dynamic;
	public function depart_container(node:Dynamic):Dynamic;
	public function depart_copyright(node:Dynamic):Dynamic;
	public function depart_danger(node:Dynamic):Dynamic;
	public function depart_date(node:Dynamic):Dynamic;
	public function depart_decoration(node:Dynamic):Dynamic;
	public function depart_definition(node:Dynamic):Dynamic;
	public function depart_definition_list(node:Dynamic):Dynamic;
	public function depart_definition_list_item(node:Dynamic):Dynamic;
	public function depart_description(node:Dynamic):Dynamic;
	public function depart_docinfo(node:Dynamic):Dynamic;
	public function depart_doctest_block(node:Dynamic):Dynamic;
	public function depart_document(node:Dynamic):Dynamic;
	public function depart_emphasis(node:Dynamic):Dynamic;
	public function depart_entry(node:Dynamic):Dynamic;
	public function depart_enumerated_list(node:Dynamic):Dynamic;
	public function depart_error(node:Dynamic):Dynamic;
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
	public function depart_hint(node:Dynamic):Dynamic;
	public function depart_image(node:Dynamic):Dynamic;
	public function depart_important(node:Dynamic):Dynamic;
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
	public function depart_note(node:Dynamic):Dynamic;
	public function depart_option(node:Dynamic):Dynamic;
	public function depart_option_argument(node:Dynamic):Dynamic;
	public function depart_option_group(node:Dynamic):Dynamic;
	public function depart_option_list(node:Dynamic):Dynamic;
	public function depart_option_list_item(node:Dynamic):Dynamic;
	public function depart_option_string(node:Dynamic):Dynamic;
	public function depart_organization(node:Dynamic):Dynamic;
	public function depart_paragraph(node:Dynamic):Dynamic;
	public function depart_pending(node:Dynamic):Dynamic;
	public function depart_problematic(node:Dynamic):Dynamic;
	public function depart_raw(node:Dynamic):Dynamic;
	public function depart_reference(node:Dynamic):Dynamic;
	public function depart_revision(node:Dynamic):Dynamic;
	public function depart_row(node:Dynamic):Dynamic;
	public function depart_rubric(node:Dynamic):Dynamic;
	public function depart_section(node:Dynamic):Dynamic;
	public function depart_sidebar(node:Dynamic):Dynamic;
	public function depart_status(node:Dynamic):Dynamic;
	public function depart_strong(node:Dynamic):Dynamic;
	public function depart_subscript(node:Dynamic):Dynamic;
	public function depart_substitution_definition(node:Dynamic):Dynamic;
	public function depart_substitution_reference(node:Dynamic):Dynamic;
	public function depart_subtitle(node:Dynamic):Dynamic;
	public function depart_superscript(node:Dynamic):Dynamic;
	public function depart_system_message(node:Dynamic):Dynamic;
	public function depart_table(node:Dynamic):Dynamic;
	public function depart_target(node:Dynamic):Dynamic;
	public function depart_tbody(node:Dynamic):Dynamic;
	public function depart_term(node:Dynamic):Dynamic;
	public function depart_tgroup(node:Dynamic):Dynamic;
	public function depart_thead(node:Dynamic):Dynamic;
	public function depart_tip(node:Dynamic):Dynamic;
	public function depart_title(node:Dynamic):Dynamic;
	public function depart_title_reference(node:Dynamic):Dynamic;
	public function depart_topic(node:Dynamic):Dynamic;
	public function depart_transition(node:Dynamic):Dynamic;
	public function depart_version(node:Dynamic):Dynamic;
	public function depart_warning(node:Dynamic):Dynamic;
	/**
		Call self."``depart_`` + node class name" with `node` as
		parameter.  If the ``depart_...`` method does not exist, call
		self.unknown_departure.
	**/
	public function dispatch_departure(node:Dynamic):Dynamic;
	/**
		Override to catch basic attributes which many nodes have.
	**/
	public function dispatch_visit(node:Dynamic):Dynamic;
	public function encode(text:Dynamic):Dynamic;
	public function extract_table_styles(styles_str:Dynamic):Dynamic;
	static public var field_pat : Dynamic;
	public function fill_func1(matchobj:Dynamic):Dynamic;
	public function fill_func2(matchobj:Dynamic):Dynamic;
	public function fill_line(line:Dynamic):Dynamic;
	/**
		Search the generated doc and return the first <text:p> element.
		        
	**/
	public function find_first_text_p(el:Dynamic):Dynamic;
	public function find_title_label(node:Dynamic, class_type:Dynamic, label_key:Dynamic):Dynamic;
	static public var footnote_chars : Dynamic;
	public function generate_admonition(node:Dynamic, label:Dynamic, ?title:Dynamic):Dynamic;
	public function generate_content_element(root:Dynamic):Dynamic;
	public function generate_figure(node:Dynamic, source:Dynamic, destination:Dynamic, current_element:Dynamic):Dynamic;
	public function generate_image(node:Dynamic, source:Dynamic, destination:Dynamic, current_element:Dynamic, ?frame_attrs:Dynamic):Dynamic;
	public function generate_labeled_block(node:Dynamic, label:Dynamic):Dynamic;
	public function generate_labeled_line(node:Dynamic, label:Dynamic):Dynamic;
	public function generate_table_of_content_entry_template(el1:Dynamic):Dynamic;
	public function get_embedded_file_list():Dynamic;
	public function get_image_scale(node:Dynamic):Dynamic;
	public function get_image_scaled_width_height(node:Dynamic, source:Dynamic):Dynamic;
	public function get_image_width_height(node:Dynamic, attr:Dynamic):Dynamic;
	public function get_meta_dict():Dynamic;
	public function get_property(stylenode:Dynamic):Dynamic;
	public function get_str_stylesheet():Dynamic;
	public function get_table_style(node:Dynamic):Dynamic;
	public function get_title():Dynamic;
	public function handle_basic_atts(node:Dynamic):Dynamic;
	public function is_in_table(node:Dynamic):Dynamic;
	public function make_field_element(parent:Dynamic, text:Dynamic, style_name:Dynamic, automatic_styles:Dynamic):Dynamic;
	static public var optional : Dynamic;
	public function process_footnotes():Dynamic;
	/**
		Retrieve the stylesheet from either a .xml file or from
		a .odt (zip) file.  Return the content as a string.
	**/
	public function retrieve_styles(extension:Dynamic):Dynamic;
	/**
		Returns the style name to use for the given style.
		
		If `parameters` is given `name` must contain a matching number of ``%`` and
		is used as a format expression with `parameters` as the value.
	**/
	public function rststyle(name:Dynamic, ?parameters:Dynamic):Dynamic;
	public function set_current_element(el:Dynamic):Dynamic;
	public function set_embedded_file_list(embedded_file_list:Dynamic):Dynamic;
	public function set_title(title:Dynamic):Dynamic;
	public function set_to_parent():Dynamic;
	public function setup_page():Dynamic;
	public function setup_paper(root_el:Dynamic):Dynamic;
	public function split_field_specifiers_iter(text:Dynamic):Dynamic;
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
	public function update_toc_add_numbers(collection:Dynamic):Dynamic;
	public function update_toc_collect(el:Dynamic, level:Dynamic, collection:Dynamic):Dynamic;
	public function update_toc_page_numbers(el:Dynamic):Dynamic;
	static public var used_styles : Dynamic;
	public function visit_Text(node:Dynamic):Dynamic;
	public function visit_abbreviation(node:Dynamic):Dynamic;
	public function visit_acronym(node:Dynamic):Dynamic;
	public function visit_address(node:Dynamic):Dynamic;
	public function visit_admonition(node:Dynamic):Dynamic;
	public function visit_attention(node:Dynamic):Dynamic;
	public function visit_attribution(node:Dynamic):Dynamic;
	public function visit_author(node:Dynamic):Dynamic;
	public function visit_authors(node:Dynamic):Dynamic;
	public function visit_block_quote(node:Dynamic):Dynamic;
	public function visit_bullet_list(node:Dynamic):Dynamic;
	public function visit_caption(node:Dynamic):Dynamic;
	public function visit_caution(node:Dynamic):Dynamic;
	public function visit_citation(node:Dynamic):Dynamic;
	public function visit_citation_reference(node:Dynamic):Dynamic;
	public function visit_classifier(node:Dynamic):Dynamic;
	public function visit_colspec(node:Dynamic):Dynamic;
	public function visit_comment(node:Dynamic):Dynamic;
	public function visit_compound(node:Dynamic):Dynamic;
	public function visit_contact(node:Dynamic):Dynamic;
	public function visit_container(node:Dynamic):Dynamic;
	public function visit_copyright(node:Dynamic):Dynamic;
	public function visit_danger(node:Dynamic):Dynamic;
	public function visit_date(node:Dynamic):Dynamic;
	public function visit_decoration(node:Dynamic):Dynamic;
	public function visit_definition(node:Dynamic):Dynamic;
	public function visit_definition_list(node:Dynamic):Dynamic;
	public function visit_definition_list_item(node:Dynamic):Dynamic;
	public function visit_description(node:Dynamic):Dynamic;
	public function visit_docinfo(node:Dynamic):Dynamic;
	public function visit_doctest_block(node:Dynamic):Dynamic;
	public function visit_document(node:Dynamic):Dynamic;
	public function visit_emphasis(node:Dynamic):Dynamic;
	public function visit_entry(node:Dynamic):Dynamic;
	public function visit_enumerated_list(node:Dynamic):Dynamic;
	public function visit_error(node:Dynamic):Dynamic;
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
	public function visit_hint(node:Dynamic):Dynamic;
	public function visit_image(node:Dynamic):Dynamic;
	public function visit_important(node:Dynamic):Dynamic;
	public function visit_inline(node:Dynamic):Dynamic;
	public function visit_label(node:Dynamic):Dynamic;
	public function visit_legend(node:Dynamic):Dynamic;
	public function visit_line(node:Dynamic):Dynamic;
	public function visit_line_block(node:Dynamic):Dynamic;
	public function visit_list_item(node:Dynamic):Dynamic;
	public function visit_literal(node:Dynamic):Dynamic;
	public function visit_literal_block(node:Dynamic):Dynamic;
	public function visit_math(node:Dynamic):Dynamic;
	public function visit_math_block(node:Dynamic):Dynamic;
	public function visit_meta(node:Dynamic):Dynamic;
	public function visit_note(node:Dynamic):Dynamic;
	public function visit_option(node:Dynamic):Dynamic;
	public function visit_option_argument(node:Dynamic):Dynamic;
	public function visit_option_group(node:Dynamic):Dynamic;
	public function visit_option_list(node:Dynamic):Dynamic;
	public function visit_option_list_item(node:Dynamic):Dynamic;
	public function visit_option_string(node:Dynamic):Dynamic;
	public function visit_organization(node:Dynamic):Dynamic;
	public function visit_paragraph(node:Dynamic):Dynamic;
	public function visit_pending(node:Dynamic):Dynamic;
	public function visit_problematic(node:Dynamic):Dynamic;
	public function visit_raw(node:Dynamic):Dynamic;
	public function visit_reference(node:Dynamic):Dynamic;
	public function visit_revision(node:Dynamic):Dynamic;
	public function visit_row(node:Dynamic):Dynamic;
	public function visit_rubric(node:Dynamic):Dynamic;
	public function visit_section(node:Dynamic, ?move_ids:Dynamic):Dynamic;
	public function visit_sidebar(node:Dynamic):Dynamic;
	public function visit_status(node:Dynamic):Dynamic;
	public function visit_strong(node:Dynamic):Dynamic;
	public function visit_subscript(node:Dynamic):Dynamic;
	public function visit_substitution_definition(node:Dynamic):Dynamic;
	public function visit_substitution_reference(node:Dynamic):Dynamic;
	public function visit_subtitle(node:Dynamic, ?move_ids:Dynamic):Dynamic;
	public function visit_superscript(node:Dynamic):Dynamic;
	public function visit_system_message(node:Dynamic):Dynamic;
	public function visit_table(node:Dynamic):Dynamic;
	public function visit_target(node:Dynamic):Dynamic;
	public function visit_tbody(node:Dynamic):Dynamic;
	public function visit_term(node:Dynamic):Dynamic;
	public function visit_tgroup(node:Dynamic):Dynamic;
	public function visit_thead(node:Dynamic):Dynamic;
	public function visit_tip(node:Dynamic):Dynamic;
	public function visit_title(node:Dynamic, ?move_ids:Dynamic, ?title_type:Dynamic):Dynamic;
	public function visit_title_reference(node:Dynamic):Dynamic;
	public function visit_topic(node:Dynamic):Dynamic;
	public function visit_transition(node:Dynamic):Dynamic;
	public function visit_version(node:Dynamic):Dynamic;
	public function visit_warning(node:Dynamic):Dynamic;
}