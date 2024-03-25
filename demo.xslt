<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0"
                version="1.0">          <!-- Match the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
            </head>
            <body>                 <!-- Apply templates to text -->
                <xsl:apply-templates select="tei:TEI/tei:text"/>
            </body>
        </html>
    </xsl:template>          <!-- Match text element -->
    <xsl:template match="tei:text">
        <p>             <!-- Apply templates to body -->
            <xsl:apply-templates select="tei:body"/>
        </p>
    </xsl:template>          <!-- Match body element -->
    <xsl:template match="//tei:choice">
        <span>[
            <xsl:apply-templates select="tei:reg"/>
            <xsl:apply-templates select="tei:orig"/>              <!-- Apply templates to poem -->] 
        </span>
    </xsl:template>
    <xsl:template match="tei:reg">
        <span style="color:green">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>
    <xsl:template match="tei:orig">
        <span style="color:red">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>          <!-- Match poem element -->
    <xsl:template match="tei:lg[@type='poem']">
        <div>
            <xsl:apply-templates select="tei:l"/>
        </div>
    </xsl:template>          <!-- Match lines of the poem -->
    <xsl:template match="tei:l">
        <p>
            <xsl:value-of select="."/>
        </p>
    </xsl:template>
</xsl:stylesheet>
