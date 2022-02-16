/* This file is generated, do not edit! */
package docutils.parsers.rst.roles;
@:pythonImport("docutils.parsers.rst.roles") extern class Roles_Module {
	static public var DEFAULT_INTERPRETED_ROLE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _role_registry : Dynamic;
	static public var _roles : Dynamic;
	static public function code_role(role:Dynamic, rawtext:Dynamic, text:Dynamic, lineno:Dynamic, inliner:Dynamic, ?options:Dynamic, ?content:Dynamic):Dynamic;
	/**
		Base for custom roles if no other base role is specified.
	**/
	static public function generic_custom_role(role:Dynamic, rawtext:Dynamic, text:Dynamic, lineno:Dynamic, inliner:Dynamic, ?options:Dynamic, ?content:Dynamic):Dynamic;
	static public function math_role(role:Dynamic, rawtext:Dynamic, text:Dynamic, lineno:Dynamic, inliner:Dynamic, ?options:Dynamic, ?content:Dynamic):Dynamic;
	static public function pep_reference_role(role:Dynamic, rawtext:Dynamic, text:Dynamic, lineno:Dynamic, inliner:Dynamic, ?options:Dynamic, ?content:Dynamic):Dynamic;
	static public function raw_role(role:Dynamic, rawtext:Dynamic, text:Dynamic, lineno:Dynamic, inliner:Dynamic, ?options:Dynamic, ?content:Dynamic):Dynamic;
	/**
		Register an interpreted text role by its canonical name.
		
		:Parameters:
		  - `name`: The canonical name of the interpreted role.
		  - `role_fn`: The role function.  See the module docstring.
	**/
	static public function register_canonical_role(name:Dynamic, role_fn:Dynamic):Dynamic;
	/**
		For roles which simply wrap a given `node_class` around the text.
	**/
	static public function register_generic_role(canonical_name:Dynamic, node_class:Dynamic):Dynamic;
	/**
		Register an interpreted text role by its local or language-dependent name.
		
		:Parameters:
		  - `name`: The local or language-dependent name of the interpreted role.
		  - `role_fn`: The role function.  See the module docstring.
	**/
	static public function register_local_role(name:Dynamic, role_fn:Dynamic):Dynamic;
	static public function rfc_reference_role(role:Dynamic, rawtext:Dynamic, text:Dynamic, lineno:Dynamic, inliner:Dynamic, ?options:Dynamic, ?content:Dynamic):Dynamic;
	/**
		Locate and return a role function from its language-dependent name, along
		with a list of system messages.
		
		If the role is not found in the current language, check English. Return a
		2-tuple: role function (``None`` if the named role cannot be found) and a
		list of system messages.
	**/
	static public function role(role_name:Dynamic, language_module:Dynamic, lineno:Dynamic, reporter:Dynamic):Dynamic;
	/**
		Auxiliary function to set options['classes'] and delete
		options['class'].
	**/
	static public function set_classes(options:Dynamic):Dynamic;
	/**
		Add customization options to role functions, unless explicitly set or
		disabled.
	**/
	static public function set_implicit_options(role_fn:Dynamic):Dynamic;
	static public function unimplemented_role(role:Dynamic, rawtext:Dynamic, text:Dynamic, lineno:Dynamic, inliner:Dynamic, ?options:Dynamic, ?content:Dynamic):Dynamic;
}