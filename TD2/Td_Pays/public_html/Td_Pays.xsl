<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="tableau">
        <html>
            <head>
                <link href="Td_Pays.css" type="text/css" rel="stylesheet"/>
                <title>Tp XML Pays</title>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Pays</th>
                        <th>Or</th>
                        <th>Argent</th>
                        <th>Bronze</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ligne">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    
    <xsl:template match="pays">
        <xsl:choose>
            <xsl:when test="@nomDePays ='USA'">
                <td class="USA"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when> 
            
            <xsl:when test="@nomDePays ='Grande Bretagne'">
                <td class="GrandeBretagne"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when>
            
            <xsl:when test="@nomDePays ='Chine'">
                <td class="Chine"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when>
            
            <xsl:when test="@nomDePays ='Russie'">
                <td class="Russie"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when>
            
            <xsl:when test="@nomDePays ='Allemagne'">
                <td class="Allemagne"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when>
            
            <xsl:when test="@nomDePays ='Japon'">
                <td class="Japon"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when> 
            
            <xsl:when test="@nomDePays ='France'">
                <td class="France"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when> 
            
            <xsl:when test="@nomDePays ='Corée du Sud'">
                <td class="CoréeduSud"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when> 
            <xsl:when test="@nomDePays ='Italie'">
                <td class="Italie"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when> 
            <xsl:when test="@nomDePays ='Australie'">
                <td class="Australie"> 
                    <xsl:value-of select="@nomDePays"/>
                </td>
            </xsl:when>                                          
            
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="medaille">
        <xsl:choose>
            <xsl:when test="@typeDeMedaille ='or'">
                <td class="or"> 
                    <xsl:apply-templates/>
                </td>
            </xsl:when>           
            <xsl:when test="@typeDeMedaille ='argent'">
                <td class="argent"> 
                    <xsl:apply-templates/>
                </td>
            </xsl:when>            
            <xsl:when test="@typeDeMedaille ='bronze'">
                <td class="bronze"> 
                    <xsl:apply-templates/>
                </td>
            </xsl:when>
            
        </xsl:choose>
    </xsl:template>
    
    
        
        
    
    
    
    
        
        
   
    
    

    
    

</xsl:stylesheet>
