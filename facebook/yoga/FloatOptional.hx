package facebook.yoga;

@:keep
@:include('linc_yoga.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('yoga'))
#end

@:native('::YGFloatOptional')
extern class FloatOptional {}