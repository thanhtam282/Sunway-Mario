<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
  exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />
  <xsl:template match="/">

    <section class="sunway-news-detail-1">
      <div class="container">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1>
              <xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
            </h1>
            <time>
              <xsl:value-of select='/NewsDetail/CreatedDate'></xsl:value-of>
            </time>
            <div class="briefcontent">

              <xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping='yes'></xsl:value-of>
            </div>
            <div class="fullcontent">
              <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping='yes'></xsl:value-of>

            </div>
            <div class="social-networks nav">
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
        <div class="row">
          <div class="col">
            <h2 class="title">tin tuc khac</h2>
            <div class="wrapper-news">
              <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>



            </div>
          </div>
        </div>
      </div>
    </section>

  </xsl:template>
  <xsl:template match="NewsOther">
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
  </xsl:template>


</xsl:stylesheet>