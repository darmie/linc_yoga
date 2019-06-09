package facebook.yoga;

typedef StdArray<T> = cpp.RawPointer<T>;

@:unreflective
@:native('std::array<YGValue, YGEdgeCount>')
@:structAccess
extern class TStdArrayValue {}

@:unreflective
@:structAccess
abstract StdArrayValue(TStdArrayValue) from TStdArrayValue to TStdArrayValue {
    public inline  function  new() {
        this = untyped __cpp__('{YGValueUndefined, YGValueUndefined, YGValueUndefined, YGValueUndefined, YGValueUndefined, YGValueUndefined, YGValueUndefined, YGValueUndefined, YGValueUndefined}');
    }

    public inline function copy(a:StdArrayValue):StdArrayValue {
        untyped __cpp__('std::copy(std::begin({0}), std::end({0}), std::begin({1}))', a, this);
        return untyped __cpp__('{0}', this);
    }

    public inline function length():Int return untyped __cpp__('{0}.size()', this);
    public inline function empty():Bool return untyped __cpp__('{0}.empty()', this) == 1;

    @:arrayAccess public function get(i:Int):Value {
        var index = i;
        return untyped __cpp__('{0}[{1}]', this, index);
    }

    @:arrayAccess public inline function set(i:Int, v:Value):Void {
        var index = i;
        untyped __cpp__('{0}[1] = {2}', this, index, v);
    }
}

@:unreflective
@:native('std::array<YGValue, 2>')
@:structAccess
extern class TStdArrayValue2 {}

@:unreflective
abstract StdArrayValue2(TStdArrayValue2) from TStdArrayValue2 to TStdArrayValue2 {
    public inline  function  new() {
        this = untyped __cpp__('{YGValueUndefined, YGValueUndefined}');
    }

    public inline function copy(a:StdArrayValue2):StdArrayValue2 {
        untyped __cpp__('std::copy(std::begin({0}), std::end({0}), std::begin({1}))', a, this);
        return untyped __cpp__('{0}', this);
    }

    public inline function length():Int return untyped __cpp__('{0}.size()', this);
    public inline function empty():Bool return untyped __cpp__('{0}.empty()', this) == 1;

    @:arrayAccess public function get(i:Int):Value {
        var index = i;
        return untyped __cpp__('{0}[{1}]', this, index);
    }

    @:arrayAccess public inline function set(i:Int, v:Value):Void {
        var index = i;
        untyped __cpp__('{0}[1] = {2}', this, index, v);
    }
}

@:unreflective
@:native('std::array<float, 2>')
@:structAccess
extern class TStdArrayFloat2 {}

abstract StdArrayFloat2(TStdArrayFloat2) from TStdArrayFloat2 to TStdArrayFloat2 {
    public inline  function  new() {
        this = untyped __cpp__('{0, 0}');
    }

    public inline function copy(a:StdArrayFloat2):StdArrayFloat2 {
        untyped __cpp__('std::copy(std::begin({0}), std::end({0}), std::begin({1}))', a, this);
        return untyped __cpp__('{0}', this);
    }

    public inline function length():Int return untyped __cpp__('{0}.size()', this);
    public inline function empty():Bool return untyped __cpp__('{0}.empty()', this) == 1;

    @:arrayAccess public inline function get(i:Int):Float {
        var index = i;
        return untyped __cpp__('{0}[{1}]', this, index);
    }

    @:arrayAccess public inline function set(i:Int, v:Float):Void {
        var index = i;
        untyped __cpp__('{0}[1] = {2}', this, index, v);
    }
}


@:unreflective
@:native('std::array<float, 4>')
@:structAccess
extern class TStdArrayFloat4 {}

@:unreflective
abstract StdArrayFloat4(TStdArrayFloat4) from TStdArrayFloat4 to TStdArrayFloat4 {
    public inline  function  new() {
        this = untyped __cpp__('{0, 0, 0, 0}');
    }

    public inline function copy(a:StdArrayFloat4):StdArrayFloat2 {
        untyped __cpp__('std::copy(std::begin({0}), std::end({0}), std::begin({1}))', a, this);
        return untyped __cpp__('{0}', this);
    }

    public inline function length():Int return untyped __cpp__('{0}.size()', this);
    public inline function empty():Bool return untyped __cpp__('{0}.empty()', this) == 1;

    @:arrayAccess public inline function get(i:Int):Float {
        var index = i;
        return untyped __cpp__('{0}[{1}]', this, index);
    }

    @:arrayAccess public inline function set(i:Int, v:Float):Void {
        var index = i;
        untyped __cpp__('{0}[1] = {2}', this, index, v);
    }
}

@:unreflective
@:native('std::array<float, 6>')
@:structAccess
extern class TStdArrayFloat6 {}

@:unreflective
abstract StdArrayFloat6(TStdArrayFloat6) from TStdArrayFloat6 to TStdArrayFloat6 {
    public inline  function  new() {
        this = untyped __cpp__('{0, 0, 0, 0, 0, 0}');
    }

    public inline function copy(a:StdArrayFloat6):StdArrayFloat6 {
        untyped __cpp__('std::copy(std::begin({0}), std::end({0}), std::begin({1}))', a, this);
        return untyped __cpp__('{0}', this);
    }

    public inline function length():Int return untyped __cpp__('{0}.size()', this);
    public inline function empty():Bool return untyped __cpp__('{0}.empty()', this) == 1;

    @:arrayAccess public inline function get(i:Int):Float {
        var index = i;
        return untyped __cpp__('{0}[{1}]', this, index);
    }

    @:arrayAccess public inline function set(i:Int, v:Float):Void {
        var index = i;
        untyped __cpp__('{0}[1] = {2}', this, index, v);
    }
}