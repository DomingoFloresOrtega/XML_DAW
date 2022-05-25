<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 4</title>
                <meta charset="UTF-8" />
            </head>
            <body>
                <xsl:for-each select="horario/dia">
                <xsl:sort select="numdia" />
                    <p>
                        <xsl:choose>
                            <xsl:when test="numdia = 1">
                                <xsl:text>Lunes</xsl:text>
                            </xsl:when>
                            <xsl:when test="numdia = 2">
                                <xsl:text>Martes</xsl:text>
                            </xsl:when>
                            <xsl:when test="numdia = 3">
                                <xsl:text>Miercoles</xsl:text>
                            </xsl:when>
                            <xsl:when test="numdia = 4">
                                <xsl:text>Jueves</xsl:text>
                            </xsl:when>
                            <xsl:when test="numdia = 5">
                                <xsl:text>Viernes</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </p>
                    <ul>
                        <xsl:for-each select="tarea">
                            <li><b><xsl:value-of select="nombre" /></b> 
                            <xsl:if test="@prioridad != ''">
                                - Prioridad:<xsl:value-of select="@prioridad" />
                            </xsl:if><br />
                            De <xsl:value-of select="hora-ini" /> a <xsl:value-of select="hora-fin" /></li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>

                <xsl:for-each select="horario/dia">
                    <xsl:for-each select="tarea">
                        <p>
                            <xsl:value-of select="nombre" />- <xsl:choose>
                                <xsl:when test="hora-ini &lt; 12">
                                    <xsl:text>Por la mañana</xsl:text>
                                </xsl:when>
                                <xsl:when test="hora-ini &lt; 16">
                                    <xsl:text>Por el mediodia</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>Por la tarde</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose><br />
                        </p>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>