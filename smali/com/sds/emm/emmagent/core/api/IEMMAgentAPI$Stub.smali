.class public abstract Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;
.super Landroid/os/Binder;
.source "IEMMAgentAPI.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_checkAllPermissionsGranted:I = 0x3f

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x29

.field static final TRANSACTION_createKnoxContainer:I = 0x20

.field static final TRANSACTION_createKnoxContainerWithData:I = 0x2f

.field static final TRANSACTION_createWorkProfile:I = 0x46

.field static final TRANSACTION_delayScreenLockTimeout:I = 0x5d

.field static final TRANSACTION_enroll:I = 0x2

.field static final TRANSACTION_getActionResult:I = 0x43

.field static final TRANSACTION_getAppEntity:I = 0x26

.field static final TRANSACTION_getAppProfile:I = 0x5a

.field static final TRANSACTION_getAppSeed:I = 0x54

.field static final TRANSACTION_getCertificateChain:I = 0x2b

.field static final TRANSACTION_getClientPreferenceValue:I = 0x64

.field static final TRANSACTION_getClientPrivateKey:I = 0x6d

.field static final TRANSACTION_getClientProfile:I = 0x59

.field static final TRANSACTION_getConfiguration:I = 0xa

.field static final TRANSACTION_getConfigurationMap:I = 0x4c

.field static final TRANSACTION_getConfigurationPreconditionState:I = 0x61

.field static final TRANSACTION_getContentList:I = 0x52

.field static final TRANSACTION_getCurrentContext:I = 0x34

.field static final TRANSACTION_getDeviceAlias:I = 0x6c

.field static final TRANSACTION_getDeviceCertificate:I = 0x6

.field static final TRANSACTION_getDeviceId:I = 0x27

.field static final TRANSACTION_getDeviceIdByTenantId:I = 0x3c

.field static final TRANSACTION_getEmmAppLicense:I = 0x58

.field static final TRANSACTION_getEmmLicense:I = 0x57

.field static final TRANSACTION_getFamilySeed:I = 0x55

.field static final TRANSACTION_getIMEI:I = 0x42

.field static final TRANSACTION_getIniFileData:I = 0x5f

.field static final TRANSACTION_getInventory:I = 0xd

.field static final TRANSACTION_getInventoryMap:I = 0x4b

.field static final TRANSACTION_getKioskUserInfo:I = 0x6e

.field static final TRANSACTION_getKnoxActionResult:I = 0x44

.field static final TRANSACTION_getKnoxConfiguration:I = 0xc

.field static final TRANSACTION_getKnoxConfigurationMap:I = 0x4d

.field static final TRANSACTION_getKnoxConfigurationPreconditionState:I = 0x62

.field static final TRANSACTION_getKnoxContainer:I = 0x8

.field static final TRANSACTION_getKnoxPolicy:I = 0xb

.field static final TRANSACTION_getKnoxPolicyMap:I = 0x4a

.field static final TRANSACTION_getLicenseInfo:I = 0x16

.field static final TRANSACTION_getLine1Number:I = 0x41

.field static final TRANSACTION_getPolicy:I = 0x7

.field static final TRANSACTION_getPolicyMap:I = 0x49

.field static final TRANSACTION_getPolicyViolationHistory:I = 0x35

.field static final TRANSACTION_getProfile:I = 0x37

.field static final TRANSACTION_getScreenLockStatus:I = 0x5b

.field static final TRANSACTION_getServerInfo:I = 0x5e

.field static final TRANSACTION_getServerPublicKey:I = 0x3d

.field static final TRANSACTION_getTrigger:I = 0x9

.field static final TRANSACTION_getUserInfo:I = 0x56

.field static final TRANSACTION_getVersionName:I = 0x60

.field static final TRANSACTION_getWorkProfile:I = 0x45

.field static final TRANSACTION_getWorkProfilePolicy:I = 0x47

.field static final TRANSACTION_getWorkProfilePolicyMap:I = 0x4e

.field static final TRANSACTION_hasPrivateKeyAlias:I = 0x2a

.field static final TRANSACTION_installApp:I = 0xe

