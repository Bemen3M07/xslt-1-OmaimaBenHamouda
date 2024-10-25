<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1>hola</h1>
    <h1><xsl:value-of select="ciclo"/></h1>
    <table>
    <xsl:for-each select="Estudiantes/Estudiante">
     <xsl:sort select="nota">
        <tr>
            <td><xsl:value-of select="Nombre"/></td>
            <td><xsl:value-of select="Apellido"/></td>
            <td><xsl:value-of select="ciclo"/></td>
            <td><xsl:value-of select="Nota"/></td>
        </tr>
       
        </xsl:for-each>

    </table>

</body>

</html>

</xsl:template>
</xsl:stylesheet>


