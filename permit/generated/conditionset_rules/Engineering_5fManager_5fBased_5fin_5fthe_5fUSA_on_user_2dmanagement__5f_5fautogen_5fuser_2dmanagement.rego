package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default Engineering_5f5fManager_5f5fBased_5f5fin_5f5fthe_5f5fUSA_5fon_5fuser_5f2dmanagement_5f_5f5f_5f5fautogen_5f5fuser_5f2dmanagement = false

Engineering_5f5fManager_5f5fBased_5f5fin_5f5fthe_5f5fUSA_5fon_5fuser_5f2dmanagement_5f_5f5f_5f5fautogen_5f5fuser_5f2dmanagement {
	conditionset.userset_Engineering_5fManager_5fBased_5fin_5fthe_5fUSA
	conditionset.resourceset__5f_5fautogen_5fuser_2dmanagement
	input.action in condition_set_permissions.Engineering_Manager_Based_in_the_USA["__autogen_user-management"][input.resource.type]
}
