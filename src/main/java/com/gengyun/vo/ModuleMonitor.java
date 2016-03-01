package com.gengyun.vo;

import java.io.Serializable;

/**
 * Created by root on 16-2-24.
 */
public class ModuleMonitor implements Serializable {
    private String syncName;
    private String syncStatus;
    private String syncSearchTime;
    private String signatureName;
    private String signatureStatus;
    private String signatureSearcheTime;

    public String getSyncName() {
        return syncName;
    }

    public void setSyncName(String syncName) {
        this.syncName = syncName;
    }

    public String getSyncStatus() {
        return syncStatus;
    }

    public void setSyncStatus(String syncStatus) {
        this.syncStatus = syncStatus;
    }

    public String getSyncSearchTime() {
        return syncSearchTime;
    }

    public void setSyncSearchTime(String syncSearchTime) {
        this.syncSearchTime = syncSearchTime;
    }

    public String getSignatureName() {
        return signatureName;
    }

    public void setSignatureName(String signatureName) {
        this.signatureName = signatureName;
    }

    public String getSignatureStatus() {
        return signatureStatus;
    }

    public void setSignatureStatus(String signatureStatus) {
        this.signatureStatus = signatureStatus;
    }

    public String getSignatureSearcheTime() {
        return signatureSearcheTime;
    }

    public void setSignatureSearcheTime(String signatureSearcheTime) {
        this.signatureSearcheTime = signatureSearcheTime;
    }
}
