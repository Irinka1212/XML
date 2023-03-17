<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<body>
				<div>
					<h3>Subtask 1</h3>
					<ol>
						<xsl:for-each select=".//track">
							<xsl:sort select="." order="ascending"/> <!--чрез <xsl:sort> сортира стойностите на track елементите в нарастващ ред-->
							<li><xsl:value-of select="text()"/></li>
						</xsl:for-each>
					</ol>
				</div>
				<div>
					<h3>Subtask 2</h3>
					<ol>
						<xsl:for-each select=".//track">
							<xsl:sort select="." order="descending"/> <!--чрез <xsl:sort> сортира стойностите на track елементите в намаляващ ред-->
							<li><xsl:value-of select="text()"/></li>
						</xsl:for-each>
					</ol>
				</div>
				<div>
					<h3>Subtask 3</h3>
						<xsl:for-each select=".//track">
							<xsl:sort select="." order="descending"/> <!--чрез <xsl:sort> сортира стойностите на track елементите в намаляващ ред-->
							<xsl:value-of select="text()"/>
							<xsl:text>_</xsl:text>
							<xsl:value-of select="position()"/>
							<xsl:if test="position() != last()"> <!--чрез if проверявам дали позицията е различна от последната, пиша , , ако не е последна-->
								<xsl:text>,</xsl:text>
							</xsl:if>
						</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>