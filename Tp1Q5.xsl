<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>opérations de type CREDIT d’un relevé bancaire.</h2>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Date</th>
                            <th>Montant</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                            <tr>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:value-of select="@date"/></td>
                                <td><xsl:value-of select="@montant"/> MAD</td>
                                <td><xsl:value-of select="@description"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>