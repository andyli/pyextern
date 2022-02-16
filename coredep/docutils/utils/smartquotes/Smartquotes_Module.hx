/* This file is generated, do not edit! */
package docutils.utils.smartquotes;
@:pythonImport("docutils.utils.smartquotes") extern class Smartquotes_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var default_smartypants_attr : Dynamic;
	/**
		Parameter:  String (unicode or bytes).
		Returns:    The `text`, with ``backticks'' -style double quotes
		            translated into HTML curly quote entities.
		Example input:  ``Isn't this fun?''
		Example output: “Isn't this fun?“;
	**/
	static public function educateBackticks(text:Dynamic, ?language:Dynamic):Dynamic;
	/**
		Parameter:  String (unicode or bytes).
		Returns:    The `text`, with each instance of "--" translated to
		            an em-dash character.
	**/
	static public function educateDashes(text:Dynamic):Dynamic;
	/**
		Parameter:  String (unicode or bytes).
		Returns:    The `text`, with each instance of "--" translated to
		            an en-dash character, and each "---" translated to
		            an em-dash character.
	**/
	static public function educateDashesOldSchool(text:Dynamic):Dynamic;
	/**
		Parameter:  String (unicode or bytes).
		Returns:    The `text`, with each instance of "--" translated to
		            an em-dash character, and each "---" translated to
		            an en-dash character. Two reasons why: First, unlike the
		            en- and em-dash syntax supported by
		            EducateDashesOldSchool(), it's compatible with existing
		            entries written before SmartyPants 1.1, back when "--" was
		            only used for em-dashes.  Second, em-dashes are more
		            common than en-dashes, and so it sort of makes sense that
		            the shortcut should be shorter to type. (Thanks to Aaron
		            Swartz for the idea.)
	**/
	static public function educateDashesOldSchoolInverted(text:Dynamic):Dynamic;
	/**
		Parameter:  String (unicode or bytes).
		Returns:    The `text`, with each instance of "..." translated to
		            an ellipsis character.
		
		Example input:  Huh...?
		Example output: Huh&#8230;?
	**/
	static public function educateEllipses(text:Dynamic):Dynamic;
	/**
		Parameter:  - text string (unicode or bytes).
		            - language (`BCP 47` language tag.)
		Returns:    The `text`, with "educated" curly quote characters.
		
		Example input:  "Isn't this fun?"
		Example output: “Isn’t this fun?“;
	**/
	static public function educateQuotes(text:Dynamic, ?language:Dynamic):Dynamic;
	/**
		Parameter:  String (unicode or bytes).
		Returns:    The `text`, with `backticks' -style single quotes
		            translated into HTML curly quote entities.
		
		Example input:  `Isn't this fun?'
		Example output: ‘Isn’t this fun?’
	**/
	static public function educateSingleBackticks(text:Dynamic, ?language:Dynamic):Dynamic;
	/**
		Return iterator that "educates" the items of `text_tokens`.
		    
	**/
	static public function educate_tokens(text_tokens:Dynamic, ?attr:Dynamic, ?language:Dynamic):Dynamic;
	static public var options : Dynamic;
	static public var print_function : Dynamic;
	/**
		Parameter:  String (unicode or bytes).
		Returns:    The `text`, with after processing the following backslash
		            escape sequences. This is useful if you want to force a "dumb"
		            quote or other character to appear.
		
		            Escape  Value
		            ------  -----
		            \\      &#92;
		            \"      &#34;
		            \'      &#39;
		            \.      &#46;
		            \-      &#45;
		            \`      &#96;
	**/
	static public function processEscapes(text:Dynamic, ?restore:Dynamic):Dynamic;
	/**
		Main function for "traditional" use.
	**/
	static public function smartyPants(text:Dynamic, ?attr:Dynamic, ?language:Dynamic):Dynamic;
	/**
		Parameter:  String (unicode or bytes).
		Returns:    The `text`, with each SmartyPants character translated to
		            its ASCII counterpart.
		
		Example input:  “Hello — world.”
		Example output: "Hello -- world."
	**/
	static public function stupefyEntities(text:Dynamic, ?language:Dynamic):Dynamic;
	/**
		Parameter:  String containing HTML markup.
		Returns:    An iterator that yields the tokens comprising the input
		            string. Each token is either a tag (possibly with nested,
		            tags contained therein, such as <a href="<MTFoo>">, or a
		            run of text between tags. Each yielded element is a
		            two-element tuple; the first is either 'tag' or 'text';
		            the second is the actual value.
		
		Based on the _tokenize() subroutine from Brad Choate's MTRegex plugin.
		    <http://www.bradchoate.com/past/mtregex.php>
	**/
	static public function tokenize(text:Dynamic):Dynamic;
}