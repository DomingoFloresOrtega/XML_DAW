<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 3</title>
                <meta charset="UTF-8" />
            </head>
            <body>
                <h1>Autores de libros</h1>
                <ol>
                    <xsl:for-each select="bib/libro/autor">
                        <xsl:sort select="apellido" />

                        <li>
                            <xsl:value-of select="apellido" /><xsl:text>, </xsl:text><xsl:value-of select="nombre" />
                        </li>

                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>