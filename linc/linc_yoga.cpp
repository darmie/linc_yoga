//hxcpp include should be first
#include <hxcpp.h>
#include "./linc_yoga.h"



namespace linc {
	
	namespace yoga {

			//typedef YGLogger Logger;

			YGValue setValue(float value, YGUnit unit) {
				return {value, unit};
			}

			YGCachedMeasurement NewCachedMeasurement() {
				return YGCachedMeasurement();
			}

			YGNodeRef NewYogaNode() {
				return new YGNode();
			}

			YGNodeRef NewYogaNodeWithConfig(const YGConfigRef newConfig) {
				return new YGNode(newConfig);
			}

			YGConfigRef NewConfig() {
				return YGConfigNew();
			}

			YGStyle NewStyle() {
				return YGStyle();
			}

			YGLayout NewLayout() {
				return YGLayout();
			}

			YGFloatOptional NewFloatOptional() {
				return YGFloatOptional();
			}
			YGFloatOptional NewFloatOptionalWithValue(float value){
				return YGFloatOptional(value);
			}		

	} //yoga

} //linc