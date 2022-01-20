<?xml version="1.0" encoding="ISO-8859-7"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <body bgcolor="FireBrick">
            <xsl:apply-templates/>
        </body>
    </html>
</xsl:template>

<xsl:template match="Root_Element">
	<xsl:for-each select="Touristic_Location">
        	<xsl:sort select="Location_Name"/>
        	<xsl:value-of select="Location_Name"/>
		<br> </br> <br> </br>
    	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>