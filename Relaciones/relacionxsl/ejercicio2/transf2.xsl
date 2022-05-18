<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 2</title>
                <meta charset="UTF-8" />
                <style>

                    table,td{border:1px solid black}
                    table{border-collapse: collapse, width:80%, margin: 0 auto}
                    th{background-color: #CCC}
                    .fondorojo{background-color:red}
                </style>
            </head>
            <body>
                <table>
                    <th>Precio</th>
                    <th>Titulo</th>
                    <th>Año de publicacion</th>

                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" />

                        <tr>
                            <td>
                                <!-- Precio de libro -->
                                <xsl:value-of select="precio" />
                            </td>

                            <td>
                                <!-- Titulo de libro -->
                                <xsl:choose>
                                    <xsl:when test="precio &gt; 100">
                                        <span class="fondorojo"><xsl:value-of select="titulo" /></span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="titulo" />
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>

                            <td>
                                <!-- Año de publicación -->
                                <em><xsl:value-of select="@año" /></em>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>