<?xml version="1.0"?>

<recipe>

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />


    <#if generateLayout>
        <#include "../common/recipe_simple.xml.ftl" />
        <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    </#if>


    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}/view/${activityClass}.java" />

    <instantiate from="root/src/app_package/contract/MainContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}/contract/${moduleName?capitalize}Contract.java" />

    <instantiate from="root/src/app_package/model/DataSourceInterface.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}/model/source/${moduleName?capitalize}DataSource.java" />

    <instantiate from="root/src/app_package/model/DataSourceLocal.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${moduleName}/model/source/local/${moduleName?capitalize}DataSourceLocal.java" />

    <instantiate from="root/src/app_package/model/DataSourceRemote.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${moduleName}/model/source/remote/${moduleName?capitalize}DataSourceRemote.java" />
    
    <instantiate from="root/src/app_package/presenter/Presenter.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${moduleName}/presenter/${moduleName?capitalize}Presenter.java" />

    <instantiate from="root/src/app_package/view/fragment/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}/view/fragments/${moduleName?capitalize}Fragment.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />


</recipe>
