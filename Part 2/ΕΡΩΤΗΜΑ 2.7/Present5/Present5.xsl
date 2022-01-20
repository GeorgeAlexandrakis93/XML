<?xml version="1.0" encoding="ISO-8859-7"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <body bgcolor="FireBrick">
            <xsl:for-each select="Root_Element/Touristic_Location">
                <xsl:if test="Location_Climate/@Moist_Perc &lt; 40">
                    <xsl:value-of select="Location_Name"/>
			        <br> </br>
			        <br> </br>
                </xsl:if>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>