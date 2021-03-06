<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
    	<title>塑料压力容器定期检验记录附页</title>
   		 <%@ include file="/WEB-INF/jsp/public/commons.jspf" %>
   		 <script type="text/javascript" src="${pageContext.request.contextPath}/script/commons/commons.js"></script>   	 				
	</head>
	<body>
	<div class="alert alert-info">当前位置<b class="tip"></b>容器管理<b class="tip"></b>检验信息</div>
    <span class="errorClass" id="msg"><s:fielderror></s:fielderror></span> 
	<s:form  action="vesselPlasticTest_edit" >
		<s:hidden name="id"></s:hidden>
		<s:hidden name="vesselMaintainId"></s:hidden>
        <table class="table table-striped table-bordered table-condensed list" >
        <thead >
        <tr>
            <td colspan="10" id="center"><b>塑料压力容器定期检验记录附页</b><a id="startEdit" >修改</a></td>
        </tr>
        </thead>
        <tr>
         	<td>序号</td>
         	<td colspan="4"> 检    验    项    目</td>
         	<td colspan="2">检验结果</td>
         	<td colspan="3">备注</td>
        </tr>
        <tr>
         	<td>1</td>
         	<td colspan="4"> 铭牌和标志检验</td>
         	<td colspan="2">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Result1" />
			</td>
         	<td colspan="3">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Remark1" />
         	</td>
         </tr>
         <tr>
         	<td>2</td>
         	<td colspan="4">外表面检验 </td>
         	<td colspan="2">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Result2" />
			</td>
         	<td colspan="3">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Remark2" />
         	</td>
         </tr> 
         <tr>
         	<td>3</td>
         	<td colspan="4">内表面检验</td>
         	<td colspan="2">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Result3" />
			</td>
         	<td colspan="3">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Remark3" />
         	</td>
         </tr>
         <tr>
         	<td>4</td>
         	<td colspan="4">焊缝和连接部位检验</td>
         	<td colspan="2">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Result4" />
			</td>
         	<td colspan="3">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Remark4" />
         	</td>
         </tr>
         <tr>
         	<td>5</td>
         	<td colspan="4">附件检验</td>
         	<td colspan="2">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Result5" />
			</td>
         	<td colspan="3">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Remark5" />
         	</td>
         </tr>
         <tr>
         	<td>6</td>
         	<td colspan="4">支承或者支座检验</td>
         	<td colspan="2">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Result6" />
			</td>
         	<td colspan="3">
         		<s:textfield cssClass="span2 inputClass"   name="v_Pla_Remark6" />
         	</td>
         </tr>
 		 <tr>
         	<td>说明</td>
         	<td colspan="9" >
         	<s:textarea name="v_Pla_Explain" cssClass="span2 inputClass" style="height:180px"/>
         	</td>
         </tr>
  		 <tr>
            <td colspan="2" width="20%">分析</td>
            <td colspan="3" width="30%">
            <div class="input-append">
                 <s:textfield  cssClass="span2 datepicker inputClass" name="v_Pla_Date"/>
                 <span class="add-on"><i class="icon-calendar"></i></span>
            </div>
            </td>
            <td colspan="2" width="20%">校对</td>
            <td colspan="3" width="30%">
            <div class="input-append">
                 <s:textfield  cssClass="span2 datepicker inputClass" name="v_Pla_Check_Date"/>
                 <span class="add-on"><i class="icon-calendar"></i></span>
            </div>
            </td>
         </tr>                               
         <tr>
        	<td colspan="10">
                <input class="btn btn-inverse" id="submit" type="submit" value="提交"/>
                 <a href="javascript:history.go(-1);"><input class="btn btn-inverse" type="button" value="返回"/></a></td>
         </tr> 

    </table>
    </s:form>
</body>
</html>
  