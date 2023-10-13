package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Services_5fabove_5f500_5fUSD = false

resourceset_Services_5fabove_5f500_5fUSD {
	attributes.resource.state == "Florida"
	attributes.resource.type == "services"
}
