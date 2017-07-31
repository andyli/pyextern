/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.http_util;
@:pythonImport("tensorflow.tensorboard.backend.http_util") extern class Http_util_Module {
	/**
		Construct a werkzeug Response.
		
		Responses are transmitted to the browser with compression if: a) the browser
		supports it; b) it's sane to compress the content_type in question; and c)
		the content isn't already compressed, as indicated by the content_encoding
		parameter.
		
		Browser and proxy caching is completely disabled by default. If the expires
		parameter is greater than zero then the response will be able to be cached by
		the browser for that many seconds; however, proxies are still forbidden from
		caching so that developers can bypass the cache with Ctrl+Shift+R.
		
		For textual content that isn't JSON, the encoding parameter is used as the
		transmission charset which is automatically appended to the Content-Type
		header. That is unless of course the content_type parameter contains a
		charset parameter. If the two disagree, the characters in content will be
		transcoded to the latter.
		
		If content_type declares a JSON media type, then content MAY be a dict, list,
		tuple, or set, in which case this function has an implicit composition with
		json_util.Cleanse and json.dumps. The encoding parameter is used to decode
		byte strings within the JSON object; therefore transmitting binary data
		within JSON is not permitted. JSON is transmitted as ASCII unless the
		content_type parameter explicitly defines a charset parameter, in which case
		the serialized JSON bytes will use that instead of escape sequences.
		
		Args:
		  request: A werkzeug Request object. Used mostly to check the
		    Accept-Encoding header.
		  content: Payload data as byte string, unicode string, or maybe JSON.
		  content_type: Media type and optionally an output charset.
		  code: Numeric HTTP status code to use.
		  expires: Second duration for browser caching.
		  content_encoding: Encoding if content is already encoded, e.g. 'gzip'.
		  encoding: Input charset if content parameter has byte strings.
		
		Returns:
		  A werkzeug Response object (a WSGI application).
	**/
	static public function Respond(request:Dynamic, content:Dynamic, content_type:Dynamic, ?code:Dynamic, ?expires:Dynamic, ?content_encoding:Dynamic, ?encoding:Dynamic):Dynamic;
	static public var _ALLOWS_GZIP_PATTERN : Dynamic;
	static public var _EXTRACT_CHARSET_PATTERN : Dynamic;
	static public var _EXTRACT_MIMETYPE_PATTERN : Dynamic;
	static public var _JSON_MIMETYPES : Dynamic;
	static public var _TEXTUAL_MIMETYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
}