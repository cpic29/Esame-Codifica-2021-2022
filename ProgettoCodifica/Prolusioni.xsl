<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:tei="http://www.tei-c.org/ns/1.0"
 xmlns="http://www.w3.org/1999/xhtml" >
<xsl:output method="html" encoding="UTF-8" indent="no"/>

<xsl:template match="/" >
<head>

    <link href="css/skeleton.css" rel="stylesheet" media="screen"/>
    <link href="css/normalize.css" rel="stylesheet" media="screen"/>
    <link href="css/costumize.css" rel="stylesheet" media="screen"/>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="javascript.js"></script>


    <title>Prolusioni 3, pagine 19 e 20</title>
</head>
<body>
    <div class="navbar">
        <nav class="container">
            <ul>
                <li><a href="#fonte">Fonte</a></li>
                <li><a href="#p19">Pagina 19</a></li>
                <li ><a href="#p20">Pagina 20</a></li>
                <li ><a href="#g">Glossario</a></li>
            </ul>
        </nav>
    </div>
<br/><br/>

<div class="container">
    <br/>
    <div class="container u-text-center">
        <h4>
            <xsl:value-of select="//tei:title[@xml:lang='fr']" />
            <br/>
            <xsl:value-of select="//tei:title[@xml:lang='fr' and @type='sub']" />
            <br/><br/>
            <em><xsl:value-of select="//tei:title[@xml:lang='it']" />
            <br/>
            <xsl:value-of select="//tei:title[@xml:lang='it' and @type='sub']" /></em>
            <br/><br/>
            <xsl:value-of select="//tei:author" />
        </h4>
    </div>

    <br/><br/><br/>

        <a id="fonte"></a>
        <h5>Informazioni Fonte</h5>
        <br/>
        <b>Autore: </b><xsl:value-of select="//tei:handNote"/>
        <br/>
        <b>Supporto: </b> <xsl:value-of select="//tei:material"/>
        <br/>
        <b>Condizioni: </b> <xsl:value-of select="//tei:condition"/>
        <br/>
        <b>Data e luogo: </b> <xsl:value-of select="//tei:origin/."/>
</div>
<br/><br/><br/><br/>


<div class="container">
    <div class="row">
        <div class="four columns u-text-center">
            <input type="button" id="del" value="Cancellature"></input>
        </div>
        <div class="four columns u-text-center">
            <input type="button" id="term" value="Termini"></input>
        </div>
        <div class="four columns u-text-center">
            <input type="button" id="for" value="Parole Straniere"></input>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="four columns u-text-center">
            <input type="button" id="abbr" value="Abbreviazioni"></input>
        </div>
        <div class="four columns u-text-center">
            <input type="button" id="note" value="Note"></input>
        </div>
        <div class="four columns u-text-center">
            <input type="button" id="glot" value="Glottonimi"></input>
        </div>
    </div>
</div>

<br/><br/><br/>

<div class="cent2" id="p1">
    <a id="p19"><h3 class="u-text-center">Pagina 19</h3></a>
    <br/><br/>
    <div class="row">
        <div class="four columns u-full-width">
            <img class="u-max-full-width" id="19" src="pag19.jpg"/>
            <img class="u-hide" id="19R" src="pag19_retro.png"/>
            <br/><br/>
            <input type="button" id="retro" value="Retro"></input>
        </div>
        <div class="four columns u-full-width">
            <strong>Trascrizione</strong>
            <br/><br/>
            <xsl:apply-templates select="//tei:div[@n='19' and @xml:lang='fr']"/>
        </div>
        <div class="four columns u-full-width">
            <strong>Traduzione</strong>
            <br/>
            <xsl:apply-templates select="//tei:div[@n='19' and @xml:lang='it']"/>
        </div>
    </div>
</div>
<br/>

<div class="cent2 u-hide" id="p2">
    <a id="p20"><h3 class="u-text-center">Pagina 20</h3></a>
    <br/><br/>
    <div class="row u-full-width">
        <div class="four columns u-full-width">
            <img class="u-max-full-width" src="pag20.jpg"/>
        </div>
         <div class="four columns u-full-width">
            <strong>Trascrizione</strong>
            <br/><br/>
            <xsl:apply-templates select="//tei:div[@n='20' and @xml:lang='fr']"/>
        </div>
        <div class="four columns u-full-width">
            <strong>Traduzione</strong>
            <br/>
        <xsl:apply-templates select="//tei:div[@n='20' and @xml:lang='it']"/>
        </div>
    </div>
</div>
<br/>

<div class="u-text-center">
    <input type="button" class="button-primary" id="change" value="Pagina 20"></input>
</div>
<br/><br/>

<div class="container">
<a id="g"><h3>Glossario</h3></a>
    <xsl:apply-templates select="//tei:list"/>
</div>
<br/><br/>

</body>

