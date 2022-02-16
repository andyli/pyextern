/* This file is generated, do not edit! */
package docutils.writers.odf_odt;
@:pythonImport("docutils.writers.odf_odt") extern class Odf_odt_Module {
	static public var BUILTIN_DEFAULT_TABLE_STYLE : Dynamic;
	static public var CNSD : Dynamic;
	static public var CONTENT_NAMESPACE_ATTRIB : Dynamic;
	static public var CONTENT_NAMESPACE_DICT : Dynamic;
	static public function Element(tag:Dynamic, ?attrib:Dynamic, ?nsmap:Dynamic, ?nsdict:Dynamic):Dynamic;
	static public var FILL_PAT1 : Dynamic;
	static public var FILL_PAT2 : Dynamic;
	static public var GENERATOR_DESC : Dynamic;
	static public var IMAGE_NAME_COUNTER : Dynamic;
	static public var MANIFEST_NAMESPACE_ATTRIB : Dynamic;
	static public var MANIFEST_NAMESPACE_DICT : Dynamic;
	static public var MANNSD : Dynamic;
	static public var META_NAMESPACE_ATTRIB : Dynamic;
	static public var META_NAMESPACE_DICT : Dynamic;
	static public var METNSD : Dynamic;
	static public var NAME_SPACE_1 : Dynamic;
	static public var PIL : Dynamic;
	static public var SNSD : Dynamic;
	static public var SPACES_PATTERN : Dynamic;
	static public var STYLES_NAMESPACE_ATTRIB : Dynamic;
	static public var STYLES_NAMESPACE_DICT : Dynamic;
	static public function SubElement(parent:Dynamic, tag:Dynamic, ?attrib:Dynamic, ?nsmap:Dynamic, ?nsdict:Dynamic):Dynamic;
	static public var TABLENAMEDEFAULT : Dynamic;
	static public var TABLEPROPERTYNAMES : Dynamic;
	static public var TABLESTYLEPREFIX : Dynamic;
	static public var TABS_PATTERN : Dynamic;
	static public function ToString(et:Dynamic):Dynamic;
	static public var VERSION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _parents : Dynamic;
	static public var absolute_import : Dynamic;
	static public function add_ns(tag:Dynamic, ?nsdict:Dynamic):Dynamic;
	static public function escape_cdata(text:Dynamic):Dynamic;
	static public function fix_ns(tag:Dynamic, attrib:Dynamic, nsdict:Dynamic):Dynamic;
	static public var pygments : Dynamic;
	/**
		Open the URL url, which can be either a string or a Request object.
		
		*data* must be an object specifying additional data to be sent to
		the server, or None if no such data is needed.  See Request for
		details.
		
		urllib.request module uses HTTP/1.1 and includes a "Connection:close"
		header in its HTTP requests.
		
		The optional *timeout* parameter specifies a timeout in seconds for
		blocking operations like the connection attempt (if not specified, the
		global default timeout setting will be used). This only works for HTTP,
		HTTPS and FTP connections.
		
		If *context* is specified, it must be a ssl.SSLContext instance describing
		the various SSL options. See HTTPSConnection for more details.
		
		The optional *cafile* and *capath* parameters specify a set of trusted CA
		certificates for HTTPS requests. cafile should point to a single file
		containing a bundle of CA certificates, whereas capath should point to a
		directory of hashed certificate files. More information can be found in
		ssl.SSLContext.load_verify_locations().
		
		The *cadefault* parameter is ignored.
		
		This function always returns an object which can work as a context
		manager and has methods such as
		
		* geturl() - return the URL of the resource retrieved, commonly used to
		  determine if a redirect was followed
		
		* info() - return the meta-information of the page, such as headers, in the
		  form of an email.message_from_string() instance (see Quick Reference to
		  HTTP Headers)
		
		* getcode() - return the HTTP status code of the response.  Raises URLError
		  on errors.
		
		For HTTP and HTTPS URLs, this function returns a http.client.HTTPResponse
		object slightly modified. In addition to the three new methods above, the
		msg attribute contains the same information as the reason attribute ---
		the reason phrase returned by the server --- instead of the response
		headers as it is specified in the documentation for HTTPResponse.
		
		For FTP, file, and data URLs and requests explicitly handled by legacy
		URLopener and FancyURLopener classes, this function returns a
		urllib.response.addinfourl object.
		
		Note that None may be returned if no handler handles the request (though
		the default installed global OpenerDirector uses UnknownHandler to ensure
		this never happens).
		
		In addition, if proxy settings are detected (for example, when a *_proxy
		environment variable like http_proxy is set), ProxyHandler is default
		installed and makes sure the requests are handled through the proxy.
	**/
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
}