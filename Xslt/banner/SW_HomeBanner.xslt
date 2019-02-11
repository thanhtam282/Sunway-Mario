<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
  exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <xsl:if test="count(/BannerList/Banner) > 0">
      <section class="sunway-home-1">
        <article>
          <div class="rev_slider_wrapper">
            <div class="rev-slider" id="revSlider1">
              <ul>
                <xsl:apply-templates select="/BannerList/Banner" mode="image"></xsl:apply-templates>

  
              </ul>
            </div>
          </div>
        </article>
      </section>
    </xsl:if>
  </xsl:template>

  <xsl:template match="Banner" mode="image">
      <li data-transition="parallaxtoright">
        <img>
        <xsl:attribute name='src'>
          <xsl:value-of select='ImageUrl'></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name='alt'>
          <xsl:value-of select='Title'></xsl:value-of>
        </xsl:attribute>
        </img>
      </li>



  </xsl:template>
</xsl:stylesheet>