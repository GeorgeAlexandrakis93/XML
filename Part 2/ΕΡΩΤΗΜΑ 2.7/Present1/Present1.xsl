<?xml version="1.0" encoding="ISO-8859-7"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body bgcolor="FireBrick">
      <table border="5">
        <tr bgcolor="Brown">
          <th> Όνομα Περιοχής </th>
          <th> Απόσταση απο Αθήνα </th>
        </tr>
        <xsl:apply-templates/>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="Root_Element">
  <xsl:for-each select="Touristic_Location">
    <xsl:if test="Routing/Distance/@From='Αθήνα'">
      <tr bgcolor="SaddleBrown">
	      <td> <xsl:value-of select="Location_Name"/> </td>
        <td>
            <xsl:value-of select="Routing/Distance/@Value"/>
            <xsl:value-of select="Routing/Distance/@Unit"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:for-each>
</xsl:template>

</xsl:stylesheet>