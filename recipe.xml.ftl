<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/SimpleActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/IPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/I${activityClass}Presenter.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/IView.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/I${activityClass}View.${ktOrJavaExt}" />
				   
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/presenter/I${activityClass}Presenter.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/view/I${activityClass}View.${ktOrJavaExt}" />

</recipe>