.field static final TRANSACTION_installConfiguration:I = 0x18

.field static final TRANSACTION_installConfigurationWithPassword:I = 0x30

.field static final TRANSACTION_installKnoxApp:I = 0xf

.field static final TRANSACTION_installKnoxConfiguration:I = 0x1c

.field static final TRANSACTION_installKnoxConfigurationWithPassword:I = 0x31

.field static final TRANSACTION_isConfigurationPreconditionSufficient:I = 0x1b

.field static final TRANSACTION_isEnrolled:I = 0x5

.field static final TRANSACTION_isEnrolledContext:I = 0x33

.field static final TRANSACTION_isKnoxConfigurationPreconditionSufficient:I = 0x1f

.field static final TRANSACTION_isRequestUnenrollSupported:I = 0x2c

.field static final TRANSACTION_knoxContainerInit:I = 0x63

.field static final TRANSACTION_notifyAppFinished:I = 0x25

.field static final TRANSACTION_notifyAppStarted:I = 0x24

.field static final TRANSACTION_refreshFcmToken:I = 0x6b

.field static final TRANSACTION_removeConfiguration:I = 0x19

.field static final TRANSACTION_removeKnoxConfiguration:I = 0x1d

.field static final TRANSACTION_removeKnoxContainer:I = 0x21

.field static final TRANSACTION_removeWorkProfile:I = 0x48

.field static final TRANSACTION_requestAllPermissions:I = 0x40

.field static final TRANSACTION_requestGetDeviceCommand:I = 0x50

.field static final TRANSACTION_requestIssueDeviceCertificate:I = 0x2e

.field static final TRANSACTION_requestLogin:I = 0x66

.field static final TRANSACTION_requestResetKnoxContainerPassword:I = 0x68

.field static final TRANSACTION_requestSendLogToServer:I = 0x38

.field static final TRANSACTION_requestServiceProvision:I = 0x65

.field static final TRANSACTION_requestUnenroll:I = 0x2d

.field static final TRANSACTION_requestUpdateContents:I = 0x51

.field static final TRANSACTION_resetProvisionInfo:I = 0x3e

.field static final TRANSACTION_setEncryptStorage:I = 0x23

.field static final TRANSACTION_setKioskSettingRestriction:I = 0x67

.field static final TRANSACTION_setKnoxScreenLockPasswordCompleted:I = 0x69

.field static final TRANSACTION_setLibraryVersion:I = 0x17

.field static final TRANSACTION_setLoginCompleted:I = 0x36

.field static final TRANSACTION_setMandatoryApps:I = 0x53

.field static final TRANSACTION_setNotificationOption:I = 0x4f

.field static final TRANSACTION_setPassword:I = 0x22

.field static final TRANSACTION_setPreprovisionInfo:I = 0x3

.field static final TRANSACTION_setProvisionInfo:I = 0x3b

.field static final TRANSACTION_setScreenLockPasswordCompleted:I = 0x3a

.field static final TRANSACTION_setUserInfo:I = 0x4

.field static final TRANSACTION_setupConfigurationPrecondition:I = 0x1a

.field static final TRANSACTION_setupKnoxConfigurationPrecondition:I = 0x1e

.field static final TRANSACTION_showLog:I = 0x39

.field static final TRANSACTION_startApp:I = 0x11

.field static final TRANSACTION_startKioskSettingActivity:I = 0x6a

.field static final TRANSACTION_startKnoxApp:I = 0x13

.field static final TRANSACTION_stopApp:I = 0x12

.field static final TRANSACTION_stopKnoxApp:I = 0x14

.field static final TRANSACTION_switchContext:I = 0x32

.field static final TRANSACTION_uninstallApp:I = 0x10

.field static final TRANSACTION_updateLicense:I = 0x15

.field static final TRANSACTION_updateProfile:I = 0x1

.field static final TRANSACTION_verifyScreenLockPassword:I = 0x5c

