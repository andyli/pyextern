/* This file is generated, do not edit! */
package selenium.webdriver.remote.webelement;
@:pythonImport("selenium.webdriver.remote.webelement") extern class Webelement_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _pkg : Dynamic;
	/**
		Decode the Base64 encoded bytes-like object or ASCII string s.
		
		Optional altchars must be a bytes-like object or ASCII string of length 2
		which specifies the alternative alphabet used instead of the '+' and '/'
		characters.
		
		The result is returned as a bytes object.  A binascii.Error is raised if
		s is incorrectly padded.
		
		If validate is False (the default), characters that are neither in the
		normal base-64 alphabet nor the alternative alphabet are discarded prior
		to the padding check.  If validate is True, these non-alphabet characters
		in the input result in a binascii.Error.
	**/
	static public function b64decode(s:Dynamic, ?altchars:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Encode a bytestring into a bytes object containing multiple lines
		of base-64 data.
	**/
	static public function encodebytes(s:Dynamic):Dynamic;
	static public var getAttribute_js : Dynamic;
	static public var isDisplayed_js : Dynamic;
	/**
		Processes the values that will be typed in the element.
	**/
	static public function keys_to_typing(value:Dynamic):Dynamic;
	/**
		Returns a md5 hash object; optionally initialized with a string
	**/
	static public function md5_hash(?string:Dynamic):Dynamic;
}