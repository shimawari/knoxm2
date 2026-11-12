.class public Lcom/prompt/kiosk/slauncher/EMMAgentUtils;
.super Ljava/lang/Object;
.source "EMMAgentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EMMAgentUtils"

.field private static mEMMAgentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/sds/emm/emmagent/lib/EMMAgentManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;
    .locals 0

    sput-object p0, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->mEMMAgentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bindEMMAgent(Landroid/content/Context;)V
    .locals 1

    .line 29
    :try_start_0
    new-instance v0, Lcom/prompt/kiosk/slauncher/EMMAgentUtils$1;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils$1;-><init>()V

    invoke-static {p0, v0}, Lcom/sds/emm/emmagent/lib/BindManager;->bind(Landroid/content/Context;Lcom/sds/emm/emmagent/lib/EMMServiceConnection;)V
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static checkKioskPolicy(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Kiosk"

    .line 142
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x0

    .line 143
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 146
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v3
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 148
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    :try_start_1
    const-string v4, "Enrolled"

    .line 152
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v5

    sget-object v6, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->EMPLOYEE:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    invoke-virtual {v5, v6}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->isEnrolled(Lcom/sds/emm/emmagent/core/context/EMMAgentContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getCurrentPolicyManager()Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-virtual {v3, v5}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->getPolicies([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 155
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "Allow"

    .line 157
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Enable"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_1

    :cond_0
    move v1, v4

    .line 158
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move v2, v1

    goto :goto_1

    :catch_2
    move-exception p0

    .line 163
    :goto_1
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_2
    :goto_2
    sget-object p0, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->TAG:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking kiosk policy. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static checkKioskSettingsPolicy()Z
    .locals 8

    const-string v0, "Kiosk"

    const-string v1, ""

    const-string v2, "KioskSettings"

    .line 201
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v3
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 203
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    :try_start_1
    const-string v5, "Enrolled"

    .line 207
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v6

    sget-object v7, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->EMPLOYEE:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    invoke-virtual {v6, v7}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->isEnrolled(Lcom/sds/emm/emmagent/core/context/EMMAgentContext;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getCurrentPolicyManager()Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object v0, v6, v4

    invoke-virtual {v3, v6}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->getPolicies([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 210
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 212
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "["

    .line 213
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->TAG:Ljava/lang/String;

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    goto :goto_1

    :catch_1
    move-exception v0

    .line 222
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_0
    :goto_1
    sget-object v0, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->TAG:Ljava/lang/String;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking kiosk policy. isAvailable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private static getAgentManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;
    .locals 1

    .line 55
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v0
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getEMMErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "Error code is null. Unknown Error"

    return-object p0

    .line 315
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "1901013"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "1700020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "1700011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "1700010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "1700008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "1700006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 335
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown error"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Invalid command code"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cannot install public app"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 326
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Invalid OTC code"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Fail to request app list"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Device not found"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Parameter not exist"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v1, " "

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7f592a30 -> :sswitch_5
        -0x7f592a2e -> :sswitch_4
        -0x7f592a17 -> :sswitch_3
        -0x7f592a16 -> :sswitch_2
        -0x7f5929f8 -> :sswitch_1
        -0x7bef0477 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScreensaverContentType()Ljava/lang/String;
    .locals 7

    const-string v0, "KioskScreenSaverContent"

    const-string v1, "Kiosk"

    .line 69
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v2
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 71
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    const/4 v2, 0x0

    :goto_0
    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    const-string v4, "Enrolled"

    .line 76
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v5

    sget-object v6, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->EMPLOYEE:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    invoke-virtual {v5, v6}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->isEnrolled(Lcom/sds/emm/emmagent/core/context/EMMAgentContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getCurrentPolicyManager()Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->getPolicies([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "KioskContentType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 94
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_0
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v0

    :goto_2
    return-object v3
.end method

.method public static hasSettingRestrictionPolicy()Z
    .locals 7

    const-string v0, "AllowSettingsChanges"

    const-string v1, "System"

    .line 113
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v2
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 115
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    const-string v4, "Enrolled"

    .line 119
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v5

    sget-object v6, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->EMPLOYEE:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    invoke-virtual {v5, v6}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->isEnrolled(Lcom/sds/emm/emmagent/core/context/EMMAgentContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getCurrentPolicyManager()Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v1, v5, v3

    invoke-virtual {v2, v5}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->getPolicies([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "Disallow"

    .line 125
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_0
    :goto_1
    return v3
.end method

.method public static isKioskInventoryEmpty(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Kiosk"

    const-string v1, ""

    const/4 v2, 0x0

    .line 173
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Enrolled"

    .line 175
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v5

    sget-object v6, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->EMPLOYEE:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    invoke-virtual {v5, v6}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->isEnrolled(Lcom/sds/emm/emmagent/core/context/EMMAgentContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getInventoryManager()Lcom/sds/emm/emmagent/lib/inventory/InventoryManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-virtual {v3, v5}, Lcom/sds/emm/emmagent/lib/inventory/InventoryManager;->getInventories([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 178
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 180
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "["

    .line 181
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-static {p0}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    sget-object p0, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->TAG:Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking kiosk launcher app list. isEmpty = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static isScreenSaverFileExist()Z
    .locals 7

    const/4 v0, 0x2

    .line 272
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v1
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 274
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 279
    :try_start_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getContentManager()Lcom/sds/emm/emmagent/lib/content/ContentManager;

    move-result-object v3

    const-string v4, "KioskScreenSaver"

    invoke-virtual {v3, v4}, Lcom/sds/emm/emmagent/lib/content/ContentManager;->getContentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 281
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 282
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 283
    new-instance v5, Ljava/io/File;

    const-string v6, "FilePath"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    .line 293
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getContentManager()Lcom/sds/emm/emmagent/lib/content/ContentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/content/ContentManager;->requestUpdateContents()V

    goto :goto_2

    :cond_2
    const-string v1, "Screen Saver List is Null"

    .line 297
    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 301
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    return v2
.end method

.method public static requestAppInstall(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Request Install App. App ID = "

    .line 231
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getAgentManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->TAG:Ljava/lang/String;

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getAppManager()Lcom/sds/emm/emmagent/lib/app/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sds/emm/emmagent/lib/app/AppManager;->installApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_0
    const-string p0, "Failed"

    :goto_0
    return-object p0
.end method

.method public static restrictSettingApp(Z)Ljava/lang/String;
    .locals 4

    const-string v0, "Restrict Setting App : "

    .line 248
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getAgentManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->TAG:Ljava/lang/String;

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getAppManager()Lcom/sds/emm/emmagent/lib/app/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sds/emm/emmagent/lib/app/AppManager;->restrictSettingApp(Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 256
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_0
    const-string p0, "Failed"

    :goto_0
    return-object p0
.end method
