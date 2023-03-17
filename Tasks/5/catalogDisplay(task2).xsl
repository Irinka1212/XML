<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head></head>
			<body>
				<table border="1px solid">
					<xsl:for-each select=".//track"> 
						<tr>
							<xsl:choose>
							<!--чрез <xsl:choose> за всеки елемент track, извежда в HTML формат-->
								<xsl:when test="string-length() &gt; 15"> <!--извеждам "A big string", ако дължината на стойността на track елемента е по-голяма от 15 и &gt; използавам за >-->
									<td>A big string</td>
								</xsl:when>
								<xsl:when test="string-length() &lt; 15"> <!--извеждам "A small string", ако дължината на стойността на track елемента е по-малка от 15 и &lt; зползвам за <-->
									<td>A small string</td>
								</xsl:when>
								<xsl:otherwise> <!--чрез <xsl:otherwise>, което е за противен случай, извеждам "A medium string", ако дължината на стойността на track не отговаря на нито едно от горните условия-->
									<td>A medium string</td>
								</xsl:otherwise>
							</xsl:choose>
							<td><xsl:value-of select="text()"/></td>
							<td><xsl:value-of select="string-length()"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>