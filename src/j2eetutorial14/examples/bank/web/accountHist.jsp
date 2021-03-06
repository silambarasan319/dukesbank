<%--
 * Copyright (c) 2003 Sun Microsystems, Inc.  All rights reserved.  U.S. 
 * Government Rights - Commercial software.  Government users are subject 
 * to the Sun Microsystems, Inc. standard license agreement and 
 * applicable provisions of the FAR and its supplements.  Use is subject 
 * to license terms.  
 * 
 * This distribution may include materials developed by third parties. 
 * Sun, Sun Microsystems, the Sun logo, Java and J2EE are trademarks 
 * or registered trademarks of Sun Microsystems, Inc. in the U.S. and 
 * other countries.  
 * 
 * Copyright (c) 2003 Sun Microsystems, Inc. Tous droits reserves.
 * 
 * Droits du gouvernement americain, utilisateurs gouvernementaux - logiciel
 * commercial. Les utilisateurs gouvernementaux sont soumis au contrat de 
 * licence standard de Sun Microsystems, Inc., ainsi qu'aux dispositions 
 * en vigueur de la FAR (Federal Acquisition Regulations) et des 
 * supplements a celles-ci.  Distribue par des licences qui en 
 * restreignent l'utilisation.
 * 
 * Cette distribution peut comprendre des composants developpes par des 
 * tierces parties. Sun, Sun Microsystems, le logo Sun, Java et J2EE 
 * sont des marques de fabrique ou des marques deposees de Sun 
 * Microsystems, Inc. aux Etats-Unis et dans d'autres pays.
 * '
--%>



