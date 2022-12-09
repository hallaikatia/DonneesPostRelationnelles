<?xml version="1.0" encoding="iso-8859-1" ?>

<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    
    <xsl:output
        method="html"
        encoding="iso-8859-1"
        doctype-system="ue.dtd" />
        
        
       <!--  
	<xsl:template match="/">
		<h1>Sortie principale</h1>

		<xsl:document href="index.html">
			<h1>Premiere page</h1>
        	<p>...</p>
		</xsl:document>


		<xsl:document href="unites.html">
			<h1>Deuxième page</h1>
        	<p>...</p>
		</xsl:document>
		
		
		<xsl:document href="intervenants.html">
			<h1>3eme page</h1>
        	<p>...</p>
		</xsl:document>


	</xsl:template>
        
         -->
        

	<xsl:template match="/">
		<html><body>
			<xsl:call-template name="description_du_semestre"/>
			<xsl:call-template name="liste_des_parcours"/>
			<xsl:call-template name="liste_des_unites"/>
			<xsl:call-template name="liste_des_intervenants"/>
		</body></html>
	</xsl:template>

	
	<xsl:template name="liste_des_intervenants">
		<xsl:for-each select="//intervenant">			
			<h1>Intervenant</h1>
			<ul><xsl:value-of select="nom"/>
				<li>Identifiant : <xsl:value-of select="id"/></li>
				<li>Adresse e-mail : <xsl:value-of select="adresseMail"/></li>
				<li>Site web : <xsl:value-of select="adresseSite"/></li>
			</ul>
		</xsl:for-each>
	</xsl:template>
	
	
	<xsl:template name="liste_des_unites">
		<xsl:for-each select="//unite">
			<h1>UE</h1>		
				<li>Identifiant : <xsl:value-of select="identifiant"/></li>
			<ul><xsl:value-of select="nom"/>
				<li>Nombre de crédits : <xsl:value-of select="nbrCredits"/></li>
				<li>Resumé : <xsl:value-of select="resume"/></li>
				<li>Plan : <xsl:value-of select="plan"/></li>
			 match="parcours"	<li>Lieu : <xsl:value-of select="lieu"/></li>
			</ul>
		</xsl:for-each>	
	</xsl:template>
	
	
	<xsl:template name="liste_des_parcours">
		<xsl:for-each select="//parcours">			
			<h3>Nom du parcours : <xsl:value-of select="nom"/></h3>
		</xsl:for-each>
	</xsl:template>
	
	
	<xsl:template name="description_du_semestre">
		<xsl:for-each select="//blocs">
			<h3>Role : <xsl:value-of select="role"/></h3>
		</xsl:for-each>
		
	</xsl:template>
  	

</xsl:stylesheet>

