<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 1</title>
                <meta charset="UTF-8" />
                <style>
                    table{border: 1px solid black}
                    td{border: 1px solid black}
                    .azul{color: blue}
                    .azul2{color: aqua}
                    .negro{color: black}
                    .naranja{color: orange}
                    .rojo{color: red}
                </style>
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
                            <td><xsl:value-of select="examen" /></td>
                            <xsl:choose>
                                <xsl:when test="final &gt; 8">
                                    <td><a class="azul">Sobresaliente</a></td>
                                </xsl:when>
                                <xsl:when test="final &gt; 6">
                                    <td><a class="azul2">Notable</a></td>
                                </xsl:when>
                                <xsl:when test="final &gt; 5">
                                    <td><a class="negro">Bien</a></td>
                                </xsl:when>
                                <xsl:when test="final &gt; 4">
                                    <td><a class="naranja">Suficiente</a></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><a class="rojo">Suspenso</a></td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>