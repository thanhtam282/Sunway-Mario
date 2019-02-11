<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="sunway-product-1">
			<div class="container">
				<h2>
					<xsl:value-of select='/ZoneList/ModuleTitle'></xsl:value-of>

				</h2>
				<div class="row">
					<div class="col">
						<div class="wrapper">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<a>
			<xsl:attribute name='href'>
				<xsl:value-of select='Url'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='target'>
				<xsl:value-of select='Target'></xsl:value-of>
			</xsl:attribute>
			<div class="bg-img">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</a>

	</xsl:template>

</xsl:stylesheet>