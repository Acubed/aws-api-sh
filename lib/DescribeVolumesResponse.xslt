<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:aws="http://ec2.amazonaws.com/doc/2013-06-15/"
	version="1.0"
>
	<xsl:output method="text" indent="no" />
	<xsl:strip-space elements="*"/>
	<xsl:template match="/"><xsl:apply-templates/></xsl:template>
	<xsl:template match="/aws:DescribeVolumesResponse/aws:requestId"></xsl:template>
	<xsl:template match="/aws:DescribeVolumesResponse/aws:volumeSet">
		<xsl:for-each select="aws:item">
			<xsl:text>VOLUME&#x09;</xsl:text>
			<xsl:value-of select="aws:volumeId" /><xsl:text>&#x09;</xsl:text>
			<xsl:value-of select="aws:size" /><xsl:text>&#x09;</xsl:text>
			<xsl:value-of select="aws:snapshotId" /><xsl:text>&#x09;</xsl:text>
			<xsl:value-of select="aws:volumeId" /><xsl:text>&#x09;</xsl:text>
			<xsl:value-of select="aws:status" /><xsl:text>&#x09;</xsl:text>
			<xsl:value-of select="aws:createTime" /><xsl:text>&#x09;</xsl:text>
			<xsl:value-of select="aws:volumeType" /><xsl:text>&#x0A;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
