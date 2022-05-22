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
                        <li><b><xsl:value-of select="tarea/nombre" />-</b> Prioridad:<xsl:value-of select="tarea/@prioridad" /><br />
                        De <xsl:value-of select="tarea/hora-ini" /> a <xsl:value-of select="tarea/hora-fin" /></li>
                    </ul>

                    <p>
                        <xsl:value-of select="tarea/nombre" />
                    </p>
                </xsl:for-each>

                <xsl:for-each select="horario/dia">
                    <p>
                        <xsl:value-of select="tarea/nombre" />- <xsl:choose>
                            <xsl:when test="tarea/hora-ini &gt; 9">
                                <xsl:text>Mañana</xsl:text>
                            </xsl:when>
                            <xsl:when test="tarea/hora-ini &gt; 14">
                                <xsl:text>Mediodia</xsl:text>
                            </xsl:when>
                            <xsl:when test="tarea/hora-ini > 18">
                                <xsl:text>Tarde</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>