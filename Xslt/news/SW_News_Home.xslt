<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="sunway-home-2">
			<div class="container">
				<xsl:apply-templates select="/NewsList/News" ></xsl:apply-templates>
			</div>
		</section>

	</xsl:template>

	<xsl:template match="News" >
		<div class="row">
			<div class="col-lg-6">
				<h2>
					<xsl:value-of select='Title'></xsl:value-of>
				</h2>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				<div class="row achieve">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>


</xsl:stylesheet>