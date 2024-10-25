<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="yellow">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
      <th style="text-align:left">Country</th>
      <th style="text-align:left">Price</th>
    </tr>

  <xsl:apply-templates/>
  </table>

  </body>
</html>
</xsl:template>






<xsl:template match="catalog/cd">
  <!--<xsl:sort select="artist"/>-->
      
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
        <td><xsl:value-of select="country"/></td>
        <td ><xsl:value-of select="price"/></td>

  
      <xsl:if test="price &lt; 10">
         <td style="\1F7E2">&#128994;</td>
      </xsl:if>

       <xsl:if test="price &gt; 10">
          <td style="\1F534">&#128308;</td>
      </xsl:if>

      </tr>
    <!--<xsl:for-each select="catalog/cd[country='USA']">-->
</xsl:template>


  


</xsl:stylesheet>

