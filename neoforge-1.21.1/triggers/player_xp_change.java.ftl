<#include "procedures.java.ftl">
@EventBusSubscriber public class ${name}Procedure {
	@SubscribeEvent public static void onPlayerXPChange(PlayerXpEvent.XpChange event) {
		if (event.getEntity() != null) {
			<#assign dependenciesCode><#compress>
				<@procedureDependenciesCode dependencies, {
					"x": "event.getEntity().getX()",
					"y": "event.getEntity().getY()",
					"z": "event.getEntity().getZ()",
					"world": "event.getEntity().level()",
					"entity": "event.getEntity()",
					"amount": "event.getAmount()",
					"event": "event"
				}/>
			</#compress></#assign>
			execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
		}
	}