<jsp:useBean id="customerBean" class="com.sun.ebank.web.CustomerBean" scope="session"/>
<jsp:setProperty name="customerBean" property="customer" value="${pageContext.request.userPrincipal.name}"/>
<c:set var="accounts" value="${customerBean.accounts}" />
<jsp:useBean id="accountHistoryBean" class="com.sun.ebank.web.AccountHistoryBean" scope="request"/>
<center>
<table border=0 cellpadding=2 cellspacing=5 width=500 summary="layout">
  <tr>
  <td valign=bottom>
    <fmt:message key="AccountName"/></td>
  <td valign=bottom>
    <fmt:message key="ViewSelect"/></td>
  <td valign=bottom>
    <fmt:message key="SortSelect"/></td>
  <td>&nbsp;</td>
  </tr>

  <c:url var="url" value="/accountHist" />
  <form name="accountHistory" method="post" action="${url}" >
  <tr>
  <td valign=top>
  <select name=accountId>
    <c:forEach items="${accounts}" var="ad">
      <c:if test="${param.accountId == ad.accountId}" >
       	<option value="${ad.accountId}" selected>${ad.description}</option>
      </c:if>
      <c:if test="${param.accountId != ad.accountId}">
          <option value="${ad.accountId}">${ad.description}</option>
      </c:if>
    </c:forEach>
  </select>
  </td>

  <td valign=top>
  <select name=activityView> 
    <option value=0<c:if test="${param.activityView == 0}"> selected</c:if>><fmt:message key="ViewOption0"/></option>  	   
    <option value=1<c:if test="${param.activityView == 1}"> selected</c:if>><fmt:message key="ViewOption1"/></option>	   
    <option value=2<c:if test="${param.activityView == 2}"> selected</c:if>><fmt:message key="ViewOption2"/></option>
  </select>
  </td>

  <td valign=top>
  <select name=sortOption>  
    <option value=0<c:if test="${param.sortOption == 0}"> selected</c:if>><fmt:message key="SortOption0"/></option>	   
    <option value=1<c:if test="${param.sortOption == 1}"> selected</c:if>><fmt:message key="SortOption1"/></option>	   
    <option value=2<c:if test="${param.sortOption == 2}"> selected</c:if>><fmt:message key="SortOption2"/></option>  
    <option value=3<c:if test="${param.sortOption == 3}"> selected</c:if>><fmt:message key="SortOption3"/></option>	   	
  </select>
  </td>
  
  
  <td valign="bottom" width=50> 
  <input type="submit" name="Submit" value="<fmt:message key='Update'/>" >   
  </td>
  <td>&nbsp;</td>
  </tr>

  <tr>
  <td valign=top>
  
  <table cellpadding=0 cellspacing=0 border=0 summary="layout">
  <tr>
  <td>
  <select width=4 name="year">
    <option value="2002"<c:if test="${param.year == 2002}"> selected</c:if>>2002
    <option value="2003"<c:if test="${param.year == 2003}"> selected</c:if>>2003
    <option value="2004"<c:if test="${param.year == 2004}"> selected</c:if>>2004
  </select>
  </td>
  <td><input type="radio" name="date" value="0" <c:if test="${param.date == 0}"> checked</c:if>><fmt:message key="DateSince"/>
  </td>
  <td>
  <select width=10 name="sinceMonth">
    <option value="1"<c:if test="${param.sinceMonth == 1}"> selected</c:if>><fmt:message key="Month1"/>
    <option value="2"<c:if test="${param.sinceMonth == 2}"> selected</c:if>><fmt:message key="Month2"/>
    <option value="3"<c:if test="${param.sinceMonth == 3}"> selected</c:if>><fmt:message key="Month3"/>
    <option value="4"<c:if test="${param.sinceMonth == 4}"> selected</c:if>><fmt:message key="Month4"/>
    <option value="5"<c:if test="${param.sinceMonth == 5}"> selected</c:if>><fmt:message key="Month5"/>
    <option value="6"<c:if test="${param.sinceMonth == 6}"> selected</c:if>><fmt:message key="Month6"/>
    <option value="7"<c:if test="${param.sinceMonth == 7}"> selected</c:if>><fmt:message key="Month7"/>
    <option value="8"<c:if test="${param.sinceMonth == 8}"> selected</c:if>><fmt:message key="Month8"/>
    <option value="9"<c:if test="${param.sinceMonth == 9}"> selected</c:if>><fmt:message key="Month9"/>
    <option value="10"<c:if test="${param.sinceMonth == 10}"> selected</c:if>><fmt:message key="Month10"/>
    <option value="11"<c:if test="${param.sinceMonth == 11}"> selected</c:if>><fmt:message key="Month11"/>
    <option value="12"<c:if test="${param.sinceMonth == 12}"> selected</c:if>><fmt:message key="Month12"/>
  </select>

  <select width=3 name="sinceDay">
    <option value="1"<c:if test="${param.sinceDay == 1}"> selected</c:if>>1
    <option value="2"<c:if test="${param.sinceDay == 2}"> selected</c:if>>2
    <option value="3"<c:if test="${param.sinceDay == 3}"> selected</c:if>>3
    <option value="4"<c:if test="${param.sinceDay == 4}"> selected</c:if>>4
    <option value="5"<c:if test="${param.sinceDay == 5}"> selected</c:if>>5
    <option value="6"<c:if test="${param.sinceDay == 6}"> selected</c:if>>6
    <option value="7"<c:if test="${param.sinceDay == 7}"> selected</c:if>>7
    <option value="8"<c:if test="${param.sinceDay == 8}"> selected</c:if>>8
    <option value="9"<c:if test="${param.sinceDay == 9}"> selected</c:if>>9
    <option value="10"<c:if test="${param.sinceDay == 10}"> selected</c:if>>10
    <option value="11"<c:if test="${param.sinceDay == 11}"> selected</c:if>>11
    <option value="12"<c:if test="${param.sinceDay == 12}"> selected</c:if>>12
    <option value="13"<c:if test="${param.sinceDay == 13}"> selected</c:if>>13
    <option value="14"<c:if test="${param.sinceDay == 14}"> selected</c:if>>14
    <option value="15"<c:if test="${param.sinceDay == 15}"> selected</c:if>>15
    <option value="16"<c:if test="${param.sinceDay == 16}"> selected</c:if>>16
    <option value="17"<c:if test="${param.sinceDay == 17}"> selected</c:if>>17
    <option value="18"<c:if test="${param.sinceDay == 18}"> selected</c:if>>18
    <option value="19"<c:if test="${param.sinceDay == 19}"> selected</c:if>>19
    <option value="20"<c:if test="${param.sinceDay == 20}"> selected</c:if>>20
    <option value="21"<c:if test="${param.sinceDay == 21}"> selected</c:if>>21
    <option value="22"<c:if test="${param.sinceDay == 22}"> selected</c:if>>22
    <option value="23"<c:if test="${param.sinceDay == 23}"> selected</c:if>>23
    <option value="24"<c:if test="${param.sinceDay == 24}"> selected</c:if>>24
    <option value="25"<c:if test="${param.sinceDay == 25}"> selected</c:if>>25
    <option value="26"<c:if test="${param.sinceDay == 26}"> selected</c:if>>26
    <option value="27"<c:if test="${param.sinceDay == 27}"> selected</c:if>>27
    <option value="28"<c:if test="${param.sinceDay == 28}"> selected</c:if>>28
    <option value="29"<c:if test="${param.sinceDay == 29}"> selected</c:if>>29
    <option value="30"<c:if test="${param.sinceDay == 30}"> selected</c:if>>30
    <option value="31"<c:if test="${param.sinceDay == 31}"> selected</c:if>>31
  </select>
  </td></tr>
  </table>
  </td>
  <td colspan=4  valign=top>
  <table cellpadding=0 cellspacing=3 border=0 summary="layout">
  <tr>
  <td><input type=radio name=date value=1 <c:if test="${param.date == 1}"> checked</c:if>><fmt:message key="DateRange"/></td>
  <td>
  <select width=10 name="beginMonth">
    <option value="1"<c:if test="${param.beginMonth == 1}"> selected</c:if>><fmt:message key="Month1"/>
    <option value="2"<c:if test="${param.beginMonth == 2}"> selected</c:if>><fmt:message key="Month2"/>
    <option value="3"<c:if test="${param.beginMonth == 3}"> selected</c:if>><fmt:message key="Month3"/>
    <option value="4"<c:if test="${param.beginMonth == 4}"> selected</c:if>><fmt:message key="Month4"/>
    <option value="5"<c:if test="${param.beginMonth == 5}"> selected</c:if>><fmt:message key="Month5"/>
    <option value="6"<c:if test="${param.beginMonth == 6}"> selected</c:if>><fmt:message key="Month6"/>
    <option value="7"<c:if test="${param.beginMonth == 7}"> selected</c:if>><fmt:message key="Month7"/>
    <option value="8"<c:if test="${param.beginMonth == 8}"> selected</c:if>><fmt:message key="Month8"/>
    <option value="9"<c:if test="${param.beginMonth == 9}"> selected</c:if>><fmt:message key="Month9"/>
    <option value="10"<c:if test="${param.beginMonth == 10}"> selected</c:if>><fmt:message key="Month10"/>
    <option value="11"<c:if test="${param.beginMonth == 11}"> selected</c:if>><fmt:message key="Month11"/>
    <option value="12"<c:if test="${param.beginMonth == 12}"> selected</c:if>><fmt:message key="Month12"/>
  </select>
  

  <select width=3 name="beginDay">
    <option value="1"<c:if test="${param.beginDay == 1}"> selected</c:if>>1
    <option value="2"<c:if test="${param.beginDay == 2}"> selected</c:if>>2
    <option value="3"<c:if test="${param.beginDay == 3}"> selected</c:if>>3
    <option value="4"<c:if test="${param.beginDay == 4}"> selected</c:if>>4
    <option value="5"<c:if test="${param.beginDay == 5}"> selected</c:if>>5
    <option value="6"<c:if test="${param.beginDay == 6}"> selected</c:if>>6
    <option value="7"<c:if test="${param.beginDay == 7}"> selected</c:if>>7
    <option value="8"<c:if test="${param.beginDay == 8}"> selected</c:if>>8
    <option value="9"<c:if test="${param.beginDay == 9}"> selected</c:if>>9
    <option value="10"<c:if test="${param.beginDay == 10}"> selected</c:if>>10
    <option value="11"<c:if test="${param.beginDay == 11}"> selected</c:if>>11
    <option value="12"<c:if test="${param.beginDay == 12}"> selected</c:if>>12
    <option value="13"<c:if test="${param.beginDay == 13}"> selected</c:if>>13
    <option value="14"<c:if test="${param.beginDay == 14}"> selected</c:if>>14
    <option value="15"<c:if test="${param.beginDay == 15}"> selected</c:if>>15
    <option value="16"<c:if test="${param.beginDay == 16}"> selected</c:if>>16
    <option value="17"<c:if test="${param.beginDay == 17}"> selected</c:if>>17
    <option value="18"<c:if test="${param.beginDay == 18}"> selected</c:if>>18
    <option value="19"<c:if test="${param.beginDay == 19}"> selected</c:if>>19
    <option value="20"<c:if test="${param.beginDay == 20}"> selected</c:if>>20
    <option value="21"<c:if test="${param.beginDay == 21}"> selected</c:if>>21
    <option value="22"<c:if test="${param.beginDay == 22}"> selected</c:if>>22
    <option value="23"<c:if test="${param.beginDay == 23}"> selected</c:if>>23
    <option value="24"<c:if test="${param.beginDay == 24}"> selected</c:if>>24
    <option value="25"<c:if test="${param.beginDay == 25}"> selected</c:if>>25
    <option value="26"<c:if test="${param.beginDay == 26}"> selected</c:if>>26
    <option value="27"<c:if test="${param.beginDay == 27}"> selected</c:if>>27
    <option value="28"<c:if test="${param.beginDay == 28}"> selected</c:if>>28
    <option value="29"<c:if test="${param.beginDay == 29}"> selected</c:if>>29
    <option value="30"<c:if test="${param.beginDay == 30}"> selected</c:if>>30
    <option value="31"<c:if test="${param.beginDay == 31}"> selected</c:if>>31
  </select>
  </td>
  <td><fmt:message key="DateThrough"/></td>
  <td>
  <select width=10 name="endMonth">
    <option value="1"<c:if test="${param.endMonth == 1}"> selected</c:if>><fmt:message key="Month1"/>
    <option value="2"<c:if test="${param.endMonth == 2}"> selected</c:if>><fmt:message key="Month2"/>
    <option value="3"<c:if test="${param.endMonth == 3}"> selected</c:if>><fmt:message key="Month3"/>
    <option value="4"<c:if test="${param.endMonth == 4}"> selected</c:if>><fmt:message key="Month4"/>
    <option value="5"<c:if test="${param.endMonth == 5}"> selected</c:if>><fmt:message key="Month5"/>
    <option value="6"<c:if test="${param.endMonth == 6}"> selected</c:if>><fmt:message key="Month6"/>
    <option value="7"<c:if test="${param.endMonth == 7}"> selected</c:if>><fmt:message key="Month7"/>
    <option value="8"<c:if test="${param.endMonth == 8}"> selected</c:if>><fmt:message key="Month8"/>
    <option value="9"<c:if test="${param.endMonth == 9}"> selected</c:if>><fmt:message key="Month9"/>
    <option value="10"<c:if test="${param.endMonth == 10}"> selected</c:if>><fmt:message key="Month10"/>
    <option value="11"<c:if test="${param.endMonth == 11}"> selected</c:if>><fmt:message key="Month11"/>
    <option value="12"<c:if test="${param.endMonth == 12}"> selected</c:if>><fmt:message key="Month12"/>
  </select>

  <select width=3 name="endDay">
    <option value="1"<c:if test="${param.endDay == 1}"> selected</c:if>>1
    <option value="2"<c:if test="${param.endDay == 2}"> selected</c:if>>2
    <option value="3"<c:if test="${param.endDay == 3}"> selected</c:if>>3
    <option value="4"<c:if test="${param.endDay == 4}"> selected</c:if>>4
    <option value="5"<c:if test="${param.endDay == 5}"> selected</c:if>>5
    <option value="6"<c:if test="${param.endDay == 6}"> selected</c:if>>6
    <option value="7"<c:if test="${param.endDay == 7}"> selected</c:if>>7
    <option value="8"<c:if test="${param.endDay == 8}"> selected</c:if>>8
    <option value="9"<c:if test="${param.endDay == 9}"> selected</c:if>>9
    <option value="10"<c:if test="${param.endDay == 10}"> selected</c:if>>10
    <option value="11"<c:if test="${param.endDay == 11}"> selected</c:if>>11
    <option value="12"<c:if test="${param.endDay == 12}"> selected</c:if>>12
    <option value="13"<c:if test="${param.endDay == 13}"> selected</c:if>>13
    <option value="14"<c:if test="${param.endDay == 14}"> selected</c:if>>14
    <option value="15"<c:if test="${param.endDay == 15}"> selected</c:if>>15
    <option value="16"<c:if test="${param.endDay == 16}"> selected</c:if>>16
    <option value="17"<c:if test="${param.endDay == 17}"> selected</c:if>>17
    <option value="18"<c:if test="${param.endDay == 18}"> selected</c:if>>18
    <option value="19"<c:if test="${param.endDay == 19}"> selected</c:if>>19
    <option value="20"<c:if test="${param.endDay == 20}"> selected</c:if>>20
    <option value="21"<c:if test="${param.endDay == 21}"> selected</c:if>>21
    <option value="22"<c:if test="${param.endDay == 22}"> selected</c:if>>22
    <option value="23"<c:if test="${param.endDay == 23}"> selected</c:if>>23
    <option value="24"<c:if test="${param.endDay == 24}"> selected</c:if>>24
    <option value="25"<c:if test="${param.endDay == 25}"> selected</c:if>>25
    <option value="26"<c:if test="${param.endDay == 26}"> selected</c:if>>26
    <option value="27"<c:if test="${param.endDay == 27}"> selected</c:if>>27
    <option value="28"<c:if test="${param.endDay == 28}"> selected</c:if>>28
    <option value="29"<c:if test="${param.endDay == 29}"> selected</c:if>>29
    <option value="30"<c:if test="${param.endDay == 30}"> selected</c:if>>30
    <option value="31"<c:if test="${param.endDay == 31}"> selected</c:if>>31
  </select>
  </td></tr>
  </table>
