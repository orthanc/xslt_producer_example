<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:output method="xml" indent="yes" />

	<xsl:template match="/">
		<html>
			<body>
				{% for section in sections %}
				<h1>{{ section.name }}</h1>
				<table>
					{% for field in section.summary_fields %}
						<tr>
							<td><b>{{ field.name }}</b></td>
							<td>
								{% set format = field.format|default('string') %}
								{% if format == 'string' %}
									<xsl:value-of select="{{ field.path }}"/>
								{% elif format == 'date' %}
									TODO Some date formatting.... <xsl:value-of select="{{ field.path }}"/>
								{% else %}
									&lt;!-- unknown format {{ format }} --&gt;
									<xsl:value-of select="{{ field.path }}"/>
								{% endif %}
							</td>
						</tr>
					{% endfor %}
				</table>
				{% endfor %}
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
