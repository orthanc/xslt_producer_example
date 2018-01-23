<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:output method="xml" indent="yes" />

	<xsl:template match="/">
		<html>
			<body>
				<h1>Section One</h1>
				<table>
						<tr>
							<td><b>Stuff</b></td>
							<td>
									TODO Some date formatting.... <xsl:value-of select="/content/bob/stuff"/>
							</td>
						</tr>
						<tr>
							<td><b>More Stuff</b></td>
							<td>
									<xsl:value-of select="/content/bob/more_stuff"/>
							</td>
						</tr>
				</table>
				<h1>Another Section</h1>
				<table>
						<tr>
							<td><b>yet more stuff</b></td>
							<td>
									<xsl:value-of select="/content/other_stuff"/>
							</td>
						</tr>
						<tr>
							<td><b>yet more stuff but this time with a bad format</b></td>
							<td>
									&lt;!-- unknown format bad_format --&gt;
									<xsl:value-of select="/content/other_stuff"/>
							</td>
						</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>