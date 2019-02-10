<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="sunway-career-3">
			<div class="container">
				<h2>
					<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>

				</h2>
				<div class="row">
					<div class="col">
						<div class="table-responsive">
							<table>
								<thead>
									<tr>
										<td>Nominee</td>
										<td>Number of applications</td>
										<td>location</td>
										<td>deadline</td>
									</tr>
								</thead>
								<tbody>
									<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>



								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>


	</xsl:template>

	<xsl:template match="News">
		<tr>
			<td>
				<a>
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
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>

			</td>
			<td>
				<xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select='SubTitle'></xsl:value-of>
			</td>
		</tr>


	</xsl:template>





</xsl:stylesheet>