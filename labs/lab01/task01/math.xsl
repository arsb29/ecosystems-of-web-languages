<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Math</title>
                <script type="text/javascript" id="MathJax-script" src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
            </head>
            <body>
                <math display="block">
                    <xsl:apply-templates/>
                </math>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="строка">
        <mrow>
            <xsl:apply-templates select="*"/>
        </mrow>
    </xsl:template>
    <xsl:template match="операнд">
        <mi><xsl:value-of select="."/></mi>
    </xsl:template>
    <xsl:template match="оператор">
        <mo><xsl:value-of select="."/></mo>
    </xsl:template>
    <xsl:template match="корень">
        <msqrt>
            <xsl:apply-templates select="*"/>
        </msqrt>
    </xsl:template>
    <xsl:template match="дробь">
        <mfrac>
            <xsl:apply-templates select="*"/>
        </mfrac>
    </xsl:template>
    <xsl:template match="низверх">
        <munderover>
            <xsl:apply-templates select="*"/>
        </munderover>
    </xsl:template>
    <xsl:template match="число">
        <mn>
            <xsl:value-of select="."/>
        </mn>
    </xsl:template>
    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates select="*"/>
        </msup>
    </xsl:template>
    <xsl:template match="низ">
        <msub>
            <xsl:apply-templates select="*"/>
        </msub>
    </xsl:template>
</xsl:stylesheet>