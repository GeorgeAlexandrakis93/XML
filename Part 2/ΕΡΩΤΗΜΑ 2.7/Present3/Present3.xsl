<?xml version="1.0" encoding="ISO-8859-7"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body bgcolor="FireBrick">
        <table border="5">
        <tr bgcolor="Brown">
          <th>Όνομα Τοποθεσίας</th>
          <th>Ποσοστό Υγρασίας</th>
        </tr>
        <xsl:for-each select="Root_Element/Touristic_Location">
            <xsl:sort select="Location_Climate/@Moist_Perc" order="descending"/>
            <tr bgcolor="SaddleBrown">
	            <td> <xsl:value-of select="Location_Name"/> </td>
                <td> <xsl:value-of select="Location_Climate/@Moist_Perc"/> </td>
            </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template></xsl:stylesheet>