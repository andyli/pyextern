/* This file is generated, do not edit! */
package torch.nn.utils.rnn;
@:pythonImport("torch.nn.utils.rnn") extern class Rnn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Packs a Variable containing padded sequences of variable length.
		
		Input can be of size ``TxBx*`` where T is the length of the longest sequence
		(equal to ``lengths[0]``), B is the batch size, and * is any number of
		dimensions (including 0). If ``batch_first`` is True ``BxTx*`` inputs are expected.
		
		The sequences should be sorted by length in a decreasing order, i.e.
		``input[:,0]`` should be the longest sequence, and ``input[:,B-1]`` the
		shortest one.
		
		Note:
		    This function accept any input that has at least two dimensions. You
		    can apply it to pack the labels, and use the output of the RNN with
		    them to compute the loss directly. A Variable can be retrieved from
		    a :class:`PackedSequence` object by accessing its ``.data`` attribute.
		
		Arguments:
		    input (Variable): padded batch of variable length sequences.
		    lengths (list[int]): list of sequences lengths of each batch element.
		    batch_first (bool, optional): if True, the input is expected in BxTx*
		        format.
		
		Returns:
		    a :class:`PackedSequence` object
	**/
	static public function pack_padded_sequence(input:Dynamic, lengths:Dynamic, ?batch_first:Dynamic):Dynamic;
	/**
		Pads a packed batch of variable length sequences.
		
		It is an inverse operation to :func:`pack_padded_sequence`.
		
		The returned Variable's data will be of size TxBx*, where T is the length
		of the longest sequence and B is the batch size. If ``batch_first`` is True,
		the data will be transposed into BxTx* format.
		
		Batch elements will be ordered decreasingly by their length.
		
		Arguments:
		    sequence (PackedSequence): batch to pad
		    batch_first (bool, optional): if True, the output will be in BxTx* format.
		
		Returns:
		    Tuple of Variable containing the padded sequence, and a list of lengths
		    of each sequence in the batch.
	**/
	static public function pad_packed_sequence(sequence:Dynamic, ?batch_first:Dynamic):Dynamic;
}