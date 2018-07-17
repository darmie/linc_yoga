package facebook.yoga;

using facebook.yoga.Enums;

// CachedMeasurement describes measurements
typedef CachedMeasurement = {
	var availableWidth:Float;
	var availableHeight:Float;
	var widthMeasureMode:MeasureMode;
	var heightMeasureMode:MeasureMode;

	var computedWidth:Float;
	var computedHeight:Float;
}