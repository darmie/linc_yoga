package;

import utest.Runner;
import utest.ui.Report;

class Test {
	public static function main(){
		var test = new Runner();

		// Absolute positions
		test.addCase(new YogaAbsolutePositionSpec());

		// Align Baseline
		test.addCase(new YogaAlignBaselineSpec());

		// Align Content
		test.addCase(new YogaAlignContentSpec());

		// Align Items
		test.addCase(new YogaAlignItemsSpec());

		// Align Self
		test.addCase(new YogaAlignSelfSpec());

		// Android News Feed
		test.addCase(new YogaAndroidNewsFeed());

		// Border
		test.addCase(new YogaBorderSpec());

		// Dimension
		test.addCase(new YogaDimensionSpec());

		// Display
		test.addCase(new YogaDisplaySpec());

		// Flex Direction
		test.addCase(new YogaFlexDirectionSpec());

		// Flex 
		test.addCase(new YogaFlexSpec());

		// Flex Wrap
		test.addCase(new YogaFlexWrapSpec());

		// Justify Content
		test.addCase(new YogaJustifyContentSpec());

		// Margin
		test.addCase(new YogaMarginSpec());

		// Min/Max Dimension
		test.addCase(new YogaMinMaxDimensionSpec());

		// Padding
		test.addCase(new YogaPaddingSpec());

		// Percentage
		test.addCase(new YogaPercentageSpec());

		// Rounding
		test.addCase(new YogaRoundingSpec());

		// Size Overflow
		test.addCase(new YogaSizeOverflowSpec());


		
		Report.create(test);
		test.run();		
	}
}