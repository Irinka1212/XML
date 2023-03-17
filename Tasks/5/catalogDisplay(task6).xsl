<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<body> 
				<table>
					<thead> <!--таблицата с колони, наименовани каро шаблоните-->
						<tr>
							<th>Year</th>
							<th>Title</th>
							<th>Artist</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="catalog/cd"> <!--избирам по cd елементите да итерирам-->
							<tr>
								<td><xsl:call-template name="year"/></td> <!--чрез <xsl:call-template name=" "/> извиквам шаблоните по име-->
								<td><xsl:call-template name="title"/></td>
								<td><xsl:call-template name="artist"/></td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="year"> <!--дефинирам шаблон с име year, който извежда стойността на year елемента-->
		<xsl:value-of select="year"/>
	</xsl:template>
	<xsl:template name="title"> <!-- дефинирам шаблон с име title, който извежда стойността на title елемента-->
		<xsl:value-of select="title"/>
	</xsl:template>
	<xsl:template name="artist"> <!--дефинирам шаблон с име artist, който извежда стойността на artist елемента-->
		<xsl:value-of select="artist"/>
	</xsl:template>
</xsl:stylesheet>