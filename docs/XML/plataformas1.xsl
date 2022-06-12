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
						<td class="tabNombre">Nombre</td>
						<td>Compañia</td>
						<td>Generación</td>
						<td>Lanzamiento</td>
						<td>CPU</td>
					<!--<td>GPU</td>-->
					<!--<td>Juego Más Vendido</td>-->
					<!--<td>Unidades Vendidas</td>-->
					</tr>
					
					<xsl:for-each select="jugones/plataformas/plataforma"> 
							
						<xsl:sort select="nombre" order="ascending"/>
							
						<tr>
							<td class="tabNombre"><xsl:value-of select="nombre"/></td> 
							<td><xsl:value-of select="compania"/></td>
							<td><xsl:value-of select="generacion"/></td>
							<td><xsl:value-of select="lanzamiento"/></td>
							<td><xsl:value-of select="cpu"/></td>
						<!--<td><xsl:value-of select="gpu"/></td>-->
						<!--<td><xsl:value-of select="juegoMasVendido"/></td>-->
						<!--<td><img width="50" height="70" src="{./portada/node()}" class="CalloutRightPhoto"/></td>-->
						<!--<td><xsl:value-of select="unidadesVendidas"/></td>-->
							
						</tr>
							
					</xsl:for-each>
					
				</table>
		
				
			</body>
		
		</html>
	</xsl:template>

</xsl:stylesheet>