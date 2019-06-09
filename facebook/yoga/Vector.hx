package facebook.yoga;

@:unreflective
@:native('std::vector<YGNodeRef>')
extern class TVector {}

@:unreflective
abstract Vector(TVector) from TVector to TVector {
    public inline  function  new() {
        this = untyped __cpp__('{}');
    }

    public inline function copy(a:Vector):Vector {
        untyped __cpp__('std::copy(std::begin({0}), std::end({0}), std::begin({1}))', a, this);
        return untyped __cpp__('{0}', this);
    }

    public inline function length():Int return untyped __cpp__('{0}.size()', this);
    public inline function empty():Bool return untyped __cpp__('{0}.empty()', this) == 1;

    @:arrayAccess public inline function get(i:Int):Node {
        var index = i;
        return untyped __cpp__('{0}[{1}]', this, index);
    }

    @:arrayAccess public inline function set(v:Node):Void {
        var value = v;
        untyped __cpp__('{0}.push_back({1})', this, value);
    }
}