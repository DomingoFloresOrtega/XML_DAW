<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 2</title>
                <meta charset="UTF-8" />
            </head>
            <body>
                <h1>Articulos de la tienda</h1>
                <ul>
                    <xsl:for-each select="tienda/producto">
                        <li>
                            <xsl:value-of select="articulo" />
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>