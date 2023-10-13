package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_Engineering_5fManager_5fBased_5fin_5fthe_5fUSA = false

userset_Engineering_5fManager_5fBased_5fin_5fthe_5fUSA {
	attributes.user.location == "USA"
	attributes.user.department == "Engineering"
}
