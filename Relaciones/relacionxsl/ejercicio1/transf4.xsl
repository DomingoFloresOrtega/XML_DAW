<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 4</title>
                <meta charset="UTF-8" />
                <style>
                    table{border-collapse:collapse}
                    table,td{border:1px solid black}
                </style>
            </head>
            <body>
                <table>
                    <xsl:apply-templates />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <tr>
            <td><xsl:value-of select="nombre" /></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>