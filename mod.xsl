<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-ticket-nav">
        <!-- className 'J_OXMod' required  -->
        <xsl:param name="title">特价机票</xsl:param>
        <xsl:param name="more_title">3个月内低价</xsl:param>
        <xsl:param name="more_link"></xsl:param>
        <div class="J_OXMod oxmod-ctrip-ticket-nav" ox-mod="ctrip-ticket-nav">
            <h3>
                <a href="{$more_link}" class="bt-more"><xsl:value-of select="$more_title"/> &gt;</a>
                <xsl:value-of select="$title"/>
            </h3>
            <div class="tickets">
            	<xsl:for-each select="data/airline-ticket/i">
            		<dl class="ticket">
            			<dt>
            				<span class="tag"><xsl:value-of select="tags/i[1]"/></span>
            				<b><xsl:value-of select="from"/></b>
            				<i class="arrow">&#8640;</i>
            				<b><xsl:value-of select="to"/></b>
            				<br/>
            				<span class="time">
            					<xsl:value-of select="time"/>
            				</span>
            			</dt>
            			<dd class="sep"></dd>
            			<dd>
            				<span class="price"><xsl:value-of select="price"/></span>
            				<span class="discount"><xsl:value-of select="discount"/></span>
            			</dd>
            		</dl>
            	</xsl:for-each>
            </div>
            <div class="nav">
            	<xsl:for-each select="data/table-menu/i">
            		<a href="{href}" class="nav-item">
            			<img src="{icon}" class="icon"/>
            			<span class="info">
            				<b><xsl:value-of select="title"/></b>
            				<br/>
            				<em class="subtitle"><xsl:value-of select="tag"/></em>
            			</span>
            		</a>
            	</xsl:for-each>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