<footer>
    <div class="foot cent">
        <div class="row">
            <div class="six columns">
                <h5>Bibliografia</h5>
                <xsl:apply-templates select="//tei:listBibl"/>
            </div>        
            <div class="six columns">
                <h5>Informazioni Progetto</h5>
                <xsl:apply-templates select="//tei:editionStmt" />
            </div>
        </div>
    </div>
</footer>

</xsl:template>

<!-- Glossario -->

<xsl:template match="tei:list">
    <xsl:for-each select="tei:label">
        <xsl:sort select="tei:term"/>
        <xsl:element name="a">
            <xsl:attribute name="class">container</xsl:attribute>
            <xsl:attribute name="id"><xsl:value-of select="tei:term[@xml:lang='fr']/@xml:id"/></xsl:attribute>
            <b><xsl:value-of select="tei:term[@xml:lang='fr']"/></b>,
            <em><xsl:value-of select="tei:term[@xml:lang='it']"/></em>
        <br/>

        <xsl:variable name="x">
            <xsl:value-of select="tei:term[@xml:lang='it']/@ref"/>
        </xsl:variable>

        <xsl:for-each select="../tei:item/tei:gloss">
            <xsl:if test ="@target = $x">
                <p><xsl:value-of select="text()"/></p>
            </xsl:if>
        </xsl:for-each>
        
        </xsl:element>
    </xsl:for-each>
</xsl:template>

<!--Informazioni progetto -->
<xsl:template match="tei:editionStmt">
    <xsl:for-each select="tei:respStmt">
    <xsl:value-of select="."/>
    <br/>
    </xsl:for-each>
</xsl:template>

<!-- Inizio prolusione -->
<xsl:template match="tei:ab">
    <xsl:choose>
    <xsl:when test="@xml:id">
        <!-- Trascrizione -->
        <xsl:element name="span">
            <xsl:attribute name="class">per</xsl:attribute>
            <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:when>
    <xsl:otherwise>
        <!-- Traduzione -->
        <br/>
        <xsl:element name="span">
            <xsl:attribute name="class">trad curs2</xsl:attribute>
            <xsl:attribute name="id"><xsl:value-of select="@corresp"/></xsl:attribute>
            <b>Pericope <xsl:value-of select="@n"/></b>
            <br/>
            <xsl:apply-templates/>
            <br/>
        </xsl:element>
    </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<!-- Inizio riga -->
<xsl:template match="tei:lb">
    <br/>
    <b><xsl:value-of select="@n" /></b>
    <xsl:value-of select="text()"/>
</xsl:template>

<!-- Cancellature -->
<xsl:template match="tei:del">
    <xsl:element name="span">
        <xsl:attribute name="class">del u-hide strike</xsl:attribute>
        <xsl:value-of select="text()"/>
    </xsl:element>
</xsl:template>

<!-- Abbreviazioni -->
<xsl:template match="tei:abbr">
    <xsl:element name="span">
        <xsl:attribute name="class">abbr u-hide</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<!-- Scioglimento abbreviazioni -->
<xsl:template match="tei:expan">
    <xsl:element name="span">
        <xsl:attribute name="class">expan</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<!-- Parole straniere -->
<xsl:template match="tei:foreign">
    <xsl:element name="span">
        <xsl:attribute name="class">for</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<!-- Corsivo -->
<xsl:template match="tei:emph[@style='font-style:italic']">
    <em>
        <xsl:apply-templates/>
    </em>
</xsl:template>

<!-- Sottolineature -->
<xsl:template match="tei:emph[@style='underline']">
    <u>
        <xsl:apply-templates/>
    </u>
</xsl:template>

<!-- Nomi di luogo -->
<xsl:template match="tei:placeName">
    <xsl:element name ="span">
        <xsl:attribute name="class">place</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<!-- Glossario -->
<xsl:template match="tei:term">
    <xsl:element name="a">
        <xsl:attribute name="class">term curs</xsl:attribute>
        <xsl:attribute name="id"><xsl:value-of select="@ref"/></xsl:attribute>
        <xsl:attribute name="href"><xsl:value-of select="@ref"/></xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<!-- Glottonimi -->
<xsl:template match="tei:lang">
    <xsl:element name="span">
        <xsl:attribute name="class">glot</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<!-- Note -->
<xsl:template match="tei:add[@place='margin-left']">
    <xsl:element name="span">
        <xsl:attribute name="class">note u-hide</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<!-- Bibliografia -->
<xsl:template match="tei:listBibl">
    <xsl:for-each select="tei:bibl">
        <em><xsl:value-of select="tei:title/text()"/></em>,
        <xsl:value-of select="tei:author"/>
        <xsl:value-of select="concat(' (', tei:date, ') ')"/>
        <br/>
    </xsl:for-each>
</xsl:template>


</xsl:stylesheet>
