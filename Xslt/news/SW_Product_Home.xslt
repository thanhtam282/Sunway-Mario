<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="sunway-home-4">
			<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
			<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
				<xsl:apply-templates select="/NewsList/News" ></xsl:apply-templates>



				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">

		<div class="swiper-slide" data-aos="fade-right" data-aos-delay="200">
			<xsl:attribute name='data-aos-delay'>
				<xsl:value-of select="position() * 200 - 200"></xsl:value-of>
			</xsl:attribute>
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Target'></xsl:value-of>
				</xsl:attribute>
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
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>


</xsl:stylesheet>