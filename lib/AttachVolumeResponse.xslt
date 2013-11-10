<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:aws="http://ec2.amazonaws.com/doc/2013-06-15/"
	version="1.0"
>
	<xsl:output method="text" indent="no" />
	<xsl:template match="/aws:AttachVolumeResponse">
		<xsl:text>ATTACHMENT&#x09;</xsl:text>
		<xsl:value-of select="aws:volumeId" /><xsl:text>&#x09;</xsl:text>
		<xsl:value-of select="aws:instanceId" /><xsl:text>&#x09;</xsl:text>
		<xsl:value-of select="aws:device" /><xsl:text>&#x09;</xsl:text>
		<xsl:value-of select="aws:status" /><xsl:text>&#x09;</xsl:text>
		<xsl:value-of select="aws:attachTime" /><xsl:text>&#x0A;</xsl:text>
	</xsl:template>
</xsl:stylesheet>
