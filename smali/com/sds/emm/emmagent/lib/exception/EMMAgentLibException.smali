.class public Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
.super Ljava/lang/Exception;
.source "EMMAgentLibException.java"


# static fields
.field public static final AGENT_NOT_INSTALLED:Ljava/lang/String; = "AgentNotInstalled"

.field public static final ALREADY_ENROLLED:Ljava/lang/String; = "AlreadyEnrolled"

.field public static final APP_MODIFIED:Ljava/lang/String; = "AppModified"

.field public static final APP_NOT_MANAGED:Ljava/lang/String; = "AppNotManaged"

.field public static final CLIENT_NOT_INSTALLED:Ljava/lang/String; = "ClientNotInstalled"

.field public static final FAILED:Ljava/lang/String; = "Failed"

.field public static final INVALID_PARAMETERS:Ljava/lang/String; = "InvalidParameters"

.field public static final INVALID_TARGET_AGENT:Ljava/lang/String; = "InvalidTargetAgent"

.field public static final MULTIPLE_AGENT:Ljava/lang/String; = "MultipleAgent"

.field public static final MULTIPLE_CLIENT:Ljava/lang/String; = "MultipleClient"

.field public static final NOT_ENROLLED:Ljava/lang/String; = "NotEnrolled"

.field public static final NOT_READY_BIND_FIRST:Ljava/lang/String; = "NotReadyBindFirst"

.field public static final NOT_SUPPORT:Ljava/lang/String; = "NotSupport"

.field public static final NO_PERMISSION:Ljava/lang/String; = "NoPermission"

.field public static final PERMISSION_DENIED:Ljava/lang/String; = "PermissionDenied"

.field public static final SUCCESS:Ljava/lang/String; = "Success"

.field public static final UNEXPECTED_ERROR:Ljava/lang/String; = "UnexpectedError"

.field private static final serialVersionUID:J = 0x6fe222c32d55bbdcL


# instance fields
.field private final exceptionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->exceptionCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->exceptionCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "Failed"

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->exceptionCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->exceptionCode:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExceptionCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->exceptionCode:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nMessage : "

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nStack : "

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
