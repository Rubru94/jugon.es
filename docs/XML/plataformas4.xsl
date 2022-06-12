<?xml version='1.0' encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
			
				<meta charset="utf-8"/>
				
				<title>biblioteca.xsl</title>
				
				<link rel="stylesheet" href="../estilos/estilos2.css"/>
				
			</head>
			
			<body>
				
				<table id="datosNS" border="1" align="center">
					
					<tr id="cabeceraNS">
						<td>Compañia</td>
						<td>Lanzamiento</td>
						<td>Plataforma</td>
						<td>Unidades Vendidas</td>
					</tr>
					
					<tr>
						<td style="background-color:rgba(255,255,255,0.5); height:0,1em;" colspan="6"></td>
		
					</tr>
					
					<xsl:for-each select="jugones/plataformas/plataforma"> 
						
						<xsl:sort select="compania" order="descending"/>
						
						<xsl:sort select="unidadesVendidas" order="descending"/>
						
						<xsl:choose>
						
							<xsl:when test="compania='Nintendo'">
								
								<tr style="background-color:rgba(255,40,40,0.9)"> 
									<td><xsl:value-of select="compania"/></td>
									<td><xsl:value-of select="lanzamiento"/></td>
									<td><xsl:value-of select="nombre"/></td>
									<td><xsl:value-of select="unidadesVendidas"/></td>	
								</tr>
							
							</xsl:when>
							
							<xsl:when test="compania='SEGA'">
								
								<tr style="background-color:rgba(35,35,255,0.9)"> 
									<td><xsl:value-of select="compania"/></td>
									<td><xsl:value-of select="lanzamiento"/></td>
									<td><xsl:value-of select="nombre"/></td>
									<td><xsl:value-of select="unidadesVendidas"/></td>	
								</tr>
							
							</xsl:when>
							
							<!--
							<xsl:otherwise >

							</xsl:otherwise>
							-->
							
						</xsl:choose> 

					</xsl:for-each>
					
				</table>
		
				
			</body>
		
		</html>
	</xsl:template>

</xsl:stylesheet>