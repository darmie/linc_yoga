package facebook.yoga;

@:unreflective
@:keep
@:include('linc_yoga.h')
//Node
@:structAccess
@:native('::YGSize')
extern class Size {
	
	@:native('width')
	public var width:Float;

	@:native('height')
	public var height:Float;
}