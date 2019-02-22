<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">


		<section class="sunway-career-detail-1">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-xl-8">
						<h1>
							<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
							<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h1>

						<xsl:apply-templates select='/NewsDetail/NewsAttributes'></xsl:apply-templates>

						<a class="btn btn-more" href="#">apply now</a>
					</div>
					<div class="col-lg-5 col-xl-4">
						<h2>Other career</h2>
						<div class="table-responsive">
							<table>
								<tbody>
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>



								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<h3>
			<xsl:value-of select='Title'></xsl:value-of>

		</h3>
		<xsl:value-of select='Content' disable-output-escaping='yes'></xsl:value-of>

		</xsl:template>
	<xsl:template match="NewsOther">
		<tr>
			<td><span class="mdi mdi-account">
			</span>
			<a >
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Target'></xsl:value-of>
				</xsl:attribute>
					<xsl:value-of select='Title'></xsl:value-of>
				</a>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</td>
			<td><span class="mdi mdi-account-multiple">
			</span>
			<xsl:value-of select='BriefContent'></xsl:value-of>

		</td>
			<td><span class="mdi mdi-calendar-text"></span>
				<xsl:value-of select='SubTitle'></xsl:value-of>
			</td>
		</tr>
	</xsl:template>


</xsl:stylesheet>