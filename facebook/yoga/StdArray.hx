package facebook.yoga;

@:unreflective
@:structAccess
@:native("std::array")
extern class StdArrayImpl<T> {
    public var data(get, never):cpp.RawPointer<T>;
	public var length(get, never):Int;
	
	@:native('size')
	public function get_length():Int;

	@:native('at')
	public function at(index:Int):T;
}

@:forward
abstract StdArray<T>(StdArrayImpl<T>) {
	@:arrayAccess
	public inline function get(index:Int):T {
		return this.at(index);
	}

	@:arrayAccess
	public inline function set(index:Int, value:T):T {				
		return this.data[index] = value;
	}    
}