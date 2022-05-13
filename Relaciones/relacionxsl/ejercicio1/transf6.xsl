<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 6</title>
                <meta charset="UTF-8" />
            </head>
            <body>
                <h1>
                    <xsl:value-of select="ies/@nombre" />
                </h1>
                <p>Página web: <a><xsl:attribute name="href"><xsl:value-of select="ies/@web" /></xsl:attribute>http://www.maralboran.com</a></p>
                <ul>
                    <xsl:apply-templates />
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
            <li><xsl:value-of select="nombre" /></li>
    </xsl:template>
</xsl:stylesheet>