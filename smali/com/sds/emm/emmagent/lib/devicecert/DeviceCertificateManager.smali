.class public final Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "DeviceCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager$Singleton;
    }
.end annotation


# static fields
.field public static final KEY_CERTIFICATE_ALIAS:Ljava/lang/String; = "CertificateAlias"

.field public static final KEY_CERTIFICATE_DATA:Ljava/lang/String; = "CertificateData"

.field public static final KEY_CERTIFICATE_PASSWORD:Ljava/lang/String; = "CertificatePassword"

.field private static instance:Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;
    .locals 1

    .line 53
    invoke-static {}, Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceCertificate()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 68
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getDeviceCertificate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 73
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestIssueDeviceCertificate()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 93
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->requestIssueDeviceCertificate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrimitiveData"

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 97
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
