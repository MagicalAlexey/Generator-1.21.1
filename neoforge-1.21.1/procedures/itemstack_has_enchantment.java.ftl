<#include "mcitems.ftl">
(EnchantmentHelper.getItemEnchantmentLevel((Holder<Enchantment>)${generator.map(field$enhancement, "enchantments")}, ${mappedMCItemToItemStackCode(input$item, 1)}) != 0)