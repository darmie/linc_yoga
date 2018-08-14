package;

import utest.Runner;
import utest.ui.Report;

class Test {
	public static function main(){
		var test = new Runner();

		//Absolute positions
		test.addCase(new YogaAbsolutePositionSpec());
		
		Report.create(test);
		test.run();		
	}
}