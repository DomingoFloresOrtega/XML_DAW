<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 7</title>
                <meta charset="UTF-8" />
                <style>
                    table,td{border:1px solid black}
                    table{border-collapse: collapse, width:80%, margin: 0 auto}
                    th{background-color: #CCC}
                    .verde{background-color: green}
                    .azul{background-color: blue}
                    .rojo{background-color: red}
                </style>
            </head>
            <body>
                <table>
                    <th>Código</th>
                    <th>Articulo</th>
                    <th>Cantidad</th>
                    <th>Precio</th>

                    <xsl:for-each select="tienda/producto">
                    <xsl:sort select="articulo" />
                        <tr>
                            <xsl:choose>
                                <xsl:when test="precio &lt;= 100">
                                    <td class="verde"><xsl:value-of select="codigo" /></td>
                                    <td class="verde"><xsl:value-of select="articulo" /></td>
                                    <td class="verde"><xsl:value-of select="cantidad" /></td>
                                    <td class="verde"><xsl:value-of select="precio" /></td>
                                </xsl:when>
                                <xsl:when test="precio &lt; 1000">
                                    <td class="azul"><xsl:value-of select="codigo" /></td>
                                    <td class="azul"><xsl:value-of select="articulo" /></td>
                                    <td class="azul"><xsl:value-of select="cantidad" /></td>
                                    <td class="azul"><xsl:value-of select="precio" /></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td class="rojo"><xsl:value-of select="codigo" /></td>
                                    <td class="rojo"><xsl:value-of select="articulo" /></td>
                                    <td class="rojo"><xsl:value-of select="cantidad" /></td>
                                    <td class="rojo"><xsl:value-of select="precio" /></td>
                                </xsl:otherwise>
                            </xsl:choose> 
                        </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>