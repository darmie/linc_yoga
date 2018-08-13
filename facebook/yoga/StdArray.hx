package facebook.yoga;

import cpp.RawPointer;

@:unreflective
@:structAccess
@:native("std::array")
extern class StdArrayImpl<T> {
	@:noCompletion
	public var data(get, never):RawPointer<T>;
	public var length(get, never):Int;

	@:native('size')
	public function get_length():Int;

	@:native('data')
	public function get_data():RawPointer<T>;
}

@:forward
abstract StdArray<T>(StdArrayImpl<T>) {
	@:arrayAccess
	public inline function get(index:Int):T return this.data[index];

	@:arrayAccess
	public inline function set(index:Int, value:T):T return this.data[index] = value;
}