<#include "mcitems.ftl">
/*@int*/(${mappedMCItemToItemStackCode(input$item, 1)}.getEnchantmentLevel((Holder<Enchantment>)${generator.map(field$enhancement, "enchantments")}))