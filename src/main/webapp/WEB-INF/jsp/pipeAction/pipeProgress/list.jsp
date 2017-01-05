<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
    	<title>管道检验进度</title>
   		 <%@ include file="/WEB-INF/jsp/public/commons.jspf" %>
	</head>
  	<body>
  
    <div class="alert alert-info">当前位置<b class="tip"></b>管道管理<b class="tip"></b>检验进度</div>
    
    <span class="errorClass" id="msg">${msg}</span>
 	
	<s:form autocomplete="off" action="pipeProgress_list">
		<table class="table table-striped table-bordered table-condensed">
        <thead>
            <tr>
                <td colspan="6" class="auto-style2">&nbsp;请填写筛选条件 </td>
            </tr>
        </thead>
        <tbody class="myfocus">
			  <tr>
			  	<td >检验编号</td>
                <td class="detail">
                    <s:textfield name="m_ID" id="m_ID" cssClass="inputClass" type="text"/>
                </td>
                <td >管道编号</td>
                <td class="detail">
                    <s:textfield name="pipeBasic.p_ID" id="p_ID" cssClass="inputClass" type="text"/>
                </td>
                <td>管道名称</td>
                <td class="td_detail">
                    <s:textfield name="pipeBasic.p_Name" id="p_Name" cssClass="inputClass" type="text"/>
                </td>
            </tr>
            <tr>
            <td>所属使用公司</td>
                <td class="td_detail">
                    <s:select name="companyID" 
                    list="#companyList" listKey="id" listValue="name"
                    headerKey="" headerValue="==请选择单位=="/>
				</td>
                <td>管道系统</td>
                <td class="td_detail">
                    <s:textfield name="pipeBasic.p_Sys" id="p_Sys" cssClass="inputClass" type="text"/>
                </td>
                <td>检验性质</td>
                <td class="td_detail">
                     <s:select name="m_Prop" list="{'全面', '在线','安装'}" headerKey="" headerValue="检验性质"/>
                </td>
            </tr>
             <tr> <td colspan="6" align="right">
                    <input class="btn btn-inverse"  type="submit" value="提交" />
                    <input class="btn btn-inverse" type="reset" value="清空" />
                </td>
            </tr>
        </tbody>
    </table>	
	
      <table class="table table-striped table-bordered table-condensed center" id="list">
        	<thead>
            	<tr class="tr_detail">
                	<td width="15%">管道编号</td>
                	<td width="15%">管道名称</td>
                	<td width="15%">所属使用公司</td>
                	<td width="10%">管道级别</td>
                	<td width="10%">管道系统</td>
                	<td width="10%">绝热层材料 </td>
                	<td width="10%">防腐层材料</td>
                	<td width="15%">操作 </td>
            	</tr>
        	</thead>
        	<tbody>
        		<s:iterator value="recordList">
				<tr>
					<td>${p_ID}</td>
					<td>${p_Name}</td>
					<td>${company.name}</td>
					<td>${p_Gra}</td>
					<td>${p_Sys}</td>
					<td>${p_Ins_Ma}</td>
					<td>${p_Pro_Ma}</td>
					<td>
						<s:a  action="pipeBasic_editUI?id=%{id}">
						<div class="btn btn-mini btn-primary reverse">
						查看
						</div>
						</s:a>
						<s:a  action="pipeBasic_toFileList?id=%{id}">
						<div class="btn btn-mini btn-primary reverse">
						附件
						</div>
						</s:a>						
 						<s:a action="pipeBasic_delete?id=%{id}" onclick="return confirm('您确定要删除吗？')" >
 						<div class="info2 btn btn-mini btn-danger">
						 删除
						</div>
						</s:a>
						
						<s:if test="%{p_submited==1}">
 							<s:a action="pipeBasic_submit?id=%{id}" onclick="return confirm('您确定要提交吗？')" >
 							<div class="info2 btn btn-mini btn-danger">
								提交
							</div>
 							</s:a> 
						</s:if>
						<s:else>
							<div class="btn btn-mini btn-primary reverse">
							已提交
							</div>
						</s:else>							
					</td>
				</tr>
				</s:iterator>
				<tr>
					<td colspan="100">
						<s:a  action="pipeBasic_addUI">
						<div class="btn btn-mini btn-primary reverse">
						添加管道
						</div>
						</s:a>
						<s:a  action="pipeBasic_excel">
						<div class="btn btn-mini btn-primary reverse">
						导出excel表格
						</div>
						</s:a>
					</td>
					
				</tr>
				<tr><%@ include file="/WEB-INF/jsp/public/pager.jspf" %></tr>	
        	</tbody>
    	</table>
   </s:form>
   <!--分页信息-->
	
</body>
</html>
