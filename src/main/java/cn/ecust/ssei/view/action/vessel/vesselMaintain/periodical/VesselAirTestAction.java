package cn.ecust.ssei.view.action.vessel.vesselMaintain.periodical;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.ecust.ssei.base.VesselPeriodicalBaseAction;
import cn.ecust.ssei.domain.vessel.periodical.VesselAirTest;
import cn.ecust.ssei.domain.vessel.periodical.VesselPeriodicalMaintain;
import cn.ecust.ssei.util.Constant;
import cn.ecust.ssei.util.MyFileUtils;

@Controller
@Scope("prototype")
public class VesselAirTestAction  extends VesselPeriodicalBaseAction<VesselAirTest>{
	
	public String delete() throws Exception{
		long id = preDelete();
		vesselAirTestService.delete(id);
		return "toVesselPeriodicalMaintainList";
	}
	
	public String edit() throws Exception{
		vesselAirTestService.update(model);
		return "toVesselPeriodicalMaintainList";
	}
	
	public String generateFile() throws Exception{
		VesselPeriodicalMaintain vesselPeriodicalMaintain = vesselPeriodicalMaintainService.getById(periodicalId);
		VesselAirTest vesselAirTest = vesselPeriodicalMaintain.getVesselAirTest();
		vesselAirTestService.generateFile(vesselAirTest);	
		return "toVesselPeriodicalDocumentMenuList";
	}
	@Override
	public String makeSurePath() {
		VesselPeriodicalMaintain vesselPeriodicalMaintain = vesselPeriodicalMaintainService.getById(periodicalId);
		VesselAirTest vesselAirTest = vesselPeriodicalMaintain.getVesselAirTest();
		String fileRootpath = MyFileUtils.getFilePath(vesselAirTest.getId(), "vesselAirTest", Constant.VESSEL_DOCUMENT_UPLOAD);
		String fileName = vesselAirTest.getId()+"_vesselAirTest.doc";
		String path = fileRootpath+"/"+fileName;//最终文档生成的位置
		return path;
	}
	
	

}
