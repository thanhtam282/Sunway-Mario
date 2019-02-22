<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="sunway-home-5" bg-img="/Data/Sites/1/skins/default/img/home/bg_1.jpg">

			<div class="container">
				<h2>
					<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
				</h2>

				<xsl:apply-templates select="/NewsList/News" mode="main"></xsl:apply-templates>
				<!-- <div class="row">
					<div class="col">
						<div class="wrapper-news">

						</div>
					</div>
				</div> -->

			</div>
		</section>
	</xsl:template>

	<xsl:template match="News" mode="main">
		<xsl:if test="position() = 1">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 main" data-aos="fade-right"&gt;</xsl:text>
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
						<time>
							<xsl:value-of select='CreatedDate'></xsl:value-of>
						</time>
						<h3>
							<xsl:value-of select='Title'></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 sub"  &gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 1 and position() &lt; 5">
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Target'></xsl:value-of>
				</xsl:attribute>
				<figure data-aos-delay="200" data-aos="fade-up">
							<xsl:attribute name='data-aos-delay'>
				<xsl:value-of select="position() * 200 - 400"></xsl:value-of>
			</xsl:attribute>
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
						<time>
							<xsl:value-of select='CreatedDate'></xsl:value-of>
						</time>
						<h3>
							<xsl:value-of select='Title'></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
		<xsl:if test="position() = 4 ">
			<xsl:text disable-output-escaping="yes">&lt;div &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;section&gt;</xsl:text>
		</xsl:if>
	</xsl:template>


	<xsl:template match="News" mode="other">
		<xsl:if test="position() &gt;  4">
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
						<time>
							<xsl:value-of select='CreatedDate'></xsl:value-of>
						</time>
						<h3>
							<xsl:value-of select='Title'></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>

		</xsl:if>
	</xsl:template>



</xsl:stylesheet>