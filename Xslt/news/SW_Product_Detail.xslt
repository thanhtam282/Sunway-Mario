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

								<a class="fb-xfbml-parse-ignore" target="_blank">
									<xsl:attribute name='href'>
										<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
										<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FullUrl'></xsl:value-of>
										<xsl:text>&amp;src=sdkpreparse</xsl:text>
									</xsl:attribute>
									<img src="/Data/Sites/1/skins/default/img/_global/icon_facebook.png" alt="" />
								</a>
								<a class="fb-xfbml-parse-ignore" target="_blank">
									<xsl:attribute name='href'>
										<xsl:text>https://twitter.com/home?status=</xsl:text>
										<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FullUrl'></xsl:value-of>
										<xsl:text>&amp;src=sdkpreparse</xsl:text>
									</xsl:attribute>
									<img src="/Data/Sites/1/skins/default/img/_global/icon_twitter.png" alt="" />
								</a>
								<a class="fb-xfbml-parse-ignore" target="_blank">
									<xsl:attribute name='href'>
										<xsl:text>https://plus.google.com/share?url=</xsl:text>
										<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FullUrl'></xsl:value-of>
										<xsl:text>&amp;src=sdkpreparse</xsl:text>
									</xsl:attribute>
									<img src="/Data/Sites/1/skins/default/img/_global/icon_google.png" alt="" />
								</a>
								<a class="fb-xfbml-parse-ignore" target="_blank">
									<xsl:attribute name='href'>
										<xsl:text>https://www.linkedin.com/shareArticle?mini=true&amp;url=&amp;title=&amp;summary=&amp;source=</xsl:text>
										<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FullUrl'></xsl:value-of>
										<xsl:text>&amp;src=sdkpreparse</xsl:text>
									</xsl:attribute>
									<img src="/Data/Sites/1/skins/default/img/_global/icon_linkedin.png" alt="" />
								</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="sunway-home-4">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2>other product</h2>
					</div>
				</div>
			</div>
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