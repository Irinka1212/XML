<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<body> 
				<table>
					<tr>
						<th>Year</th>
						<th>Title</th>
						<th>Artist</th>
					</tr>
					<xsl:for-each select="catalog/cd"> 
						<tr>
							<td>
								<xsl:call-template name="year"> <!--чрез <xsl:call-template> извиквам шаблоните по име и чрез <xsl:with-param> с параметъра-->
									<xsl:with-param name="yearName" select="year"/>
								</xsl:call-template>
							</td> 
							<td>
								<xsl:call-template name="title">
									<xsl:with-param name="titleName" select="title"/>
								</xsl:call-template>
							</td>
							<td>
								<xsl:call-template name="artist">
									<xsl:with-param name="artistName" select="artist"/>
								</xsl:call-template>
							</td> 
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="year"> <!--дефинирам шаблон с име year, който има параматър с име yearName и извежда стойността на year елемента-->
		<xsl:param name="yearName"/> <!--чрез <xsl:param> задавам параметъра -->
		<xsl:value-of select="$yearName"/>
	</xsl:template>
	<xsl:template name="title"> <!--дефинирам шаблон с име title, който има параматър с име titleName и извежда стойността на title елемента-->
		<xsl:param name="titleName"/>
		<xsl:value-of select="$titleName"/>
	</xsl:template>
	<xsl:template name="artist"> <!--дефинирам шаблон с име artist, който има параматър с име artistName и извежда стойността на artist елемента-->
		<xsl:param name="artistName"/>
		<xsl:value-of select="$artistName"/>
	</xsl:template>
</xsl:stylesheet>