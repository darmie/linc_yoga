package facebook.yoga;

using facebook.yoga.Enums;


@:include('linc_yoga.h')

@:native('::YGCachedMeasurement')
// CachedMeasurement describes measurements
extern class CachedMeasurement  {
	@:native('availableWidth')
	public var availableWidth:Float;

	@:native('availableHeight')
	public var availableHeight:Float;

	@:native('widthMeasureMode')
	public var widthMeasureMode:MeasureMode;
	
	@:native('heightMeasureMode')
	public var heightMeasureMode:MeasureMode;

	@:native('computedWidth')
	public var computedWidth:Float;

	@:native('computedHeight')
	public var computedHeight:Float;

	@:native('::linc::yoga::cachedMeasurement::NewCachedMeasurement')
	static function init():CachedMeasurement;
}