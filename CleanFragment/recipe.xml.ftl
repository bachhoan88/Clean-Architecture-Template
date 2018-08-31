<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
	<#if componentType == 'type_fragment'>
		<instantiate from="root/res/layout/fragment_layout.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
    	
	    <instantiate from="root/src/app_package/fragment/Fragment.${ktOrJavaExt}.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentClassName}.${ktOrJavaExt}" />
	    <instantiate from="root/src/app_package/fragment/FragmentViewModel.${ktOrJavaExt}.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentName}ViewModel.${ktOrJavaExt}" />
	    <instantiate from="root/src/app_package/fragment/FragmentViewModelTest.${ktOrJavaExt}.ftl" to="${srcTestOut}/${fragmentName}ViewModelTest.${ktOrJavaExt}" />	
    </#if>
</recipe>
