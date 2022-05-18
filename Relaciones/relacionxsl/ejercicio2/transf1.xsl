<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 1</title>
                <meta charset="UTF-8" />
                <style>

                    table,td{border:1px solid black}
                    table{border-collapse: collapse, width:80%, margin: 0 auto}
                    th{background-color: #CCC}
                    .rojo{color:red}
                </style>
            </head>
            <body>
                <table>
                    <th>Título</th>
                    <th>Autor/es</th>
                    <th>Editor</th>

                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo" />

                        <tr>
                            <td>
                                <!-- Titulo de libro -->
                                <xsl:choose>
                                    <xsl:when test="precio &gt; 100">
                                        <span class="rojo"><xsl:value-of select="titulo" /> (Caro)</span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="titulo" />
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>

                            <td>
                                <!-- Autores de libro -->
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="nombre" /><xsl:text> </xsl:text><xsl:value-of select="apellido" /><br/>
                                </xsl:for-each>
                            </td>

                            <td>
                                <!-- Editores de libro -->
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="nombre" /><xsl:text> </xsl:text>
                                    <xsl:value-of select="apellido" /><xsl:text> (</xsl:text>
                                    <xsl:value-of select="afiliacion"></xsl:value-of><xsl:text>)</xsl:text><br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>