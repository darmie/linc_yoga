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
		
		Report.create(test);
		test.run();		
	}
}