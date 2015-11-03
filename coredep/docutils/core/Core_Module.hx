/* This file is generated, do not edit! */
package docutils.core;
@:pythonImport("docutils.core") extern class Core_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var __version_details__ : Dynamic;
	static public var default_description : Dynamic;
	static public var default_usage : Dynamic;
	/**
		Set up & run a `Publisher` for command-line-based file I/O (input and
		output file paths taken automatically from the command line).  Return the
		encoded string output also.
		
		Parameters: see `publish_programmatically` for the remainder.
		
		- `argv`: Command-line argument list to use instead of ``sys.argv[1:]``.
		- `usage`: Usage string, output if there's a problem parsing the command
		  line.
		- `description`: Program description, output for the "--help" option
		  (along with command-line option descriptions).
	**/
	static public function publish_cmdline(?reader:Dynamic, ?reader_name:Dynamic, ?parser:Dynamic, ?parser_name:Dynamic, ?writer:Dynamic, ?writer_name:Dynamic, ?settings:Dynamic, ?settings_spec:Dynamic, ?settings_overrides:Dynamic, ?config_section:Dynamic, ?enable_exit_status:Dynamic, ?argv:Dynamic, ?usage:Dynamic, ?description:Dynamic):Dynamic;
	/**
		Set up & run a `Publisher` for command-line-based file I/O (input and
		output file paths taken automatically from the command line).  Return the
		encoded string output also.
		
		This is just like publish_cmdline, except that it uses
		io.BinaryFileOutput instead of io.FileOutput.
		
		Parameters: see `publish_programmatically` for the remainder.
		
		- `argv`: Command-line argument list to use instead of ``sys.argv[1:]``.
		- `usage`: Usage string, output if there's a problem parsing the command
		  line.
		- `description`: Program description, output for the "--help" option
		  (along with command-line option descriptions).
	**/
	static public function publish_cmdline_to_binary(?reader:Dynamic, ?reader_name:Dynamic, ?parser:Dynamic, ?parser_name:Dynamic, ?writer:Dynamic, ?writer_name:Dynamic, ?settings:Dynamic, ?settings_spec:Dynamic, ?settings_overrides:Dynamic, ?config_section:Dynamic, ?enable_exit_status:Dynamic, ?argv:Dynamic, ?usage:Dynamic, ?description:Dynamic, ?destination:Dynamic, ?destination_class:Dynamic):Dynamic;
	/**
		Set up & run a `Publisher` for programmatic use with string I/O.
		Return the document tree.
		
		For encoded string input, be sure to set the 'input_encoding' setting to
		the desired encoding.  Set it to 'unicode' for unencoded Unicode string
		input.  Here's one way::
		
		    publish_doctree(..., settings_overrides={'input_encoding': 'unicode'})
		
		Parameters: see `publish_programmatically`.
	**/
	static public function publish_doctree(source:Dynamic, ?source_path:Dynamic, ?source_class:Dynamic, ?reader:Dynamic, ?reader_name:Dynamic, ?parser:Dynamic, ?parser_name:Dynamic, ?settings:Dynamic, ?settings_spec:Dynamic, ?settings_overrides:Dynamic, ?config_section:Dynamic, ?enable_exit_status:Dynamic):Dynamic;
	/**
		Set up & run a `Publisher` for programmatic use with file-like I/O.
		Return the encoded string output also.
		
		Parameters: see `publish_programmatically`.
	**/
	static public function publish_file(?source:Dynamic, ?source_path:Dynamic, ?destination:Dynamic, ?destination_path:Dynamic, ?reader:Dynamic, ?reader_name:Dynamic, ?parser:Dynamic, ?parser_name:Dynamic, ?writer:Dynamic, ?writer_name:Dynamic, ?settings:Dynamic, ?settings_spec:Dynamic, ?settings_overrides:Dynamic, ?config_section:Dynamic, ?enable_exit_status:Dynamic):Dynamic;
	/**
		Set up & run a `Publisher` to render from an existing document
		tree data structure, for programmatic use with string I/O.  Return
		the encoded string output.
		
		Note that document.settings is overridden; if you want to use the settings
		of the original `document`, pass settings=document.settings.
		
		Also, new document.transformer and document.reporter objects are
		generated.
		
		For encoded string output, be sure to set the 'output_encoding' setting to
		the desired encoding.  Set it to 'unicode' for unencoded Unicode string
		output.  Here's one way::
		
		    publish_from_doctree(
		        ..., settings_overrides={'output_encoding': 'unicode'})
		
		Parameters: `document` is a `docutils.nodes.document` object, an existing
		document tree.
		
		Other parameters: see `publish_programmatically`.
	**/
	static public function publish_from_doctree(document:Dynamic, ?destination_path:Dynamic, ?writer:Dynamic, ?writer_name:Dynamic, ?settings:Dynamic, ?settings_spec:Dynamic, ?settings_overrides:Dynamic, ?config_section:Dynamic, ?enable_exit_status:Dynamic):Dynamic;
	/**
		Set up & run a `Publisher`, and return a dictionary of document parts.
		Dictionary keys are the names of parts, and values are Unicode strings;
		encoding is up to the client.  For programmatic use with string I/O.
		
		For encoded string input, be sure to set the 'input_encoding' setting to
		the desired encoding.  Set it to 'unicode' for unencoded Unicode string
		input.  Here's how::
		
		    publish_parts(..., settings_overrides={'input_encoding': 'unicode'})
		
		Parameters: see `publish_programmatically`.
	**/
	static public function publish_parts(source:Dynamic, ?source_path:Dynamic, ?source_class:Dynamic, ?destination_path:Dynamic, ?reader:Dynamic, ?reader_name:Dynamic, ?parser:Dynamic, ?parser_name:Dynamic, ?writer:Dynamic, ?writer_name:Dynamic, ?settings:Dynamic, ?settings_spec:Dynamic, ?settings_overrides:Dynamic, ?config_section:Dynamic, ?enable_exit_status:Dynamic):Dynamic;
	/**
		Set up & run a `Publisher` for custom programmatic use.  Return the
		encoded string output and the Publisher object.
		
		Applications should not need to call this function directly.  If it does
		seem to be necessary to call this function directly, please write to the
		Docutils-develop mailing list
		<http://docutils.sf.net/docs/user/mailing-lists.html#docutils-develop>.
		
		Parameters:
		
		* `source_class` **required**: The class for dynamically created source
		  objects.  Typically `io.FileInput` or `io.StringInput`.
		
		* `source`: Type depends on `source_class`:
		
		  - If `source_class` is `io.FileInput`: Either a file-like object
		    (must have 'read' and 'close' methods), or ``None``
		    (`source_path` is opened).  If neither `source` nor
		    `source_path` are supplied, `sys.stdin` is used.
		
		  - If `source_class` is `io.StringInput` **required**: The input
		    string, either an encoded 8-bit string (set the
		    'input_encoding' setting to the correct encoding) or a Unicode
		    string (set the 'input_encoding' setting to 'unicode').
		
		* `source_path`: Type depends on `source_class`:
		
		  - `io.FileInput`: Path to the input file, opened if no `source`
		    supplied.
		
		  - `io.StringInput`: Optional.  Path to the file or object that produced
		    `source`.  Only used for diagnostic output.
		
		* `destination_class` **required**: The class for dynamically created
		  destination objects.  Typically `io.FileOutput` or `io.StringOutput`.
		
		* `destination`: Type depends on `destination_class`:
		
		  - `io.FileOutput`: Either a file-like object (must have 'write' and
		    'close' methods), or ``None`` (`destination_path` is opened).  If
		    neither `destination` nor `destination_path` are supplied,
		    `sys.stdout` is used.
		
		  - `io.StringOutput`: Not used; pass ``None``.
		
		* `destination_path`: Type depends on `destination_class`:
		
		  - `io.FileOutput`: Path to the output file.  Opened if no `destination`
		    supplied.
		
		  - `io.StringOutput`: Path to the file or object which will receive the
		    output; optional.  Used for determining relative paths (stylesheets,
		    source links, etc.).
		
		* `reader`: A `docutils.readers.Reader` object.
		
		* `reader_name`: Name or alias of the Reader class to be instantiated if
		  no `reader` supplied.
		
		* `parser`: A `docutils.parsers.Parser` object.
		
		* `parser_name`: Name or alias of the Parser class to be instantiated if
		  no `parser` supplied.
		
		* `writer`: A `docutils.writers.Writer` object.
		
		* `writer_name`: Name or alias of the Writer class to be instantiated if
		  no `writer` supplied.
		
		* `settings`: A runtime settings (`docutils.frontend.Values`) object, for
		  dotted-attribute access to runtime settings.  It's the end result of the
		  `SettingsSpec`, config file, and option processing.  If `settings` is
		  passed, it's assumed to be complete and no further setting/config/option
		  processing is done.
		
		* `settings_spec`: A `docutils.SettingsSpec` subclass or object.  Provides
		  extra application-specific settings definitions independently of
		  components.  In other words, the application becomes a component, and
		  its settings data is processed along with that of the other components.
		  Used only if no `settings` specified.
		
		* `settings_overrides`: A dictionary containing application-specific
		  settings defaults that override the defaults of other components.
		  Used only if no `settings` specified.
		
		* `config_section`: A string, the name of the configuration file section
		  for this application.  Overrides the ``config_section`` attribute
		  defined by `settings_spec`.  Used only if no `settings` specified.
		
		* `enable_exit_status`: Boolean; enable exit status at end of processing?
	**/
	static public function publish_programmatically(source_class:Dynamic, source:Dynamic, source_path:Dynamic, destination_class:Dynamic, destination:Dynamic, destination_path:Dynamic, reader:Dynamic, reader_name:Dynamic, parser:Dynamic, parser_name:Dynamic, writer:Dynamic, writer_name:Dynamic, settings:Dynamic, settings_spec:Dynamic, settings_overrides:Dynamic, config_section:Dynamic, enable_exit_status:Dynamic):Dynamic;
	/**
		Set up & run a `Publisher` for programmatic use with string I/O.  Return
		the encoded string or Unicode string output.
		
		For encoded string output, be sure to set the 'output_encoding' setting to
		the desired encoding.  Set it to 'unicode' for unencoded Unicode string
		output.  Here's one way::
		
		    publish_string(..., settings_overrides={'output_encoding': 'unicode'})
		
		Similarly for Unicode string input (`source`)::
		
		    publish_string(..., settings_overrides={'input_encoding': 'unicode'})
		
		Parameters: see `publish_programmatically`.
	**/
	static public function publish_string(source:Dynamic, ?source_path:Dynamic, ?destination_path:Dynamic, ?reader:Dynamic, ?reader_name:Dynamic, ?parser:Dynamic, ?parser_name:Dynamic, ?writer:Dynamic, ?writer_name:Dynamic, ?settings:Dynamic, ?settings_spec:Dynamic, ?settings_overrides:Dynamic, ?config_section:Dynamic, ?enable_exit_status:Dynamic):Dynamic;
}