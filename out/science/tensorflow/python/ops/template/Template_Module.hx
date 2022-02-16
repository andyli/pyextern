/* This file is generated, do not edit! */
package tensorflow.python.ops.template;
@:pythonImport("tensorflow.python.ops.template") extern class Template_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Skips items that the target stacktrace shares with the base stacktrace.
	**/
	static public function _skip_common_stack_elements(stacktrace:Dynamic, base_case:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Given an arbitrary function, wrap it so that it does variable sharing.
		
		This wraps `func_` in a Template and partially evaluates it. Templates are
		functions that create variables the first time they are called and reuse them
		thereafter. In order for `func_` to be compatible with a `Template` it must
		have the following properties:
		
		* The function should create all trainable variables and any variables that
		   should be reused by calling `tf.compat.v1.get_variable`. If a trainable
		   variable is
		   created using `tf.Variable`, then a ValueError will be thrown. Variables
		   that are intended to be locals can be created by specifying
		   `tf.Variable(..., trainable=false)`.
		* The function may use variable scopes and other templates internally to
		    create and reuse variables, but it shouldn't use
		    `tf.compat.v1.global_variables` to
		    capture variables that are defined outside of the scope of the function.
		* Internal scopes and variable names should not depend on any arguments that
		    are not supplied to `make_template`. In general you will get a ValueError
		    telling you that you are trying to reuse a variable that doesn't exist
		    if you make a mistake.
		
		In the following example, both `z` and `w` will be scaled by the same `y`. It
		is important to note that if we didn't assign `scalar_name` and used a
		different name for z and w that a `ValueError` would be thrown because it
		couldn't reuse the variable.
		
		```python
		def my_op(x, scalar_name):
		  var1 = tf.compat.v1.get_variable(scalar_name,
		                         shape=[],
		                         initializer=tf.compat.v1.constant_initializer(1))
		  return x * var1
		
		scale_by_y = tf.compat.v1.make_template('scale_by_y', my_op, scalar_name='y')
		
		z = scale_by_y(input1)
		w = scale_by_y(input2)
		```
		
		As a safe-guard, the returned function will raise a `ValueError` after the
		first call if trainable variables are created by calling `tf.Variable`.
		
		If all of these are true, then 2 properties are enforced by the template:
		
		1. Calling the same template multiple times will share all non-local
		    variables.
		2. Two different templates are guaranteed to be unique, unless you reenter the
		    same variable scope as the initial definition of a template and redefine
		    it. An examples of this exception:
		
		```python
		def my_op(x, scalar_name):
		  var1 = tf.compat.v1.get_variable(scalar_name,
		                         shape=[],
		                         initializer=tf.compat.v1.constant_initializer(1))
		  return x * var1
		
		with tf.compat.v1.variable_scope('scope') as vs:
		  scale_by_y = tf.compat.v1.make_template('scale_by_y', my_op,
		  scalar_name='y')
		  z = scale_by_y(input1)
		  w = scale_by_y(input2)
		
		# Creates a template that reuses the variables above.
		with tf.compat.v1.variable_scope(vs, reuse=True):
		  scale_by_y2 = tf.compat.v1.make_template('scale_by_y', my_op,
		  scalar_name='y')
		  z2 = scale_by_y2(input1)
		  w2 = scale_by_y2(input2)
		```
		
		Depending on the value of `create_scope_now_`, the full variable scope may be
		captured either at the time of first call or at the time of construction. If
		this option is set to True, then all Tensors created by repeated calls to the
		template will have an extra trailing _N+1 to their name, as the first time the
		scope is entered in the Template constructor no Tensors are created.
		
		Note: `name_`, `func_` and `create_scope_now_` have a trailing underscore to
		reduce the likelihood of collisions with kwargs.
		
		Args:
		  name_: A name for the scope created by this template. If necessary, the name
		    will be made unique by appending `_N` to the name.
		  func_: The function to wrap.
		  create_scope_now_: Boolean controlling whether the scope should be created
		    when the template is constructed or when the template is called. Default
		    is False, meaning the scope is created when the template is called.
		  unique_name_: When used, it overrides name_ and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is false,
		    an error is raised. Defaults to None.
		  custom_getter_: Optional custom getter for variables used in `func_`. See
		    the `tf.compat.v1.get_variable` `custom_getter` documentation for more
		    information.
		  **kwargs: Keyword arguments to apply to `func_`.
		
		Returns:
		  A function to encapsulate a set of variables which should be created once
		  and reused. An enclosing scope will be created either when `make_template`
		  is called or when the result is called, depending on the value of
		  `create_scope_now_`. Regardless of the value, the first time the template
		  is called it will enter the scope with no reuse, and call `func_` to create
		  variables, which are guaranteed to be unique. All subsequent calls will
		  re-enter the scope and reuse those variables.
		
		Raises:
		  ValueError: if `name_` is None.
	**/
	static public function make_template(name_:Dynamic, func_:Dynamic, ?create_scope_now_:Dynamic, ?unique_name_:Dynamic, ?custom_getter_:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a template, optionally compiling func_ into a graph function.
		
		See `make_template` for full documentation.
		
		Args:
		  name_: A name for the scope created by this template. If necessary, the name
		    will be made unique by appending `_N` to the name.
		  func_: The function to wrap.
		  create_scope_now_: Boolean controlling whether the scope should be created
		    when the template is constructed or when the template is called. Default
		    is False, meaning the scope is created when the template is called.
		  unique_name_: When used, it overrides name_ and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is false,
		    an error is raised. Defaults to None. If executing eagerly, must be None.
		  custom_getter_: Optional custom getter for variables used in `func_`. See
		    the `tf.compat.v1.get_variable` `custom_getter` documentation for more
		    information.
		  create_graph_function_: When True, `func_` will be executed as a graph
		    function. This implies that `func_` must satisfy the properties that
		    `function.defun` requires of functions: See the documentation of
		      `function.defun` for details. When executing eagerly, setting this flag
		      to True can improve performance. Regardless of whether eager execution
		      is enabled, enabling this flag gives the caller access to graph-function
		      semantics, i.e., accesses to variables are totally ordered and
		      side-effecting ops are not pruned.
		  **kwargs: Keyword arguments to apply to `func_`.
		
		Returns:
		  A function to encapsulate a set of variables which should be created once
		  and reused. An enclosing scope will be created either when `make_template`
		  is called or when the result is called, depending on the value of
		  `create_scope_now_`. Regardless of the value, the first time the template
		  is called it will enter the scope with no reuse, and call `func_` to create
		  variables, which are guaranteed to be unique. All subsequent calls will
		  re-enter the scope and reuse those variables.
		
		Raises:
		  ValueError: if `name_` is None.
		  ValueError: if `unique_name_` is not None and eager execution is enabled.
	**/
	static public function make_template_internal(name_:Dynamic, func_:Dynamic, ?create_scope_now_:Dynamic, ?unique_name_:Dynamic, ?custom_getter_:Dynamic, ?create_graph_function_:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}