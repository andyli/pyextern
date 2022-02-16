/* This file is generated, do not edit! */
package tensorflow.lite.toco.logging.gen_html;
@:pythonImport("tensorflow.lite.toco.logging.gen_html", "HTMLGenerator") extern class HTMLGenerator {
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
		Reads the HTML template content.
		
		Args:
		  html_template_path: A string, path to the template HTML file.
		  export_report_path: A string, path to the generated HTML report. This path
		    should point to a '.html' file with date and time in its name.
		    e.g. 2019-01-01-10:05.toco_report.html.
		
		Raises:
		  IOError: File doesn't exist.
	**/
	@:native("__init__")
	public function ___init__(html_template_path:Dynamic, export_report_path:Dynamic):Dynamic;
	/**
		Reads the HTML template content.
		
		Args:
		  html_template_path: A string, path to the template HTML file.
		  export_report_path: A string, path to the generated HTML report. This path
		    should point to a '.html' file with date and time in its name.
		    e.g. 2019-01-01-10:05.toco_report.html.
		
		Raises:
		  IOError: File doesn't exist.
	**/
	public function new(html_template_path:Dynamic, export_report_path:Dynamic):Void;
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
		Generates the HTML report and writes it to local directory.
		
		This function uses the fields in `toco_conversion_log_before` and
		`toco_conversion_log_after` to populate the HTML content. Certain markers
		(placeholders) in the HTML template are then substituted with the fields
		from the protos. Once finished it will write the HTML file to the specified
		local file path.
		
		Args:
		  toco_conversion_log_before: A `TocoConversionLog` protobuf generated
		    before the model is converted by TOCO.
		  toco_conversion_log_after: A `TocoConversionLog` protobuf generated after
		    the model is converted by TOCO.
		  post_training_quant_enabled: A boolean, whether post-training quantization
		    is enabled.
		  dot_before: A string, the dot representation of the model
		    before the conversion.
		  dot_after: A string, the dot representation of the model after
		    the conversion.
		  toco_err_log: A string, the logs emitted by TOCO during conversion. Caller
		    need to ensure that this string is properly anonymized (any kind of
		    user data should be eliminated).
		  tflite_graph_path: A string, the filepath to the converted TFLite model.
		
		Raises:
		  RuntimeError: When error occurs while generating the template.
	**/
	public function generate(toco_conversion_log_before:Dynamic, toco_conversion_log_after:Dynamic, post_training_quant_enabled:Dynamic, dot_before:Dynamic, dot_after:Dynamic, ?toco_err_log:Dynamic, ?tflite_graph_path:Dynamic):Dynamic;
}