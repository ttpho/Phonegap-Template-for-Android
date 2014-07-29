<?xml version="1.0"?>
<recipe>
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <copy from="res/layout/activity_simple.xml"
            to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <copy from="res/xml/config.xml"
            to="${escapeXmlAttribute(resOut)}/xml/config.xml" />

    <copy from="libs/cordova-2.9.0.jar"
            to="libs/cordova-2.9.0.jar" />

    <copy from="assets/www"
            to="assets/www" />

    <instantiate from="src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>
