/* This file is generated, do not edit! */
package docutils.transforms.peps;
@:pythonImport("docutils.transforms.peps") extern class Peps_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Mask the email address in `ref` and return a replacement node.
		
		`ref` is returned unchanged if it contains no email address.
		
		For email addresses such as "user@host", mask the address as "user at
		host" (text) to thwart simple email address harvesters (except for those
		listed in `non_masked_addresses`).  If a PEP number (`pepno`) is given,
		return a reference including a default email subject.
	**/
	static public function mask_email(ref:Dynamic, ?pepno:Dynamic):Dynamic;
	static public var non_masked_addresses : Dynamic;
}