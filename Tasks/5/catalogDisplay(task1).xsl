<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--декларация на шаблона-->
	<xsl:template match="/">
		<html>
			<head></head>
			<body>
				<table border="1px solid"> <!--стойностите на всички track елементи, които имат стойност на атрибута length равна на 4:04-->
					<xsl:for-each select=".//track"> <!--for-each и select за всички track елементи-->
						<xsl:if test="@length='4:04'"> <!--if задава условието-->
							<tr>
								<td><xsl:value-of select="text()"/></td> <!--избирам стойността на текст-->
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<table border="1px solid"> <!--стойностите на всички track елементи, чиято дължина е по-малка от 15, както и техните дължини-->
					<xsl:for-each select=".//track"> 
						<xsl:if test="string-length() &lt; 15"> <!--string-length взима дължината, &lt; е за <= от 15 -->
							<tr>
								<td><xsl:value-of select="text()"/></td>
								<td><xsl:value-of select="string-length()"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<table border="1px solid"> <!--всички track елементи на четни позиции-->
					<xsl:for-each select=".//track"> 
						<xsl:if test="position() mod 2 = 0"> <!--position взима позицията и mod 2 провверява остатъка делено на 2, ако е нула е четна позиция-->
							<tr>
								<td><xsl:value-of select="text()"/></td>
								<td><xsl:value-of select="position()"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
					<tr height="20px"/>
					<xsl:for-each select=".//track"> <!--всички track елементи на нечетни позиции-->
						<xsl:if test="position() mod 2 != 0"> <!--position взима позицията и mod 2 провверява остатъка делено на 2, ако не е нула е нечетна позиция-->
							<tr>
								<td><xsl:value-of select="text()"/></td>
								<td><xsl:value-of select="position()"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>