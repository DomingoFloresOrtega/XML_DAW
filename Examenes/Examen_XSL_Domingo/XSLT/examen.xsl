<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion XSLT</title>
                <meta charset="UTF-8" />
                <style>
                    td img{height:  100px}
                    .esp{padding-left: 50px}
                </style>
            </head>
            <body>
                <h1>Información de los continentes</h1>
                <ol>
                    <xsl:for-each select="geografia/continentes/continente">
                        <xsl:sort select="." order="ascending" />
                        <li>
                            <h2>
                                <xsl:value-of select="@nombre" />
                            </h2>
                        </li>

                        <ul>
                            <xsl:for-each select="pais">
                                <xsl:sort select="." order="descending" />

                                <li>
                                    <a>
                                        <xsl:attribute name="href">#<xsl:value-of select="." /></xsl:attribute><xsl:value-of select="." />
                                        <br />
                                    </a>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </xsl:for-each>
                </ol>

                <h1>Información de los Paises</h1>
                <ol>
                    <xsl:for-each select="geografia/paises/pais">
                        <xsl:sort select="@nombre" />
                        <li>
                            <h2>
                                <xsl:attribute name="id"><xsl:value-of select="@nombre" /></xsl:attribute><xsl:value-of select="@nombre" />
                            </h2>
                        </li>

                        <table>
                            <tr>
                                <td>
                                    <p><b>Sistema de Gobierno: </b><xsl:value-of select="sistema" /></p>
                                    <p><b>Superficie: </b><xsl:value-of select="superficie" /> m²</p>
                                    <p><b>Idioma: </b><xsl:value-of select="idioma" /></p>
                                    <p><b>Moneda: </b><xsl:value-of select="moneda" /></p>
                                </td>
                                <td class="esp">
                                    <img><xsl:attribute name="src">Img/<xsl:value-of select="@nombre" />.png</xsl:attribute></img>
                                </td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>