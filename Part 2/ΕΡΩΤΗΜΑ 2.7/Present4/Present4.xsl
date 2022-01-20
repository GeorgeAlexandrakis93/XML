<?xml version="1.0" encoding="ISO-8859-7"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <body bgcolor="FireBrick">
            <h2>Τουριστικές Περιοχές</h2>
            <xsl:for-each select="Root_Element/Touristic_Location">
                <xsl:value-of select="Location_Name"/>
                <br> </br> <br> </br>
                <xsl:value-of select="Monuments/Mon_Name/@Name"/>
                <br> </br> <br> </br> <br> </br>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
