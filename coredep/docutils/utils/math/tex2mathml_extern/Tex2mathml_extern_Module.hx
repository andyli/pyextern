/* This file is generated, do not edit! */
package docutils.utils.math.tex2mathml_extern;
@:pythonImport("docutils.utils.math.tex2mathml_extern") extern class Tex2mathml_extern_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert LaTeX math code to MathML with blahtexml_
		
		.. _blahtexml: http://gva.noekeon.org/blahtexml/
	**/
	static public function blahtexml(math_code:Dynamic, ?_inline:Dynamic, ?reporter:Dynamic):Dynamic;
	static public var document_template : Dynamic;
	/**
		Convert LaTeX math code to MathML with LaTeXML_
		
		.. _LaTeXML: http://dlmf.nist.gov/LaTeXML/
	**/
	static public function latexml(math_code:Dynamic, ?reporter:Dynamic):Dynamic;
	/**
		Convert LaTeX math code to MathML with TtM_
		
		.. _TtM: http://hutchinson.belmont.ma.us/tth/mml/
	**/
	static public function ttm(math_code:Dynamic, ?reporter:Dynamic):Dynamic;
}