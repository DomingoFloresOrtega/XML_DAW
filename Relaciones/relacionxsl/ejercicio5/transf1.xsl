<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 1</title>
                <meta charset="UTF-8" />
            </head>
            <body>
                <h1>Calificaciones de la convocatoria de Junio</h1>
                <table>
                    <tr>
                        <th colspan="3">Datos</th>
                        <th colspan="3">Notas</th>
                    </tr>
                    <tr>
                        <td>Nombres</td>
                        <td>Apellidos</td>
                        <td>Tareas</td>
                        <td>Cuestionarios</td>
                        <td>Examen</td>
                        <td>Final</td>
                    </tr>
                    <xsl:for-each select="notas/alumno">
                        <tr>
                            <td><xsl:value-of select="nombre" /></td>
                            <td><xsl:value-of select="apellidos" /></td>
                            <td><xsl:value-of select="tareas" /></td>
                            <td><xsl:value-of select="cuestionarios" /></td>
                            <td></td>
                            <xsl:choose>
                                <xsl:when test="final &gt; 7">
                            
                                </xsl:when>
                                <xsl:when test="">

                                </xsl:when>
                            </xsl:choose>
                            <td><xsl:value-of select="final" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>