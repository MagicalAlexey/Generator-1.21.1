<#include "mcitems.ftl">
EnchantmentHelper.updateEnchantments(${mappedMCItemToItemStackCode(input$item, 1)}, mutableEnchantments ->
	mutableEnchantments.removeIf(enchantment -> enchantment.value() == (Holder<Enchantment>)${generator.map(field$enhancement, "enchantments")}));