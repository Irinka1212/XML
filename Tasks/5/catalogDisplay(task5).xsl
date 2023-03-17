<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
	<xsl:param name="title">Content of element</xsl:param> <!--дефинирам параметър, като използвам <xsl:param> и извеждам стойността му-->
		<html>
			<body> 
				<div>
					<ol>
						<xsl:for-each select="//track">
							<xsl:sort select="."/>
							<li>
								<xsl:value-of select="$title"/>
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