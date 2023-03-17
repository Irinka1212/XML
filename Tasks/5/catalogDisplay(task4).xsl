<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<body> 
				<div>
					<xsl:variable name="title">Content of element</xsl:variable> <!--дефинирам константа, като използвам <xsl:variable>-->
					<ol>
						<xsl:for-each select="//track">
							<xsl:sort select="."/>
							<li>
								<xsl:value-of select="$title"/> <!--извеждам стойността ѝ, като я селектирам по title-->
								<ul>
									<li><xsl:value-of select="text()"/></li>
								</ul>
							</li>
						</xsl:for-each>
					</ol>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>