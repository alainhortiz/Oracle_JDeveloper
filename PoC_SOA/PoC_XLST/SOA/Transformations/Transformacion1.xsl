<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.example.org/datosEntrada" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/datosEntrada.xsd"/>
            <oracle-xsl-mapper:rootElement name="request" namespace="http://www.example.org/datosEntrada"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/datosEntrada.xsd"/>
            <oracle-xsl-mapper:rootElement name="response" namespace="http://www.example.org/datosEntrada"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [TUE MAR 12 11:53:18 EDT 2024].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:response>
         <ns0:organizationCode>
            <xsl:value-of select="/ns0:request/ns0:xi_warehouse"/>
         </ns0:organizationCode>
         <ns0:itemName>
            <xsl:value-of select="/ns0:request/ns0:xi_product_code"/>
         </ns0:itemName>
         <ns0:treeMode>
            <xsl:value-of select="2"/>
         </ns0:treeMode>
         <ns0:subinventoryCode>
            <xsl:value-of select="/ns0:request/ns0:xi_subinventory"/>
         </ns0:subinventoryCode>
         <ns0:locatorName>
            <xsl:value-of select="/ns0:request/ns0:external_id"/>
         </ns0:locatorName>
         <ns0:concatenacion>
            <xsl:value-of select="concat (/ns0:request/ns0:xi_warehouse, &quot;-&quot;, /ns0:request/ns0:xi_product_code, &quot;-&quot;, /ns0:request/ns0:xi_subinventory, &quot;-&quot;, /ns0:request/ns0:external_id )"/>
         </ns0:concatenacion>
      </ns0:response>
   </xsl:template>
</xsl:stylesheet>
