<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">



		<section class="sunway-product-detail-1">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="wrapper">
							<div class="slider-sub">
								<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Thumbnail"></xsl:apply-templates>

							</div>
							<div class="slider-main">
								<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Image"></xsl:apply-templates>


							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<h1>
							<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
						</h1>
						<div class="detail">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping='yes'></xsl:value-of>
						</div>
						<div class="block-contact">
							<a class="btn btn-order">
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name='target'>
									<xsl:value-of select='Target'></xsl:value-of>
								</xsl:attribute>
								<span class="mdi mdi-phone">

								</span>
								<xsl:value-of select='/NewsDetail/SubTitle'></xsl:value-of>
							</a>
							<div class="social nav">
								<p>Share</p>
								<div class="nav-item">
									<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
										 class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
								</div>
								<div class="nav-item"><a class="twitter-share-button" href="https://twitter.com/share" data-size="medium"
									 data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a></div>
								<div class="nav-item">
									<div class="g-plusone" data-size="tall"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="sunway-home-4">
			<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
			<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>


				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Thumbnail">
		<div class="item">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Image">
		<div class="item">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
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