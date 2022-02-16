/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.common_transformers.anf;
@:pythonImport("tensorflow.python.autograph.pyct.common_transformers.anf") extern class Anf_Module {
	static public var ANY : Dynamic;
	static public function LEAVE(_1:Dynamic, _2:Dynamic, _3:Dynamic):Dynamic;
	static public function REPLACE(_1:Dynamic, _2:Dynamic, _3:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_py2_name_constant(node:Dynamic):Dynamic;
	/**
		Returns whether to consider the given node 'trivial'.
		
		The definition of 'trivial' is a node that can't meaningfully be pulled out
		into its own assignment statement.
		
		This is surprisingly difficult to do robustly across versions of Python and
		gast, as the parsing of constants has changed, if I may, constantly.
		
		Args:
		  node: An AST node to check for triviality
		
		Returns:
		  trivial: A Python `bool` indicating whether the node is trivial.
	**/
	static public function _is_trivial(node:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Converts the given node to A-normal form (ANF).
		
		The general idea of A-normal form: https://en.wikipedia.org/wiki/A-normal_form
		
		The specific converters used here are based on Python AST semantics as
		documented at https://greentreesnakes.readthedocs.io/en/latest/.
		
		What exactly should be considered A-normal form for any given programming
		language is not completely obvious.  The transformation defined here is
		therefore configurable as to which syntax to replace with a fresh variable and
		which to leave be.  The configuration is intentionally flexible enough to
		define very precise variable insertion transformations, should that be
		desired.
		
		The configuration is a list of syntax rules, each of which is a 2-tuple:
		- An `ASTEdgePattern` (which see) defining a type of AST edge, and
		- Whether to transform children of such edges.
		The special object `anf.ANY` may be used as a pattern that matches all edges.
		
		Each replacement directive is one of three possible things:
		- The object `anf.REPLACE`, meaning "Replace this child node with a variable",
		- The object `anf.LEAVE`, meaning "Do not replace this child node with a
		  variable", or
		- A Python callable.  If a callable, it is called with the parent node, the
		  field name, and the child node, and must compute a boolean indicating
		  whether to transform the child node or not.  The callable is free to use
		  whatever context information it chooses.  The callable may be invoked more
		  than once on the same link, and must produce the same answer each time.
		
		The syntax rules are tested in order, and the first match governs.  If no rule
		matches, the node is not transformed.
		
		The above rules notwithstanding,
		- Variable references are never replaced with (fresh) variables, as that would
		  accomplish nothing.
		- The left-hand children of Assign and AugAssign nodes, and the children of
		  Del nodes, are never replaced with variables, as that would break their
		  semantics.
		- The right-hand children of Assign nodes are never replaced with variables,
		  as the original assignment would still have to be present in the result
		  to define the new variable.  (That is, there's no point in transforming
		  `x = sin(y)` into `tmp = sin(y); x = tmp`.)
		- The right-hand children of AugAssign nodes are never replaced with variables
		  either, but only because the difference from Assign was considered a
		  potential source of confusion (and it would have been slightly awkward in
		  the code to treat the RHS differently than the LHS).
		- Various special-purpose AST nodes are not exposed to the configuration, lest
		  the transform produce invalid syntax like, e.g., `tmp = +; x = 1 tmp 2`.
		
		For example, the configuration
		```python
		[(anf.ASTEdgePattern(anf.ANY, anf.ANY, gast.expr), anf.REPLACE)]
		```
		gives explicit fresh names to all expressions regardless of context (except as
		outlined above), whereas
		```python
		[(anf.ASTEdgePattern(gast.If, "test", anf.ANY), anf.REPLACE)]
		```
		only transforms the conditionals of `if` statements (but not, e.g., `while`).
		
		If no configuration is supplied, the default behavior is to transform all
		expressions except literal constants, which is defined as a configuration as
		```python
		# For Python 3, and gast library versions before 0.3
		literals = (gast.Num, gast.Str, gast.Bytes, gast.NameConstant)
		[(anf.ASTEdgePattern(anf.ANY, anf.ANY, literals), anf.LEAVE),
		 (anf.ASTEdgePattern(anf.ANY, anf.ANY, gast.expr), anf.REPLACE)]
		```
		
		Args:
		  node: The node to transform.
		  ctx: transformer.EntityInfo.  TODO(mdan): What information does this
		    argument provide?
		  config: Optional ANF configuration.  If omitted, ANF replaces all expression
		    expect literal constants.
	**/
	static public function transform(node:Dynamic, ctx:Dynamic, ?config:Dynamic):Dynamic;
}