</td>
</tr>
</form>
</table>

<table border=1 cellpadding=2 cellspacing=0 width=500 summary="layout">
<tr>
  <td colspan=2 bgcolor="#CE9A00">
  <center><b>${accountHistoryBean.selectedAccount.description}</b></center></td>
</tr>

<tr>
  <td><center><b><fmt:message key="AccountDescription"/></b></center></td>
  <td><center><b><fmt:message key="AccountAmount"/></b></center></td>
</tr>

<tr>
  <td><fmt:message key="AccountBeginningBalance"/></td>
  <td align="right"><fmt:formatNumber value="${accountHistoryBean.beginningBalance}" type="currency" /> </td>
</tr>

<tr>
  <td><fmt:message key="AccountCredits"/></td>
  <td align="right"><fmt:formatNumber value="${accountHistoryBean.credits}" type="currency" /></td>
</tr>

<tr>
  <td><fmt:message key="AccountDebits"/></td>
  <td align="right">-<fmt:formatNumber value="${accountHistoryBean.debits}" type="currency" /></td>
</tr>
<tr>
  <td><fmt:message key="AccountEndingBalance"/></td>
  <td align="right"><fmt:formatNumber value="${accountHistoryBean.endingBalance}" type="currency"/></td>
</tr>
</table>

<p>
<table border=1 cellpadding=5 cellspacing=0 width=500 summary="layout">
  <tr>
    <td><center><b><fmt:message key="TxDate"/></b></center></td>
    <td><center><b><fmt:message key="TxDescription"/></center></b></td>
    <td><center><b><fmt:message key="TxAmount"/></b></center></td>
    <td><center><b><fmt:message key="TxRunningBalance"/></b></center></td>
  </tr>

  <c:forEach items="${accountHistoryBean.transactions}" var="tx">
  <tr>
    <td>${tx.timeStamp}</td>
    <td>${tx.description}</td>
    <td align="right"><fmt:formatNumber value="${tx.amount}" type="currency" /></td>
    <td align="right"><fmt:formatNumber value="${tx.balance}" type="currency" /></td>
  </tr>
  </c:forEach>

</table>
</center>


