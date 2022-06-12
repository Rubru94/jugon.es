<?xml version='1.0' encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
			
				<meta charset="utf-8"/>
				
				<title>biblioteca.xsl</title>
				
				<link rel="stylesheet" href="../estilos/estilos2.css"/>
				<!--
				<style>
					*{text-align:left; 
					}
					
					table{
						border:solid;
						/*border-collapse:collapse;*/
					}
					td{padding:5px;
					}
					#cabecera{background-color:#C6B5D4;
							  
					}
					#cabecera td{text-align:center;
					}
				</style>
				-->
			</head>
			
			<body>
				
				<table id="datosP" border="1" align="center">
					
					<tr id="cabeceraP">
						<td class="tabNombre">Plataforma</td>
						<td>Compañia</td>
						<td>Juego Más Vendido</td>
						<td>Portada</td>
					<!--<td>Unidades Vendidas</td>-->
					</tr>
					
					<xsl:for-each select="jugones/plataformas/plataforma"> 
						
						<xsl:sort select="juegoMasVendido" order="ascending"/>
						
						<xsl:if test="portada and @tipo='sobremesa'"> 
						
							<tr>
							<td class="tabNombre"><xsl:value-of select="nombre"/></td> 
							<td><xsl:value-of select="compania"/></td>
							<td><xsl:value-of select="juegoMasVendido"/></td>
							<td><img src="{./portada/node()}" class="CalloutRightPhoto"/></td>
						<!--<td><xsl:value-of select="unidadesVendidas"/></td>-->
							
						</tr>
							
						</xsl:if>
												
					
						
						
							
					</xsl:for-each>
					
				</table>
		
				
			</body>
		
		</html>
	</xsl:template>

</xsl:stylesheet>