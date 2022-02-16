/* This file is generated, do not edit! */
package tensorflow.python.keras.preprocessing.timeseries;
@:pythonImport("tensorflow.python.keras.preprocessing.timeseries") extern class Timeseries_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sequences_from_indices(array:Dynamic, indices_ds:Dynamic, start_index:Dynamic, end_index:Dynamic):Dynamic;
	/**
		Creates a dataset of sliding windows over a timeseries provided as array.
		
		This function takes in a sequence of data-points gathered at
		equal intervals, along with time series parameters such as
		length of the sequences/windows, spacing between two sequence/windows, etc.,
		to produce batches of timeseries inputs and targets.
		
		Args:
		  data: Numpy array or eager tensor
		    containing consecutive data points (timesteps).
		    Axis 0 is expected to be the time dimension.
		  targets: Targets corresponding to timesteps in `data`.
		    `targets[i]` should be the target
		    corresponding to the window that starts at index `i`
		    (see example 2 below).
		    Pass None if you don't have target data (in this case the dataset will
		    only yield the input data).
		  sequence_length: Length of the output sequences (in number of timesteps).
		  sequence_stride: Period between successive output sequences.
		    For stride `s`, output samples would
		    start at index `data[i]`, `data[i + s]`, `data[i + 2 * s]`, etc.
		  sampling_rate: Period between successive individual timesteps
		    within sequences. For rate `r`, timesteps
		    `data[i], data[i + r], ... data[i + sequence_length]`
		    are used for create a sample sequence.
		  batch_size: Number of timeseries samples in each batch
		    (except maybe the last one).
		  shuffle: Whether to shuffle output samples,
		    or instead draw them in chronological order.
		  seed: Optional int; random seed for shuffling.
		  start_index: Optional int; data points earlier (exclusive)
		    than `start_index` will not be used
		    in the output sequences. This is useful to reserve part of the
		    data for test or validation.
		  end_index: Optional int; data points later (exclusive) than `end_index`
		    will not be used in the output sequences.
		    This is useful to reserve part of the data for test or validation.
		
		Returns:
		  A tf.data.Dataset instance. If `targets` was passed, the dataset yields
		  tuple `(batch_of_sequences, batch_of_targets)`. If not, the dataset yields
		  only `batch_of_sequences`.
		
		Example 1:
		
		Consider indices `[0, 1, ... 99]`.
		With `sequence_length=10,  sampling_rate=2, sequence_stride=3`,
		`shuffle=False`, the dataset will yield batches of sequences
		composed of the following indices:
		
		```
		First sequence:  [0  2  4  6  8 10 12 14 16 18]
		Second sequence: [3  5  7  9 11 13 15 17 19 21]
		Third sequence:  [6  8 10 12 14 16 18 20 22 24]
		...
		Last sequence:   [78 80 82 84 86 88 90 92 94 96]
		```
		
		In this case the last 3 data points are discarded since no full sequence
		can be generated to include them (the next sequence would have started
		at index 81, and thus its last step would have gone over 99).
		
		Example 2: Temporal regression.
		
		Consider an array `data` of scalar values, of shape `(steps,)`.
		To generate a dataset that uses the past 10
		timesteps to predict the next timestep, you would use:
		
		```python
		input_data = data[:-10]
		targets = data[10:]
		dataset = tf.keras.preprocessing.timeseries_dataset_from_array(
		    input_data, targets, sequence_length=10)
		for batch in dataset:
		  inputs, targets = batch
		  assert np.array_equal(inputs[0], data[:10])  # First sequence: steps [0-9]
		  assert np.array_equal(targets[0], data[10])  # Corresponding target: step 10
		  break
		```
		
		Example 3: Temporal regression for many-to-many architectures.
		
		Consider two arrays of scalar values `X` and `Y`,
		both of shape `(100,)`. The resulting dataset should consist samples with
		20 timestamps each. The samples should not overlap.
		To generate a dataset that uses the current timestamp
		to predict the corresponding target timestep, you would use:
		
		```python
		X = np.arange(100)
		Y = X*2
		
		sample_length = 20
		input_dataset = tf.keras.preprocessing.timeseries_dataset_from_array(
		  X, None, sequence_length=sample_length, sequence_stride=sample_length)
		target_dataset = tf.keras.preprocessing.timeseries_dataset_from_array(
		  Y, None, sequence_length=sample_length, sequence_stride=sample_length)
		
		for batch in zip(input_dataset, target_dataset):
		  inputs, targets = batch
		  assert np.array_equal(inputs[0], X[:sample_length])
		
		  # second sample equals output timestamps 20-40
		  assert np.array_equal(targets[1], Y[sample_length:2*sample_length])
		  break
		```
	**/
	static public function timeseries_dataset_from_array(data:Dynamic, targets:Dynamic, sequence_length:Dynamic, ?sequence_stride:Dynamic, ?sampling_rate:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?start_index:Dynamic, ?end_index:Dynamic):Dynamic;
}