.field static final TRANSACTION_writeFileToContainer:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 736
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sds.emm.emmagent.core.api.IEMMAgentAPI"

    .line 737
    invoke-virtual {p0, p0, v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sds.emm.emmagent.core.api.IEMMAgentAPI"

    .line 748
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 749
    instance-of v1, v0, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    if-eqz v1, :cond_1

    .line 750
    check-cast v0, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    return-object v0

    .line 752
    :cond_1
    new-instance v0, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sds.emm.emmagent.core.api.IEMMAgentAPI"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 762
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1818
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1811
    :pswitch_0
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getKioskUserInfo()Ljava/lang/String;

    move-result-object p1

    .line 1812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1804
    :pswitch_1
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getClientPrivateKey()Ljava/lang/String;

    move-result-object p1

    .line 1805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1797
    :pswitch_2
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getDeviceAlias()Ljava/lang/String;

    move-result-object p1

    .line 1798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1790
    :pswitch_3
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->refreshFcmToken()Ljava/lang/String;

    move-result-object p1

    .line 1791
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1782
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1783
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->startKioskSettingActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1773
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 1774
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setKnoxScreenLockPasswordCompleted(Z)Ljava/lang/String;

    move-result-object p1

    .line 1775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1765
    :pswitch_6
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestResetKnoxContainerPassword()Ljava/lang/String;

    move-result-object p1

    .line 1766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1757
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 1758
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setKioskSettingRestriction(Z)Ljava/lang/String;

    move-result-object p1

    .line 1759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1744
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1746
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1748
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1749
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1751
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1729
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1731
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1733
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1735
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1736
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestServiceProvision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1720
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1721
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getClientPreferenceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1709
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1711
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1712
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->knoxContainerInit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1696
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1700
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1701
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getKnoxConfigurationPreconditionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1685
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1687
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1688
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getConfigurationPreconditionState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1677
    :pswitch_e
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getVersionName()Ljava/lang/String;

    move-result-object p1

    .line 1678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1669
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1670
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getIniFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1672
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1661
    :pswitch_10
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getServerInfo()Ljava/lang/String;

    move-result-object p1

    .line 1662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1654
    :pswitch_11
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->delayScreenLockTimeout()Ljava/lang/String;

    move-result-object p1

    .line 1655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1646
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1647
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->verifyScreenLockPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1638
    :pswitch_13
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getScreenLockStatus()Ljava/lang/String;

    move-result-object p1

    .line 1639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1630
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1631
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getAppProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1622
    :pswitch_15
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getClientProfile()Ljava/lang/String;

    move-result-object p1

    .line 1623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1614
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1615
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getEmmAppLicense(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1606
    :pswitch_17
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getEmmLicense()Ljava/lang/String;

    move-result-object p1

    .line 1607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1599
    :pswitch_18
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    .line 1600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1592
    :pswitch_19
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getFamilySeed()Ljava/lang/String;

    move-result-object p1

    .line 1593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1584
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1585
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getAppSeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1575
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 1576
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setMandatoryApps(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 1577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1566
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1567
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getContentList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1558
    :pswitch_1d
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestUpdateContents()Ljava/lang/String;

    move-result-object p1

    .line 1559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1551
    :pswitch_1e
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestGetDeviceCommand()Ljava/lang/String;

    move-result-object p1

    .line 1552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1543
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1544
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setNotificationOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1530
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1534
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 1535
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getWorkProfilePolicyMap(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1519
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1521
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getKnoxConfigurationMap(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1510
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 1511
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getConfigurationMap([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1501
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 1502
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getInventoryMap([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1486
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1488
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 1493
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getKnoxPolicyMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1473
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1477
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 1478
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getPolicyMap(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1465
    :pswitch_26
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->removeWorkProfile()Ljava/lang/String;

    move-result-object p1

    .line 1466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1453
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1457
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1458
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getWorkProfilePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1445
    :pswitch_28
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->createWorkProfile()Ljava/lang/String;

    move-result-object p1

    .line 1446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1438
    :pswitch_29
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getWorkProfile()Ljava/lang/String;

    move-result-object p1

    .line 1439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1426
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1431
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getKnoxActionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1415
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1418
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getActionResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1407
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getIMEI()Ljava/lang/String;

    move-result-object p1

    .line 1408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1400
    :pswitch_2d
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    .line 1401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1393
    :pswitch_2e
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestAllPermissions()Ljava/lang/String;

    move-result-object p1

    .line 1394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1386
    :pswitch_2f
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->checkAllPermissionsGranted()Ljava/lang/String;

    move-result-object p1

    .line 1387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1378
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1379
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->resetProvisionInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1369
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1370
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getServerPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1361
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getDeviceIdByTenantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1343
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 1352
    invoke-virtual/range {v2 .. v7}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setProvisionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1334
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 1335
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setScreenLockPasswordCompleted(Z)Ljava/lang/String;

    move-result-object p1

    .line 1336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1325
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 1326
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->showLog(Z)Ljava/lang/String;

    move-result-object p1

    .line 1327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1317
    :pswitch_36
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestSendLogToServer()Ljava/lang/String;

    move-result-object p1

    .line 1318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1310
    :pswitch_37
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getProfile()Ljava/lang/String;

    move-result-object p1

    .line 1311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1302
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 1303
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setLoginCompleted(Z)Ljava/lang/String;

    move-result-object p1

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1293
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1294
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getPolicyViolationHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1285
    :pswitch_3a
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getCurrentContext()Ljava/lang/String;

    move-result-object p1

    .line 1286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1278
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->isEnrolledContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1268
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1269
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->switchContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1253
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1260
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->installKnoxConfigurationWithPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1240
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1245
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->installConfigurationWithPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1227
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1232
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->createKnoxContainerWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    :pswitch_40
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestIssueDeviceCertificate()Ljava/lang/String;

    move-result-object p1

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1211
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1212
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->requestUnenroll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1203
    :pswitch_42
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->isRequestUnenrollSupported()Ljava/lang/String;

    move-result-object p1

    .line 1204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1195
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1196
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getCertificateChain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1186
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1187
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->hasPrivateKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1177
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1178
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->choosePrivateKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1164
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 1169
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->writeFileToContainer(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1156
    :pswitch_47
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1146
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1149
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getAppEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    :pswitch_49
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->notifyAppFinished()Ljava/lang/String;

    move-result-object p1

    .line 1139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1130
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1131
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->notifyAppStarted(I)Ljava/lang/String;

    move-result-object p1

    .line 1132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1121
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1122
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setEncryptStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    :pswitch_4c
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setPassword()Ljava/lang/String;

    move-result-object p1

    .line 1114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1105
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->removeKnoxContainer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1096
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1097
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->createKnoxContainer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1083
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1088
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->isKnoxConfigurationPreconditionSufficient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1070
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1075
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setupKnoxConfigurationPrecondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1057
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1059
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1062
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->removeKnoxConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1044
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1049
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->installKnoxConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1033
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1036
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->isConfigurationPreconditionSufficient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1022
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1025
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setupConfigurationPrecondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1011
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1013
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1014
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->removeConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1000
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1003
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->installConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 989
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 992
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setLibraryVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 981
    :pswitch_58
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getLicenseInfo()Ljava/lang/String;

    move-result-object p1

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 974
    :pswitch_59
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->updateLicense()Ljava/lang/String;

    move-result-object p1

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 967
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->stopKnoxApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 953
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 956
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->startKnoxApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 944
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 945
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->stopApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 935
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 936
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->startApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 924
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->uninstallApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 913
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 916
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->installKnoxApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 904
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 905
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->installApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 893
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 896
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getInventory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 880
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 885
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getKnoxConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 865
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 872
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getKnoxPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 854
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 857
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 858
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 846
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 836
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 837
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getKnoxContainer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 828
    invoke-virtual {p0, p1, p4, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :pswitch_68
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->getDeviceCertificate()Ljava/lang/String;

    move-result-object p1

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :pswitch_69
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->isEnrolled()Ljava/lang/String;

    move-result-object p1

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 801
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 792
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->setPreprovisionInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :pswitch_6c
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->enroll()Ljava/lang/String;

    move-result-object p1

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :pswitch_6d
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->updateProfile()Ljava/lang/String;

    move-result-object p1

    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 768
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
