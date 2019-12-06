<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>
                    <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title" />
                </title>
                 <link href="stile.css" rel="stylesheet" type="text/css"/>                 
            </head>
            <body>
            	<header>
            		<h1>
            		 <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title" />
            		</h1>
            		<p>
            			Questo sito è stato realizzato per il corso di Codifica di testi, a.a 2018/2019, del corso di laurea in Informatica Umanistica.<br></br>
            			Vengono qui presentate due cartoline,scritte durante la prima guerra mondiale, provenienti dal <i>Museo Civico Etnografico "Giovanni Podenzana"</i>, Sezione dei cimeli garibaldini e della Prima Guerra Mondiale, del comune di La Spezia (SP).
            		</p>
            	</header>                
                <h2>
                    <xsl:value-of select="//tei:title[@xml:id = 'titolo147']" />
                </h2>
                 <div id="F147">
                    <img class="fronte">
                        <xsl:attribute name="src">
                    <xsl:value-of select="//tei:surface[@xml:id = 'surface_147F']/tei:graphic/@url" />
                        </xsl:attribute>
                    </img>
                </div>
                <div id="R147">
                    <img class="retro">
                        <xsl:attribute name="src">
                    <xsl:value-of select="//tei:surface[@xml:id = 'surface_147R']/tei:graphic/@url" />
                        </xsl:attribute>
                    </img>
                </div>
                
                    <div id="informazioni147" class="informazioni">
                        <br />
                        <p class="informazioniTxt">
                    <xsl:apply-templates select="//tei:TEI[@xml:id = 'cart147'] " />
                </p>
                </div>

                <h2>
                    <xsl:value-of select="//tei:title[@xml:id = 'titolo208']" />
                </h2>

                <div id="F208">
                    <img  class="fronte">
                        <xsl:attribute name="src">
                    <xsl:value-of select="//tei:surface[@xml:id = 'surface_208F']/tei:graphic/@url" />
                        </xsl:attribute>
                    </img>
                </div>
                <div id="R208">
                    <img class="retro">
                        <xsl:attribute name="src">
                    <xsl:value-of select="//tei:surface[@xml:id = 'surface_208R']/tei:graphic/@url" />
                        </xsl:attribute>
                    </img>
                </div>

                <div id="informazioni208" class="informazioni">
                        <br />
                        <p class="informazioniTxt">
                    <xsl:apply-templates select="//tei:TEI[@xml:id = 'cart208'] " />
                       </p>
                </div>

                <div id="about">
                <h1>About</h1>
                <table>
                         <xsl:for-each select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt" >
                            <br />

                        <th style="color: green;">
                                  <p> 
                                    <xsl:value-of select="current()//tei:resp"/>
                                  </p>
                                </th>
                                
                                <xsl:for-each select="current()//tei:name">
                                    <td style="color: green;">
                                    	
                                        <xsl:value-of select="current()"/>
                                    
                                    </td>
                                </xsl:for-each>                            
                        </xsl:for-each>
                    </table>

                    <br />

                   
                     
                    <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/>

                    <br />

                 <table >
                        <xsl:for-each select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt">
                            
                                <th style="color: green; ">

                                  <p> 
                                    <xsl:value-of select="current()//tei:resp"/>
                                  </p>
                                </th>
                                
                                <xsl:for-each select="current()//tei:name">
                                    <td style="color: green;">
                                        <xsl:value-of select="current()"/>
                                    </td>
                                </xsl:for-each>                            
                        </xsl:for-each>                


                    </table>

                    <br />
                 
                <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt"/>

                

               
           </div>

            </body>
          
        </html>
    </xsl:template>

<xsl:template match="tei:title">
    
</xsl:template>  
   
<xsl:template match="tei:titleStmt">
  
</xsl:template> 

<xsl:template match="tei:editionStmt">
    
</xsl:template>  

<xsl:template match="tei:objectType">
    
</xsl:template>

<xsl:template match="tei:country">
    
</xsl:template>

<xsl:template match="tei:settlement">
    
</xsl:template>

<xsl:template match="tei:repository">
    
</xsl:template>

<xsl:template match="tei:publicationStmt">
    
</xsl:template>  

<xsl:template match="tei:notesStmt">
    
</xsl:template>  

<xsl:template match="tei:material">
    
</xsl:template>  

<xsl:template match="tei:listPerson">
    
</xsl:template>  

<xsl:template match="tei:listPlace">
    
</xsl:template>  

<xsl:template match="tei:textClass">

</xsl:template>  

<xsl:template match="tei:langUsage">
    
</xsl:template>  

<xsl:template match="tei:head">
    
</xsl:template>  

<xsl:template match="tei:div[@type = 'stampe_cartolina'] ">

</xsl:template>

<xsl:template match="tei:stamp[@type = 'francobollo'] ">
    
</xsl:template>  

<xsl:template match="tei:docAuthor">
  <b>Artista: </b> 
  <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="tei:figDesc">    
  <b>Descrizione: </b> 
  <xsl:value-of select="."/>
  <br />
</xsl:template>
   
<xsl:template match="tei:idno">    
  <b>Codice Identificativo: </b> 
  <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="tei:summary">    
  <b>Tipologia: </b> 
  <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="tei:textLang">    
  <b>Lingua: </b> 
  <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="tei:height">
    <b>Altezza: </b> 
  <xsl:value-of select="."/> cm
  <br />
</xsl:template>  

<xsl:template match="tei:width">
    <b>Larghezza: </b> 
  <xsl:value-of select="."/> cm
  <br />
</xsl:template>

<xsl:template match="tei:condition">
    <b>Condizione: </b> 
  <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="tei:correspAction[@type = 'sent'] ">
    <b>Data e luogo di invio: </b> 
  <xsl:value-of select="tei:placeName"/>
  &#160;    
  <xsl:value-of select="tei:date"/>
  <br />
  <b>Mittente: </b> 
  <xsl:value-of select="tei:persName"/>
  <br />
</xsl:template>

<xsl:template match="tei:correspAction[@type = 'received'] ">
    <b>Destinatario: </b> 
  <xsl:value-of select="tei:persName"/>
  <br />
</xsl:template>

<xsl:template match="tei:stamp[@type = 'postage'] ">
    <b>Francobollo: </b> 
  <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="tei:stamp[@type = 'postmark'] ">
    <b>Timbro: </b> 
  <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="tei:address ">
    <b>Indirizzo del destinatario: </b>     
  <xsl:value-of select="."/>       
      <br />
</xsl:template>

<xsl:template match="tei:address[@xml:id = 'address2'] ">
    <b>Indirizzo del destinatario: </b> 
  <xsl:value-of select="//tei:choice[1]/tei:abbr"/>&#160;
  <xsl:value-of select="//tei:choice[2]/tei:abbr"/>&#160;
  <xsl:value-of select="//tei:addrLine[@xml:id = 'uno']"/>&#160;
  <xsl:value-of select="//tei:addrLine[@xml:id = 'due']"/>&#160;
  <xsl:value-of select="//tei:addrLine[@xml:id = 'tre']"/>&#160;  
  <br />
</xsl:template>

<xsl:template match="tei:div[@type = 'message'] ">
    <b>Testo del messaggio: </b> 
  <xsl:value-of select="."/> 
  <br />
</xsl:template>
 

</xsl:stylesheet>
