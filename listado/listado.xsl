<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/receptes">
    <xsl:for-each select="recepta">
      <xsl:result-document href="./recepta_{position()}.html" method="html">
        <html lang="es">
          <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title><xsl:value-of select="nom"/></title>
            <link rel="stylesheet" href="../css/recetas.css"/>
          </head>
          <body>
            <header>
              <img class="fotoHeader" src="../imagenes/Logo-Delicias.png"/>
              <nav>
                <ul>
                  <li><a href="../index.html">INICIO</a></li>
                  <li><a href="../blog/blog.html">SOBRE MÍ</a></li>
                  <li><a href="../listado/listado.html">RECETAS</a></li>
                  <li><a href="../contacto/contacto.html">CONTACTO</a></li>
                  <li><a href="#">OTRAS COSAS</a></li>
                </ul>
              </nav>
            </header>
            <div>
              <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="imatge"/>
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="nom"/>
                </xsl:attribute>
              </img>
              <h1><xsl:value-of select="nom"/></h1>
              <h2>Por <xsl:value-of select="autor/nom"/></h2>
              <p><strong>DNI:</strong> <xsl:value-of select="autor/dni"/></p>
            </div>
            <h3>Ingredientes:</h3>
            <ul>
              <xsl:for-each select="ingredients/ingredient">
                <li>
                  <xsl:value-of select="nom"/>: 
                  <xsl:value-of select="quantitat/valor"/> 
                  <xsl:value-of select="quantitat/mesura"/>
                </li>
              </xsl:for-each>
            </ul>
            <h3>Preparación:</h3>
            <ol>
              <xsl:for-each select="passos/pas">
                <li><xsl:value-of select="."/></li>
              </xsl:for-each>
            </ol>
            <footer>
              <ul>
                <li><a href="https://es-es.facebook.com/itecbcn/">FACEBOOK</a></li>
                <li><a href="https://twitter.com/itecbcn">TWITTER</a></li>
                <li><a href="https://www.instagram.com/">INSTAGRAM</a></li>
                <li><a href="https://pinterest.com">PINTEREST</a></li>
                <li><a href="https://www.gmail.com">EMAIL</a></li>
                <li><a href="https://rss.com/es/">RSS</a></li>
              </ul>
            </footer>
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>



