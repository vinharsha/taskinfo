<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Task Information</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th rowspan ="2">Tname</th>
      <th rowspan ="2" >Description</th>
      <th rowspan ="2">Starting</th>
      <th rowspan ="2">Ending</th>
      <th rowspan ="2">Priority</th>
      <th rowspan ="2">Status</th>
      <th colspan ="2">USER</th>
    </tr>
    <tr>
       <th>Name</th>
       <th>Email</th>
       <th>Phone</th>
    </tr>
    <xsl:for-each select="taskinfo/task">
    <tr>
      <td><xsl:value-of select="tname"/></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="sdate"/></td>
      <td><xsl:value-of select="enddate"/></td>
      <td><xsl:value-of select="priority"/></td>
      <td><xsl:value-of select="status"/></td>
     <xsl:for-each select="user">  
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="email"/></td>
          <td><xsl:value-of select="phone"/></td>
     </xsl:for-each>  
    </tr>
     </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

