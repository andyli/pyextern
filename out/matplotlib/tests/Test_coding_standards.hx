/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_coding_standards") extern class Test_coding_standards {
	static public var EXCLUDE_FILES : Dynamic;
	static public var EXPECTED_BAD_FILES : Dynamic;
	static public var EXTRA_EXCLUDE_FILE : Dynamic;
	static public var HAS_PEP8 : Dynamic;
	static public var PEP8_ADDITIONAL_IGNORE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	static public function assert_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Tests the matplotlib codebase against the "pep8" tool.
		
		Users can add their own excluded files (should files exist in the
		local directory which is not in the repository) by adding a
		".pep8_test_exclude.txt" file in the same directory as this test.
		The file should be a line separated list of filenames/directories
		as can be passed to the "pep8" tool's exclude list.
	**/
	static public function assert_pep8_conformance(?module:Dynamic, ?exclude_files:Dynamic, ?extra_exclude_file:Dynamic, ?pep8_additional_ignore:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Test whether FILENAME matches PATTERN.
		
		Patterns are Unix shell style:
		
		*       matches everything
		?       matches any single character
		[seq]   matches any character in seq
		[!seq]  matches any char not in seq
		
		An initial period in FILENAME is not special.
		Both FILENAME and PATTERN are first case-normalized
		if the operating system requires it.
		If you don't want this, use fnmatchcase(FILENAME, PATTERN).
	**/
	static public function fnmatch(name:Dynamic, pat:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function test_pep8_conformance():Dynamic;
	static public var unicode_literals : Dynamic;
}