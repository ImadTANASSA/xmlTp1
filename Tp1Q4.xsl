<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                
                <h2>Relevé Bancaire</h2>
                <p>RIB : <xsl:value-of select="releve/@RIB"/></p>
                <p>Date du relevé : <xsl:value-of select="releve/dateReleve"/></p>
                <p>Solde : <xsl:value-of select="releve/solde"/></p>
                
                <h2>Opérations  <xsl:value-of select="releve/operations/@dateDebut"/> - <xsl:value-of select="releve/operations/@dateFin"/></h2>
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
                       <xsl:for-each select="releve/operations/operation">
                           <tr>
                               <td><xsl:value-of select="@type"/></td>
                               <td><xsl:value-of select="@date"/></td>
                               <td><xsl:value-of select="@montant"/> MAD</td>
                               <td><xsl:value-of select="@description"/></td>
                           </tr>
                       </xsl:for-each>
                    </tbody>
                </table>
                <p>Total des opérations de débit : <xsl:value-of select="count(releve/operations/operation[@type='DEBIT'])"/></p>
                <p>Total des opérations de crédit : <xsl:value-of select="count(releve/operations/operation[@type='CREDIT'])"/></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>