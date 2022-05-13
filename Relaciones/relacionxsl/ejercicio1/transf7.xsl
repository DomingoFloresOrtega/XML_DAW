<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 7</title>
                <meta charset="UTF-8" />
                <style>
                    table{border-collapse:collapse}
                    table,td,th{border: 1px solid black}
                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="ies/@nombre" />
                </h1>
                <p>Página web: <a><xsl:attribute name="href"><xsl:value-of select="ies/@web" /></xsl:attribute>http://www.maralboran.com</a></p>
                <table>
                    <tr>
                        <th>Nombre del ciclo</th>
                        <th>Grado</th>
                        <th>Año de titulo</th>
                    </tr>
                    <xsl:apply-templates />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
            <tr>
                <td><xsl:value-of select="nombre" /></td>
                <td><xsl:value-of select="grado" /></td>
                <td><xsl:value-of select="decretoTitulo/@año" /></td>
            </tr>
    </xsl:template>
</xsl:stylesheet>