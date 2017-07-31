/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.tensor_format;
@:pythonImport("tensorflow.python.debug.cli.tensor_format") extern class Tensor_format_Module {
	static public var BEGIN_INDICES_KEY : Dynamic;
	static public var DEFAULT_TENSOR_ELEMENT_HIGHLIGHT_FONT_ATTR : Dynamic;
	static public var OMITTED_INDICES_KEY : Dynamic;
	static public var _NUMBER_REGEX : Dynamic;
	static public var _NUMPY_DEFAULT_EDGE_ITEMS : Dynamic;
	static public var _NUMPY_OMISSION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Generate annotations for line-by-line begin indices of tensor text.
		
		Parse the numpy-generated text representation of a numpy ndarray to
		determine the indices of the first element of each text line (if any
		element is present in the line).
		
		For example, given the following multi-line ndarray text representation:
		    ["array([[ 0.    ,  0.0625,  0.125 ,  0.1875],",
		     "       [ 0.25  ,  0.3125,  0.375 ,  0.4375],",
		     "       [ 0.5   ,  0.5625,  0.625 ,  0.6875],",
		     "       [ 0.75  ,  0.8125,  0.875 ,  0.9375]])"]
		the generate annotation will be:
		    {0: {BEGIN_INDICES_KEY: [0, 0]},
		     1: {BEGIN_INDICES_KEY: [1, 0]},
		     2: {BEGIN_INDICES_KEY: [2, 0]},
		     3: {BEGIN_INDICES_KEY: [3, 0]}}
		
		Args:
		  array_lines: Text lines representing the tensor, as a list of str.
		  tensor: The tensor being formatted as string.
		  np_printoptions: A dictionary of keyword arguments that are passed to a
		    call of np.set_printoptions().
		  offset: Line number offset applied to the line indices in the returned
		    annotation.
		
		Returns:
		  An annotation as a dict.
	**/
	static public function _annotate_ndarray_lines(array_lines:Dynamic, tensor:Dynamic, ?np_printoptions:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Determine the start and end indices of an element in a line.
		
		Args:
		  line: (str) the line in which the element is to be sought.
		  indices_list: (list of list of int) list of indices of the element to
		     search for. Assumes that the indices in the batch are unique and sorted
		     in ascending order.
		  ref_indices: (list of int) reference indices, i.e., the indices of the
		    first element represented in the line.
		
		Returns:
		  start_columns: (list of int) start column indices, if found. If not found,
		    None.
		  end_columns: (list of int) end column indices, if found. If not found,
		    None.
		  If found, the element is represented in the left-closed-right-open interval
		    [start_column, end_column].
	**/
	static public function _locate_elements_in_line(line:Dynamic, indices_list:Dynamic, ref_indices:Dynamic):Dynamic;
	static public function _validate_indices_list(indices_list:Dynamic, formatted:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Generate a RichTextLines object showing a tensor in formatted style.
		
		Args:
		  tensor: The tensor to be displayed, as a numpy ndarray or other
		    appropriate format (e.g., None representing uninitialized tensors).
		  tensor_label: A label for the tensor, as a string. If set to None, will
		    suppress the tensor name line in the return value.
		  include_metadata: Whether metadata such as dtype and shape are to be
		    included in the formatted text.
		  np_printoptions: A dictionary of keyword arguments that are passed to a
		    call of np.set_printoptions() to set the text format for display numpy
		    ndarrays.
		  highlight_options: (HighlightOptions) options for highlighting elements
		    of the tensor.
		
		Returns:
		  A RichTextLines object. Its annotation field has line-by-line markups to
		  indicate which indices in the array the first element of each line
		  corresponds to.
	**/
	static public function format_tensor(tensor:Dynamic, tensor_label:Dynamic, ?include_metadata:Dynamic, ?np_printoptions:Dynamic, ?highlight_options:Dynamic):Dynamic;
	/**
		Locate a tensor element in formatted text lines, given element indices.
		
		Given a RichTextLines object representing a tensor and indices of the sought
		element, return the row number at which the element is located (if exists).
		
		Args:
		  formatted: A RichTextLines object containing formatted text lines
		    representing the tensor.
		  indices: Indices of the sought element, as a list of int or a list of list
		    of int. The former case is for a single set of indices to look up,
		    whereas the latter case is for looking up a batch of indices sets at once.
		    In the latter case, the indices must be in ascending order, or a
		    ValueError will be raised.
		
		Returns:
		  1) A boolean indicating whether the element falls into an omitted line.
		  2) Row index.
		  3) Column start index, i.e., the first column in which the representation
		     of the specified tensor starts, if it can be determined. If it cannot
		     be determined (e.g., due to ellipsis), None.
		  4) Column end index, i.e., the column right after the last column that
		     represents the specified tensor. Iff it cannot be determined, None.
		
		For return values described above are based on a single set of indices to
		  look up. In the case of batch mode (multiple sets of indices), the return
		  values will be lists of the types described above.
		
		Raises:
		  AttributeError: If:
		    Input argument "formatted" does not have the required annotations.
		  ValueError: If:
		    1) Indices do not match the dimensions of the tensor, or
		    2) Indices exceed sizes of the tensor, or
		    3) Indices contain negative value(s).
		    4) If in batch mode, and if not all sets of indices are in ascending
		       order.
	**/
	static public function locate_tensor_element(formatted:Dynamic, indices:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}