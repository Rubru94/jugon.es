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
				
				<table id="datos" border="1" align="center">
					
					<tr id="cabecera">
						<td style="background-color:rgba(5,255,30,0.9); height:2em;" colspan="6">Tipos de Plataformas</td>
		
					</tr>
					
					<tr id="cabecera">
						<td style="background-color:rgba(207,246,246,0.9); height:2em;" colspan="1">Sobremesa</td>
						<td style="background-color:rgba(255,173,255,0.9); height:2em;" colspan="2">Portatil</td>
						<td style="background-color:rgba(255,177,122,0.9); height:2em;" colspan="2">Computadora personal</td>
					</tr>
					
					<tr>
						<td style="background-color:rgba(255,255,255,0.5); height:1em;" colspan="6"></td>
		
					</tr>
					
					<tr id="cabecera">
						<td class="tabNombre">Nombre</td>
						<td>Compañia</td>
						<td>Generación</td>
						<td>Lanzamiento</td>
					<!--<td>CPU</td>-->
						<td>Juego Más Vendido</td>
					</tr>
					
					<xsl:for-each select="jugones/plataformas/plataforma"> 
						
						<xsl:sort select="compania" order="ascending"/>
						
						<xsl:choose>
						
							<xsl:when test="@tipo='sobremesa'">
								
								<tr style="background-color:rgba(207,246,246,0.9)">
									<td class="tabNombre"><xsl:value-of select="nombre"/></td> 
									<td><xsl:value-of select="compania"/></td>
									<td><xsl:value-of select="generacion"/></td>
									<td><xsl:value-of select="lanzamiento"/></td>
								<!--<td><xsl:value-of select="cpu"/></td>-->
									<td><xsl:value-of select="juegoMasVendido"/></td>
									
								</tr>
							
							</xsl:when>
							
							<xsl:when test="@tipo='portatil'">
								
								<tr style="background-color:rgba(255,173,255,0.9)">
									<td class="tabNombre"><xsl:value-of select="nombre"/></td> 
									<td><xsl:value-of select="compania"/></td>
									<td><xsl:value-of select="generacion"/></td>
									<td><xsl:value-of select="lanzamiento"/></td>
								<!--<td><xsl:value-of select="cpu"/></td>-->
									<td><xsl:value-of select="juegoMasVendido"/></td>
									
								</tr>
							
							</xsl:when>
							
							<xsl:otherwise >
								
								<tr style="background-color:rgba(255,177,122,0.9)">
									<td class="tabNombre"><xsl:value-of select="nombre"/></td> 
									<td><xsl:value-of select="compania"/></td>
									<td><xsl:value-of select="generacion"/></td>
									<td><xsl:value-of select="lanzamiento"/></td>
								<!--<td><xsl:value-of select="cpu"/></td>-->
									<td><xsl:value-of select="juegoMasVendido"/></td>
									
								</tr>
							
							</xsl:otherwise>

						</xsl:choose> 

					</xsl:for-each>
					
				</table>
		
				
			</body>
		
		</html>
	</xsl:template>

</xsl:stylesheet>