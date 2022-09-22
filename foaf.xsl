<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:foaf="http://xmlns.com/foaf/0.1/"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
    <xsl:template match="/">
        <html>
            <body>
                <h2>My homePage</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Name</th>
                        <th>nickname</th>
                        <th>homePage</th>
                        <th>school</th>
                    </tr>
                    <td>
                        <xsl:value-of select="rdf:RDF/foaf:Person/foaf:name"/>
                    </td>
                    <td>
                        <xsl:value-of select="rdf:RDF/foaf:Person/foaf:nick"/>
                    </td>
                    <td>
                        <xsl:value-of select="rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource"/>
                    </td>
                    <td>
                        <xsl:value-of select="rdf:RDF/foaf:Person/foaf:schoolHomepage/@rdf:resource"/>
                    </td>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
