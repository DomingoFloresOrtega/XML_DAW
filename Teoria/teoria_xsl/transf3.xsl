<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 3</title>
                <meta charset="UTF-8" />
                <style>
                    .rojo{color:red} .verde{color: green} .azul{color:blue}
                </style>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo"> <!-- bucle para mostrar cada ciclo -->
                    <xsl:sort select="nombre" order="descending" /> <!-- ordenar por nombre en formato descendente-->
                    
                        <xsl:choose> <!-- seleccionar la opción segun los criterios -->
                            <xsl:when test="decretoTitulo/@año &lt; 2009">
                                <li><span class="rojo"><xsl:value-of select="nombre" /></span></li>
                            </xsl:when>
                            <xsl:when test="decretoTitulo/@año = 2009">
                                <li><span class="azul"><xsl:value-of select="nombre" /></span></li>
                            </xsl:when>
                            <xsl:otherwise>
                                <li><span class="verde"><xsl:value-of select="nombre" /></span></li>
                            </xsl:otherwise>
                        </xsl:choose>
                        
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>