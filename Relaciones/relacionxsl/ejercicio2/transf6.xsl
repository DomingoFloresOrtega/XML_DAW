<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 6</title>
                <meta charset="UTF-8" />
                <style>

                    table,td{border:1px solid black}
                    table{border-collapse: collapse, width:80%, margin: 0 auto}
                    th{background-color: #CCC}
                    .rojo{background-color:red}
                    .verde{background-color: green}
                </style>
            </head>
            <body>
                <table>
                    <th>Disco</th>

                    <xsl:for-each select="catalogo/cds/cd">

                        <tr>
                                <!-- Titulo del disco -->
                                <xsl:choose>
                                    <xsl:when test="año &gt; 2000">
                                        <td class="verde"><xsl:value-of select="titulo" /></td>
                                    </xsl:when>
                                    <xsl:when test="año = 2000">
                                        <td><xsl:value-of select="titulo" /></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td class="rojo"><xsl:value-of select="titulo" /></td>
                                    </xsl:otherwise>
                                </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>