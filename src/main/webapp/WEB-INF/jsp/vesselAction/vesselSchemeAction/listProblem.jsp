<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
    	<title>容器检验问题</title>
   		 <%@ include file="/WEB-INF/jsp/public/commons.jspf" %>
	</head>
  	<body>
  
    <div class="alert alert-info">当前位置<b class="tip"></b>容器管理<b class="tip"></b>问题记载</div>
    
    <span class="errorClass" id="msg">${msg}</span>
 	<s:form autocomplete="off" action="vesselSchemeDetail_listProblem">
 	<s:hidden name="basicId"></s:hidden>
 	
 	<table class="table table-striped table-bordered table-condensed">
        <thead>
            <tr>
                <td colspan="6" class="auto-style2">&nbsp;请填写筛选条件 </td>
            </tr>
        </thead>
        <tbody class="myfocus">
			 <tr>
                <td >检验性质</td>
                <td class="detail">
                    <s:select cssClass="inputClass required" name="v_M_Mode" list="{'定期', '验收','年度'}" headerKey="" headerValue="请选择检验性质"  />
                </td>
                <td class="td_detail" colspan="4">
					<input class="btn btn-inverse"  type="submit" value="提交" />
                    <input class="btn btn-inverse" type="reset" value="清空" />
				</td>
            </tr>
        </tbody>
    </table>	
      <table class="table table-striped table-bordered table-condensed center" id="list">
        	<tbody>
        		<s:iterator value="recordList">
				<tr>
					<td>任务号</td>
					<td>${v_M_Massion_ID}</td>
					<td>编号</td>
					<td>${v_M_ID}</td>
					<td>检验性质</td>
					<td>${v_M_Mode}</td>
					<td>检验日期</td>
					<td>${v_M_Date}</td>
				</tr>
				<tr>
					<td colspan="100">审查问题记载</td>
				</tr>
				<tr>
					<td style="height: 100px;" colspan="100">
						${v_M_Bas_Prob}				
					</td>
				</tr>
				</s:iterator>
				<tr>
					<td colspan="100">
						<a href="vesselInvestigation_list.action"><input class="btn btn-inverse" type="button" value="返回"/></a>
					</td>
				</tr>
				<tr><%@ include file="/WEB-INF/jsp/public/pager.jspf" %></tr>	
        	</tbody>
    	</table>
    	</s:form>
   <!--分页信息-->
	
</body>
</html>
