<?xml version="1.0" encoding="UTF-8"?>
      <!-- original : https://gist.github.com/MiguelSMendoza/89da9bac636bc9ef9e37431583fbc5fa -->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:outline="http://wkhtmltopdf.org/outline"
                xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
              doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
              indent="yes" />
  <xsl:template match="outline:outline">
    <html>
      <head>
        <title>目次</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@400" rel="stylesheet" />
        <style>
          * {
            box-sizing: border-box;
            font-family: 'Noto Sans JP';
            font-weight: 400;
          }

          h1 {
            text-align:center;
            font-weight: bold;
          }

          .title_list {
	          margin: 0;
	          padding: 0;
          }
          .list-element{
            display: block;
            list-style: none;
            width: 100%;
            height: 30px;
            line-height: 30px;
            text-align: center;
            vertical-align: middle;
            position: relative;
          }
          .list-element > a{
            position: absolute;
            display:block;
            top:0;
            right:0;
            bottom:0;
            left:0;
          }
          .elem-link {
            display: inline-block;
            width: 30%;
            height: 30px;
            position: absolute;
            left: 0;
            top: 0;
            text-align: start;
          }
          .elem-line {
            display: inline-block;
            width: 65%;
            height: 0px;
            position: absolute;
            top: 50%;
            left: 30%;
            margin-top: -1px;
            border-top: 2px dotted #ccc;
          }
          .page-number {
            display: inline-block;
            width: 5%;
            height:30px;
            position: absolute;
            right: -10%;
            top: -15px;
            font-family: "Source Code Pro";
          }
        </style>
      </head>
      <body>
        <h1>目次</h1>
        <!-- <ul><xsl:apply-templates select="outline:item/outline:item"/></ul> -->
        <ul class="title_list">
          <xsl:apply-templates select="outline:item/outline:item"/>
        </ul>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="outline:item">
    <xsl:if test="@title!=''">
      <li class="list-element">
        <div class="elem-link">
          <a>
            <xsl:if test="@link">
              <xsl:attribute name="href"><xsl:value-of select="@link"/></xsl:attribute>
            </xsl:if>
            <xsl:if test="@backLink">
              <xsl:attribute name="name"><xsl:value-of select="@backLink"/></xsl:attribute>
            </xsl:if>
            <xsl:value-of select="@title" /> 
          </a>
        </div>
        <div class="elem-line"> </div>
        
        <div class="page-number"> <xsl:value-of select="@page" /> </div>
      </li>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>