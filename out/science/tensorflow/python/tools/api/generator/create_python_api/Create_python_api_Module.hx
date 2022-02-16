/* This file is generated, do not edit! */
package tensorflow.python.tools.api.generator.create_python_api;
@:pythonImport("tensorflow.python.tools.api.generator.create_python_api") extern class Create_python_api_Module {
	static public var API_ATTRS : Dynamic;
	static public var API_ATTRS_V1 : Dynamic;
	static public var _API_VERSIONS : Dynamic;
	static public var _COMPAT_MODULE_PREFIX : Dynamic;
	static public var _COMPAT_MODULE_TEMPLATE : Dynamic;
	static public var _DEFAULT_PACKAGE : Dynamic;
	static public var _DEPRECATION_FOOTER : Dynamic;
	static public var _GENERATED_FILE_FOOTER : Dynamic;
	static public var _GENERATED_FILE_HEADER : Dynamic;
	static public var _GENFILES_DIR_SUFFIX : Dynamic;
	static public var _LAZY_LOADING : Dynamic;
	static public var _LAZY_LOADING_MODULE_TEXT_TEMPLATE : Dynamic;
	static public var _SUBCOMPAT_MODULE_TEMPLATE : Dynamic;
	static public var _SYMBOLS_TO_SKIP_EXPLICITLY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Split full_name into module and short name.
		
		Args:
		  full_name: Full name of symbol that includes module.
		
		Returns:
		  Full module name and short symbol name.
	**/
	static public function _get_name_and_module(full_name:Dynamic):Dynamic;
	/**
		Concatenate 2 module components.
		
		Args:
		  module1: First module to join.
		  module2: Second module to join.
		
		Returns:
		  Given two modules aaa.bbb and ccc.ddd, returns a joined
		  module aaa.bbb.ccc.ddd.
	**/
	static public function _join_modules(module1:Dynamic, module2:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add imports for the given symbol to `module_code_builder`.
		
		Args:
		  module_code_builder: `_ModuleInitCodeBuilder` instance.
		  symbol: A symbol.
		  source_module_name: Module that we can import the symbol from.
		  source_name: Name we can import the symbol with.
		  api_name: API name. Currently, must be either `tensorflow` or `estimator`.
		  api_version: API version.
		  output_module_prefix: Prefix to prepend to destination module.
	**/
	static public function add_imports_for_symbol(module_code_builder:Dynamic, symbol:Dynamic, source_module_name:Dynamic, source_name:Dynamic, api_name:Dynamic, api_version:Dynamic, ?output_module_prefix:Dynamic):Dynamic;
	/**
		Adds compat.vN.compat.vK modules to module builder.
		
		To avoid circular imports, we want to add __init__.py files under
		compat.vN.compat.vK and under compat.vN.compat.vK.compat. For all other
		imports, we point to corresponding modules under compat.vK.
		
		Args:
		  module_builder: `_ModuleInitCodeBuilder` instance.
		  compat_api_versions: Supported compatibility versions.
		  output_package: Base output python package where generated API will be
		    added.
	**/
	static public function add_nested_compat_imports(module_builder:Dynamic, compat_api_versions:Dynamic, output_package:Dynamic):Dynamic;
	/**
		Creates __init__.py files for the Python API.
		
		Args:
		  output_files: List of __init__.py file paths to create.
		  packages: Base python packages containing python with target tf_export
		    decorators.
		  packages_to_ignore: python packages to be ignored when checking for
		    tf_export decorators.
		  root_init_template: Template for top-level __init__.py file. "# API IMPORTS
		    PLACEHOLDER" comment in the template file will be replaced with imports.
		  output_dir: output API root directory.
		  output_package: Base output package where generated API will be added.
		  api_name: API you want to generate (e.g. `tensorflow` or `estimator`).
		  api_version: API version to generate (`v1` or `v2`).
		  compat_api_versions: Additional API versions to generate in compat/
		    subdirectory.
		  compat_init_templates: List of templates for top level compat init files in
		    the same order as compat_api_versions.
		  lazy_loading: Boolean flag. If True, a lazy loading `__init__.py` file is
		    produced and if `False`, static imports are used.
		  use_relative_imports: True if we should use relative imports when import
		    submodules.
		
		Raises:
		  ValueError: if output_files list is missing a required file.
	**/
	static public function create_api_files(output_files:Dynamic, packages:Dynamic, packages_to_ignore:Dynamic, root_init_template:Dynamic, output_dir:Dynamic, output_package:Dynamic, api_name:Dynamic, api_version:Dynamic, compat_api_versions:Dynamic, compat_init_templates:Dynamic, ?lazy_loading:Dynamic, ?use_relative_imports:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get a map from destination module to __init__.py code for that module.
		
		Args:
		  packages: Base python packages containing python with target tf_export
		    decorators.
		  packages_to_ignore: python packages to be ignored when checking for
		    tf_export decorators.
		  output_package: Base output python package where generated API will be
		    added.
		  api_name: API you want to generate (e.g. `tensorflow` or `estimator`).
		  api_version: API version you want to generate (1 or 2).
		  compat_api_versions: Additional API versions to generate under compat/
		    directory.
		  lazy_loading: Boolean flag. If True, a lazy loading `__init__.py` file is
		    produced and if `False`, static imports are used.
		  use_relative_imports: True if we should use relative imports when importing
		    submodules.
		
		Returns:
		  A dictionary where
		    key: (string) destination module (for e.g. tf or tf.consts).
		    value: (string) text that should be in __init__.py files for
		      corresponding modules.
	**/
	static public function get_api_init_text(packages:Dynamic, packages_to_ignore:Dynamic, output_package:Dynamic, api_name:Dynamic, api_version:Dynamic, ?compat_api_versions:Dynamic, ?lazy_loading:Dynamic, ?use_relative_imports:Dynamic):Dynamic;
	/**
		Obtain one single import from a set of possible sources of a symbol.
		
		One symbol might come from multiple places as it is being imported and
		reexported. To simplify API changes, we always use the same import for the
		same module, and give preference based on higher priority and alphabetical
		ordering.
		
		Args:
		  import_set: (set) Imports providing the same symbol. This is a set of tuples
		    in the form (import, priority). We want to pick an import with highest
		    priority.
		
		Returns:
		  A module name to import
	**/
	static public function get_canonical_import(import_set:Dynamic):Dynamic;
	/**
		Get module that corresponds to path relative to relative_to_dir.
		
		Args:
		  dir_path: Path to directory.
		  relative_to_dir: Get module relative to this directory.
		
		Returns:
		  Name of module that corresponds to the given directory.
	**/
	static public function get_module(dir_path:Dynamic, relative_to_dir:Dynamic):Dynamic;
	/**
		Get docstring for the given module.
		
		This method looks for docstring in the following order:
		1. Checks if module has a docstring specified in doc_srcs.
		2. Checks if module has a docstring source module specified
		   in doc_srcs. If it does, gets docstring from that module.
		3. Checks if module with module_name exists under base package.
		   If it does, gets docstring from that module.
		4. Returns a default docstring.
		
		Args:
		  module_name: module name relative to tensorflow (excluding 'tensorflow.'
		    prefix) to get a docstring for.
		  package: Base python package containing python with target tf_export
		    decorators.
		  api_name: API you want to generate (e.g. `tensorflow` or `estimator`).
		
		Returns:
		  One-line docstring to describe the module.
	**/
	static public function get_module_docstring(module_name:Dynamic, _package:Dynamic, api_name:Dynamic):Dynamic;
	static public function main():Dynamic;
	static public var print_function : Dynamic;
}