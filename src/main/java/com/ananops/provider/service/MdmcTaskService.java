package com.ananops.provider.service;

import com.ananops.provider.model.domain.MdmcTask;
import com.ananops.provider.model.dto.MdmcApproveInfoDto;
import com.ananops.provider.model.dto.MdmcOrderDto;

/**
 * Created by zhs on 2019/12/5 13:58
 */
public interface MdmcTaskService {

    MdmcTask changeTaskStatus(Long taskId, Integer status);

    MdmcTask getTaskInfo(Long taskId);

    MdmcTask saveTask(MdmcTask task);

    String submitTask(MdmcOrderDto order) throws Exception;

    String leaderApprovePass(MdmcApproveInfoDto approveInfo) throws Exception;

//    void leaderApproveFail(String data);
//
//    void cancelTask(String data);
//
//    void serviceProviderReceiveTask(String data);
//
//    void serviceProviderRejectTask(String data);
//
//    void maintenanceWorkerReceiveTask(String data);
//
//    void maintenanceWorkerRejectTask(String data);
//
//    void maintenanceWorkerEnsureService(String data);
//
//    void maintenanceWorkerExchangeTask(String data);
//
//    void maintenanceWorkerApplyForDevices(String data);
//
//    void ensureService(String data);
//
//    void serviceProviderApproveBillPass(String data);
//
//    void serviceProviderApproveBillFail(String data);
//
//    void leaderApproveBillPass(String data);
//
//    void leaderApproveBillFail(String data);
//
//    void leaderEnsureAndPay(String data);
//
//    void leaderRejectPay(String data);
//
//    void evaluate(String data);
//
//    Long dispatchTask(Long taskId);

}
