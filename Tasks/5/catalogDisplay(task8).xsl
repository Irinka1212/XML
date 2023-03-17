<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/catalog/cd">
		<html>
			<body> 
				<div> 
					<xsl:copy-of select="title"/> <!-- чрез <xsl:copy-of> връщам в XML формат стойността на под-елемента title на cd-->
					<xsl:copy-of select="tracklist"/> <!--чрез <xsl:copy-of> връщам в XML формат pод-елемента tracklist заедно с цялата негова структура на cd-->
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>