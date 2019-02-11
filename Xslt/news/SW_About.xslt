<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Content">
		<xsl:if test="position() = 1 ">
			<section class="sunway-about-us-1">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section class="sunway-about-us-2" bg-img="/Data/Sites/1/skins/default/img/about_us/bg_1.jpg">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="wrapper">
								<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>

		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section class="sunway-about-us-3">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews3"></xsl:apply-templates>

				</div>
			</section>

		</xsl:if>
		<xsl:if test="position() = 4 ">
			<section class="sunway-about-us-4">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews4"></xsl:apply-templates>

				</div>
			</section>

		</xsl:if>
		<xsl:if test="position() = 5 ">
			<section class="sunway-home-6">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews5"></xsl:apply-templates>

				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 6 ">
			<section class="sunway-about-us-5">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews6"></xsl:apply-templates>

				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<div class="row">
			<div class="col-lg-6 col-12">

				<h2>
					<xsl:value-of select='Title'></xsl:value-of>
				</h2>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				<div class="row achieve">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
			<div class="col-lg-6 col-12">
				<div class="img_mobile">
					<img id="map-image" alt="" usemap="#map">
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
					<map name="map">
						<area class="link1" shape="poly" coords="88, 223, 251, 224, 333, 366, 252, 508, 88, 506, 4, 364">
						</area>
						<area class="link2" shape="poly" coords="589, 518, 508, 662, 589, 802, 754, 802, 836, 661, 751, 518">
					</area>
						
						<a class="link_des_1">
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='data-fancybox'>
								<xsl:text>1</xsl:text>
							</xsl:attribute>
							<xsl:attribute name='target'>
								<xsl:value-of select='Target'></xsl:value-of>
							</xsl:attribute>
						</a>
						<a class="link_des_2">
							<xsl:attribute name='href'>
								<xsl:value-of select='SubTitle'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='data-fancybox'>
								<xsl:text>1</xsl:text>
							</xsl:attribute>
							<xsl:attribute name='target'>
								<xsl:value-of select='Target'></xsl:value-of>
							</xsl:attribute>
						</a>

					</map>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
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
				<xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>
			</figcaption>
		</figure>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<div class="row">
			<div class="col">
				<h2>
					<xsl:value-of select='Title'></xsl:value-of>
				</h2>
				<xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>

			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews4">
		<div class="row">
			<div class="col">
				<h2>
					<xsl:value-of select='Title'></xsl:value-of>
				</h2>
				<xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>
				<div class="row">
					<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
					<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>

					<div class="col-10 col-md-8 mx-auto">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select='NewsImages'></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews5">
		<h2>
			<xsl:value-of select='Title'></xsl:value-of>
		</h2>
		<div class="row">
			<div class="col">
				<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
				<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select='NewsImages'></xsl:apply-templates>

					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews6">
		<h2>
			<xsl:value-of select='Title'></xsl:value-of>
		</h2>
		<div class="row">
			<div class="col">
				<div class="swiper-pagination"></div>

				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select='NewsImages'></xsl:apply-templates>

					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
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