<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="sunway-product-2">
			<div class="container">
				<h2>
					<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>

				</h2>
				<div class="row">
					<div class="col">
						<div class="wrapper">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>



						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<figure>
			<div class="boxzoom">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			<figcaption>
				<h3>
					<xsl:value-of select='Title'></xsl:value-of>
				</h3>

				<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
				<a class="btn btn-more">
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Target'></xsl:value-of>
					</xsl:attribute>
					view more
				</a>
			</figcaption>
		</figure>


	</xsl:template>




</xsl:stylesheet>