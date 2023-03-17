<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/catalog/cd">
		<html>
			<body> 
				<div><!--<xsl:element> и <xsl:attribute> вместо <xsl:copy-of>-->
					<xsl:element name="title">
						<xsl:value-of select="title"/><!--за всички елементи title-->
					</xsl:element>
					<xsl:element name="tracklist">
						<xsl:attribute name="num">
							<xsl:value-of select="tracklist/@num"/> <!--@ за всички атрибути num в tracklist-->
						</xsl:attribute>
						<xsl:for-each select="tracklist/track"> <!--for-each, за всеки в tracklist/track-->
							<xsl:element name="track">
								<xsl:attribute name="length"> 
									<xsl:value-of select="@length"/>
								</xsl:attribute>
								<xsl:value-of select="text()"/> 
							</xsl:element>
						</xsl:for-each>
					</xsl:element>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>