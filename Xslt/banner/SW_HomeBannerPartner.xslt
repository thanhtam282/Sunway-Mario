<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/BannerList/Banner) > 0">

			<section class="sunway-home-6">
				<div class="container">
					<h2>
						<xsl:value-of select='/BannerList/ModuleTitle'></xsl:value-of>
					</h2>
					<div class="row">
						<div class="col">
							<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
							<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
							<div class="swiper-container">
								<div class="swiper-wrapper">

									<xsl:apply-templates select="/BannerList/Banner" mode="image"></xsl:apply-templates>

								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Banner" mode="image">
		<div class="swiper-slide" data-aos="flip-up" >
					<xsl:attribute name='data-aos-delay'>
				<xsl:value-of select="position() * 200 - 200"></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name='src'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>



	</xsl:template>
</xsl:stylesheet>