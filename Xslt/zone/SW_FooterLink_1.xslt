<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<h3>
			<xsl:value-of select='/ZoneList/ModuleTitle'></xsl:value-of>
		</h3>
		<ul>
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Zone">
		<li >
			<a >
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Target'></xsl:value-of>
				</xsl:attribute>
				<xsl:apply-templates select='Title'></xsl:apply-templates>
			</a>
		</li>

	</xsl:template>

</xsl:stylesheet>