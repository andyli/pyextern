/* This file is generated, do not edit! */
package torch.jit.annotations;
@:pythonImport("torch.jit.annotations") extern class Annotations_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var BroadcastingList1 : Dynamic;
	static public var BroadcastingList2 : Dynamic;
	static public var BroadcastingList3 : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function Type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_script_class(python_class:Dynamic):Dynamic;
	static public function _qualified_name(obj:Dynamic):Dynamic;
	static public function ann_to_type(ann:Dynamic, loc:Dynamic):Dynamic;
	static public function check_fn(fn:Dynamic, loc:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.
		
		Entirely blank lines are normalized to a newline character.
	**/
	static public function dedent(text:Dynamic):Dynamic;
	static public function get_enum_value_type(e:Dynamic, loc:Dynamic):Dynamic;
	static public function get_param_names(fn:Dynamic, n_args:Dynamic):Dynamic;
	static public function get_signature(fn:Dynamic, rcb:Dynamic, loc:Dynamic, is_method:Dynamic):Dynamic;
	/**
		Wrapper around inspect.getsourcelines and inspect.getsourcefile.
		
		Returns: (sourcelines, file_lino, filename)
	**/
	static public function get_source_lines_and_file(obj:Dynamic, ?error_msg:Dynamic):Dynamic;
	/**
		Tries to find the line containing a comment with the type annotation.
	**/
	static public function get_type_line(source:Dynamic):Dynamic;
	static public function is_dict(ann:Dynamic):Dynamic;
	static public function is_function_or_method(the_callable:Dynamic):Dynamic;
	static public function is_future(ann:Dynamic):Dynamic;
	static public function is_ignored_fn(fn:Dynamic):Dynamic;
	static public function is_list(ann:Dynamic):Dynamic;
	static public function is_optional(ann:Dynamic):Dynamic;
	static public function is_rref(ann:Dynamic):Dynamic;
	static public function is_tensor(ann:Dynamic):Dynamic;
	static public function is_tuple(ann:Dynamic):Dynamic;
	static public function is_union(ann:Dynamic):Dynamic;
	static public function is_vararg(the_callable:Dynamic):Dynamic;
	/**
		Parses a type annotation specified as a comment.
		
		Example inputs:
		    # type: (Tensor, torch.Tensor) -> Tuple[Tensor]
		    # type: (Tensor, Tuple[Tensor, Tensor]) -> Tensor
	**/
	static public function parse_type_line(type_line:Dynamic, rcb:Dynamic, loc:Dynamic):Dynamic;
	/**
		Splits the comment with the type annotation into parts for argument and return types.
		
		For example, for an input of:
		    # type: (Tensor, torch.Tensor) -> Tuple[Tensor, Tensor]
		
		This function will return:
		    ("(Tensor, torch.Tensor)", "Tuple[Tensor, Tensor]")
	**/
	static public function split_type_line(type_line:Dynamic):Dynamic;
	static public function try_ann_to_type(ann:Dynamic, loc:Dynamic):Dynamic;
	/**
		Tries to use the Py3.5+ annotation syntax to get the type.
	**/
	static public function try_real_annotations(fn:Dynamic, loc:Dynamic):Dynamic;
}