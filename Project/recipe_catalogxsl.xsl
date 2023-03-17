<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Български рецепти</title>

				<link rel="stylesheet" type="text/css" href="style.css" />

			</head>
			<script>
                function showRecipes() {
					document.getElementById('recipeContainer').style.display = 'inline';
					document.getElementById('regionContainer').style.display = 'none';
				};

				function showRegions() {
					document.getElementById('recipeContainer').style.display = 'none';
					document.getElementById('regionContainer').style.display = 'inline';
				}
			</script>
			<body>
				<h1> Български рецепти</h1>
                <button class="button" onclick="showRecipes();">Рецепти</button>
                <button class="button" onclick="showRegions()">Региони</button>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>

    <xsl:template match="/recipesBG /recipeList">
		<div id="recipeContainer">
			<xsl:for-each select="/recipesBG /recipeList/recipe/recipeInfo[id &lt; 462]">
				<xsl:sort
					select = "numberofIngredients"
					data-type="number"
					order = "ascending">
				</xsl:sort>

				<div  class="recipe">
					<img src="images/{id}.jpg"/>
					<div id="information">
						<h3 id="recipeName"><xsl:value-of select="name"/></h3>
						<div id="recipeInfo">
							<p class="label" >Вид ястие:</p>
							<p><xsl:value-of select="cuisine"/></p>
							<p class="label" >Регион:</p>
							<p><xsl:value-of select="region"/></p>
							<p class="label" >Автор:</p>
							<p><xsl:value-of select="author"/></p>
							<p class="label">Съставки: </p>
                                    <xsl:for-each select="../ingredientList/ingredient">
                                        <p class="ingredient"><xsl:value-of select="."/></p>
                                    </xsl:for-each>
						</div>
						<div id="steps">
                                <p class="label">Начин на приготвяне: </p>
                                <p><xsl:value-of select="method"/></p>
						</div>
						<div class="dropdown">
							<xsl:if test="presentation">
								<p class="label" >Как се сервира:</p>
								<p><xsl:value-of select="presentation"/></p>
							</xsl:if>
                            <p class="label">Напитки, с които върви: </p>
                            <div class="dropdown-content">
                                <xsl:for-each select="../drinksList/drink">
                                    <p class="drink"><xsl:value-of select="."/></p>
                                </xsl:for-each>
                            </div>
                        </div>
					</div>
				</div>
			</xsl:for-each>
		</div>
	</xsl:template>

	<xsl:template match="/recipesBG /regionList">
		<div id="regionContainer" style="display:none;">
			<xsl:for-each select="/recipesBG /regionList/regionInfo">
				<xsl:variable name="rName"><xsl:value-of select="regionName"/></xsl:variable>
				<xsl:variable name="rId"><xsl:value-of select="regionRef/@regIdRef"/></xsl:variable>
				<div style="color:white;" class="region">
					<p id="regionLabel"><xsl:value-of select="regionName"/></p>
					<xsl:for-each select="/recipesBG /recipeList/recipe/recipeInfo[regionId = $rId]">
						<div style="color:white;" class="specialRegion">
							<img src="images/{id}.jpg"/>
							<div class="information2">
								<p id="recipeName1"><xsl:value-of select="name"/></p>
								<div id="regionInfo">
									<p class="label" >Вид ястие:</p>
									<p><xsl:value-of select="cuisine"/></p>
									<p class="label" >Регион:</p>
									<p><xsl:value-of select="region"/></p>
									<p class="label" >Автор:</p>
									<p><xsl:value-of select="author"/></p>
								</div>
								<div class="dropdown">
								<p class="label">Напитки, с които върви: </p>
								<div class="dropdown-content">
									<xsl:for-each select="../drinksList/drink">
										<p class="drink"><xsl:value-of select="."/></p>
									</xsl:for-each>
								</div>
							</div>
							</div>
						</div>
					</xsl:for-each>
				</div>
			</xsl:for-each>
		</div>
	</xsl:template>

</xsl:stylesheet>