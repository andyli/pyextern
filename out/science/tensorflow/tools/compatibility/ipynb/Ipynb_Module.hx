/* This file is generated, do not edit! */
package tensorflow.tools.compatibility.ipynb;
@:pythonImport("tensorflow.tools.compatibility.ipynb") extern class Ipynb_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Loads the ipynb file and returns a list of CodeLines.
	**/
	static public function _get_code(input_file:Dynamic):Dynamic;
	/**
		Updates notebook, once migration is done.
	**/
	static public function _update_notebook(original_notebook:Dynamic, original_raw_lines:Dynamic, updated_code_lines:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks if a line was split with `\`.
		
		Args:
		    code_line: A line of Python code
		
		Returns:
		  If the line was split with `\`
		
		>>> skip_magic("!gcloud ml-engine models create ${MODEL} \\\n")
		True
	**/
	static public function check_line_split(code_line:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Checks if the cell consists of Python code.
	**/
	static public function is_python(cell:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		The function where we inject the support for ipynb upgrade.
	**/
	static public function process_file(in_filename:Dynamic, out_filename:Dynamic, upgrader:Dynamic):Dynamic;
	/**
		Checks if the cell has magic, that is not Python-based.
		
		Args:
		    code_line: A line of Python code
		    magic_list: A list of jupyter "magic" exceptions
		
		Returns:
		  If the line jupyter "magic" line, not Python line
		
		 >>> skip_magic('!ls -laF', ['%', '!', '?'])
		True
	**/
	static public function skip_magic(code_line:Dynamic, magic_list:Dynamic):Dynamic;
}