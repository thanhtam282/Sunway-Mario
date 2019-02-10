<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="language">


			<div class="wrapper">
				<xsl:apply-templates select="/LanguageList/Language" mode="current"></xsl:apply-templates>

				<div class="drop-down">
					<xsl:apply-templates select="/LanguageList/Language" mode="list"></xsl:apply-templates>

				</div>
			</div>
		</div>




	</xsl:template>

	<xsl:template match="Language" mode="current">
		<a href="javascript:void(0)" style="display: none">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="style">
					<xsl:text>display: block</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			<span class="fas fa-caret-down">
			</span>
		</a>

	</xsl:template>
	<xsl:template match="Language" mode="list">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</a>

	</xsl:template>
</xsl:stylesheet>