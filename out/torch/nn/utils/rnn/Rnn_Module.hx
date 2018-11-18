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
	static public function _symbolic_pack_padded_sequence(g:Dynamic, input:Dynamic, lengths:Dynamic, ?batch_first:Dynamic, ?padding_value:Dynamic):Dynamic;
	static public function _symbolic_pad_packed_sequence(g:Dynamic, input:Dynamic, ?batch_first:Dynamic, ?padding_value:Dynamic, ?total_length:Dynamic):Dynamic;
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
		Packs a Tensor containing padded sequences of variable length.
		
		Input can be of size ``T x B x *`` where `T` is the length of the longest sequence
		(equal to ``lengths[0]``), `B` is the batch size, and `*` is any number of
		dimensions (including 0). If ``batch_first`` is True ``B x T x *`` inputs are
		expected.
		
		The sequences should be sorted by length in a decreasing order, i.e.
		``input[:,0]`` should be the longest sequence, and ``input[:,B-1]`` the
		shortest one.
		
		Note:
		    This function accepts any input that has at least two dimensions. You
		    can apply it to pack the labels, and use the output of the RNN with
		    them to compute the loss directly. A Tensor can be retrieved from
		    a :class:`PackedSequence` object by accessing its ``.data`` attribute.
		
		Arguments:
		    input (Tensor): padded batch of variable length sequences.
		    lengths (Tensor): list of sequences lengths of each batch element.
		    batch_first (bool, optional): if ``True``, the input is expected in ``B x T x *``
		        format.
		
		Returns:
		    a :class:`PackedSequence` object
	**/
	static public function pack_padded_sequence(input:Dynamic, lengths:Dynamic, ?batch_first:Dynamic):Dynamic;
	/**
		Packs a list of variable length Tensors
		
		``sequences`` should be a list of Tensors of size ``L x *``, where `L` is
		the length of a sequence and `*` is any number of trailing dimensions,
		including zero. They should be sorted in the order of decreasing length.
		
		Example:
		    >>> from torch.nn.utils.rnn import pack_sequence
		    >>> a = torch.tensor([1,2,3])
		    >>> b = torch.tensor([4,5])
		    >>> c = torch.tensor([6])
		    >>> pack_sequence([a, b, c])
		    PackedSequence(data=tensor([ 1,  4,  6,  2,  5,  3]), batch_sizes=tensor([ 3,  2,  1]))
		
		
		Arguments:
		    sequences (list[Tensor]): A list of sequences of decreasing length.
		
		Returns:
		    a :class:`PackedSequence` object
	**/
	static public function pack_sequence(sequences:Dynamic):Dynamic;
	/**
		Pads a packed batch of variable length sequences.
		
		It is an inverse operation to :func:`pack_padded_sequence`.
		
		The returned Tensor's data will be of size ``T x B x *``, where `T` is the length
		of the longest sequence and `B` is the batch size. If ``batch_first`` is True,
		the data will be transposed into ``B x T x *`` format.
		
		Batch elements will be ordered decreasingly by their length.
		
		.. note::
		    :attr:`total_length` is useful to implement the
		    ``pack sequence -> recurrent network -> unpack sequence`` pattern in a
		    :class:`~torch.nn.Module` wrapped in :class:`~torch.nn.DataParallel`.
		    See :ref:`this FAQ section <pack-rnn-unpack-with-data-parallelism>` for
		    details.
		
		Arguments:
		    sequence (PackedSequence): batch to pad
		    batch_first (bool, optional): if ``True``, the output will be in ``B x T x *``
		        format.
		    padding_value (float, optional): values for padded elements.
		    total_length (int, optional): if not ``None``, the output will be padded to
		        have length :attr:`total_length`. This method will throw :class:`ValueError`
		        if :attr:`total_length` is less than the max sequence length in
		        :attr:`sequence`.
		
		Returns:
		    Tuple of Tensor containing the padded sequence, and a Tensor
		    containing the list of lengths of each sequence in the batch.
	**/
	static public function pad_packed_sequence(sequence:Dynamic, ?batch_first:Dynamic, ?padding_value:Dynamic, ?total_length:Dynamic):Dynamic;
	/**
		Pad a list of variable length Tensors with zero
		
		``pad_sequence`` stacks a list of Tensors along a new dimension,
		and pads them to equal length. For example, if the input is list of
		sequences with size ``L x *`` and if batch_first is False, and ``T x B x *``
		otherwise.
		
		`B` is batch size. It is equal to the number of elements in ``sequences``.
		`T` is length of the longest sequence.
		`L` is length of the sequence.
		`*` is any number of trailing dimensions, including none.
		
		Example:
		    >>> from torch.nn.utils.rnn import pad_sequence
		    >>> a = torch.ones(25, 300)
		    >>> b = torch.ones(22, 300)
		    >>> c = torch.ones(15, 300)
		    >>> pad_sequence([a, b, c]).size()
		    torch.Size([25, 3, 300])
		
		Note:
		    This function returns a Tensor of size ``T x B x *`` or ``B x T x *`` where `T` is the
		        length of the longest sequence.
		    Function assumes trailing dimensions and type of all the Tensors
		        in sequences are same.
		
		Arguments:
		    sequences (list[Tensor]): list of variable length sequences.
		    batch_first (bool, optional): output will be in ``B x T x *`` if True, or in
		        ``T x B x *`` otherwise
		    padding_value (float, optional): value for padded elements. Default: 0.
		
		Returns:
		    Tensor of size ``T x B x *`` if batch_first is False
		    Tensor of size ``B x T x *`` otherwise
	**/
	static public function pad_sequence(sequences:Dynamic, ?batch_first:Dynamic, ?padding_value:Dynamic):Dynamic;
}