.class public Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;
.super Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;
.source "KioskSettingEntity.java"


# instance fields
.field private kioskPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KioskPackageName"
    .end annotation
.end field

.field private useAccessibility:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseAccessibility"
    .end annotation
.end field

.field private useAirplaneMode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseAirplaneMode"
    .end annotation
.end field

.field private useAutoRotate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseAutoRotate"
    .end annotation
.end field

.field private useBlueLight:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseBlueLight"
    .end annotation
.end field

.field private useBluetooth:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseBluetooth"
    .end annotation
.end field

.field private useDeviceMaintenance:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseDeviceMaintenance"
    .end annotation
.end field

.field private useDisplay:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseDisplay"
    .end annotation
.end field

.field private useDoNotDisturb:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseDoNotDisturb"
    .end annotation
.end field

.field private useFlashLight:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseFlashLight"
    .end annotation
.end field

.field private useGoogleAccountSetup:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseGoogleAccountSetup"
    .end annotation
.end field

.field private useLanguage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseLanguage"
    .end annotation
.end field

.field private useLocation:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseLocation"
    .end annotation
.end field

.field private useMobileData:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseMobileData"
    .end annotation
.end field

.field private useMobileHotspot:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseMobileHotspot"
    .end annotation
.end field

.field private useMobileNetwork:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseMobileNetwork"
    .end annotation
.end field

.field private useNfc:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseNfc"
    .end annotation
.end field

.field private useScreenLock:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseScreenLock"
    .end annotation
.end field

.field private useSmartView:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseSmartView"
    .end annotation
.end field

.field private useSound:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseSound"
    .end annotation
.end field

.field private useTimeZone:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseTimeZone"
    .end annotation
.end field

.field private useWiFi:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UseWiFi"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 242
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useWiFi:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useBluetooth:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useNfc:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileData:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useLocation:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAirplaneMode:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileHotspot:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDisplay:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useBlueLight:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useScreenLock:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useSound:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDeviceMaintenance:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileNetwork:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useGoogleAccountSetup:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useTimeZone:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useLanguage:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useFlashLight:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useSmartView:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAccessibility:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAutoRotate:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDoNotDisturb:Z

    return-void
.end method


# virtual methods
.method public getKioskPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->kioskPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isUseAccessibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAccessibility:Z

    return v0
.end method

.method public isUseAirplaneMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAirplaneMode:Z

    return v0
.end method

.method public isUseAutoRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAutoRotate:Z

    return v0
.end method

.method public isUseBlueLight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useBlueLight:Z

    return v0
.end method

.method public isUseBluetooth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useBluetooth:Z

    return v0
.end method

.method public isUseDeviceMaintenance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDeviceMaintenance:Z

    return v0
.end method

.method public isUseDisplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDisplay:Z

    return v0
.end method

.method public isUseDoNotDisturb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDoNotDisturb:Z

    return v0
.end method

.method public isUseFlashLight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useFlashLight:Z

    return v0
.end method

.method public isUseGoogleAccountSetup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useGoogleAccountSetup:Z

    return v0
.end method

.method public isUseLanguage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useLanguage:Z

    return v0
.end method

.method public isUseLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useLocation:Z

    return v0
.end method

.method public isUseMobileData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileData:Z

    return v0
.end method

.method public isUseMobileHotspot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileHotspot:Z

    return v0
.end method

.method public isUseMobileNetwork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileNetwork:Z

    return v0
.end method

.method public isUseNfc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useNfc:Z

    return v0
.end method

.method public isUseScreenLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useScreenLock:Z

    return v0
.end method

.method public isUseSmartView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useSmartView:Z

    return v0
.end method

.method public isUseSound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useSound:Z

    return v0
.end method

.method public isUseTimeZone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useTimeZone:Z

    return v0
.end method

.method public isUseWiFi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useWiFi:Z

    return v0
.end method

.method public setKioskPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->kioskPackageName:Ljava/lang/String;

    return-void
.end method

.method public setUseAccessibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAccessibility:Z

    return-void
.end method

.method public setUseAirplaneMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAirplaneMode:Z

    return-void
.end method

.method public setUseAutoRotate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useAutoRotate:Z

    return-void
.end method

.method public setUseBlueLight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useBlueLight:Z

    return-void
.end method

.method public setUseBluetooth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useBluetooth:Z

    return-void
.end method

.method public setUseDeviceMaintenance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDeviceMaintenance:Z

    return-void
.end method

.method public setUseDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDisplay:Z

    return-void
.end method

.method public setUseDoNotDisturb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useDoNotDisturb:Z

    return-void
.end method

.method public setUseFlashLight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useFlashLight:Z

    return-void
.end method

.method public setUseGoogleAccountSetup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useGoogleAccountSetup:Z

    return-void
.end method

.method public setUseLanguage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useLanguage:Z

    return-void
.end method

.method public setUseLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useLocation:Z

    return-void
.end method

.method public setUseMobileData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileData:Z

    return-void
.end method

.method public setUseMobileHotspot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileHotspot:Z

    return-void
.end method

.method public setUseMobileNetwork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useMobileNetwork:Z

    return-void
.end method

.method public setUseNfc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useNfc:Z

    return-void
.end method

.method public setUseScreenLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useScreenLock:Z

    return-void
.end method

.method public setUseSmartView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useSmartView:Z

    return-void
.end method

.method public setUseSound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useSound:Z

    return-void
.end method

.method public setUseTimeZone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useTimeZone:Z

    return-void
.end method

.method public setUseWiFi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->useWiFi:Z

    return-void
.end method
