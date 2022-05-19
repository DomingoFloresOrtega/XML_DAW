<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 4</title>
                <meta charset="UTF-8" />
                <style>
                    table,td{border:1px solid black}
                    table{border-collapse: collapse, width:80%, margin: 0 auto}
                    th{background-color: #CCC}
                </style>
            </head>
            <body>
                <table>
                    <th colspan="2">Articulos de la tienda</th>
                    <xsl:for-each select="tienda/producto">
                        <tr>
                            <td>Articulos de mi tienda</td>
                        
                            <td>
                                <xsl:value-of select="articulo" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>