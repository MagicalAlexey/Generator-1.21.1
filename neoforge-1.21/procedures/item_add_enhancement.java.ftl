<#include "mcitems.ftl">
${mappedMCItemToItemStackCode(input$item, 1)}.enchant((Holder<Enchantment>)${generator.map(field$enhancement, "enchantments")}, ${opt.toInt(input$level)});