package cn.ecust.ssei.service.vessel;

import cn.ecust.ssei.base.DaoSupport;
import cn.ecust.ssei.domain.vessel.VesselMaintain;

public interface VesselMaintainService extends DaoSupport<VesselMaintain> {

	VesselMaintain findByMissionId(String mid);

}
