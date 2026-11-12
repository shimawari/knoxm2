.class public Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
.super Ljava/lang/Object;
.source "PrettyFormatStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orhanobut/logger/PrettyFormatStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field logStrategy:Lcom/orhanobut/logger/LogStrategy;

.field methodCount:I

.field methodOffset:I

.field showThreadInfo:Z

.field tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->showThreadInfo:Z

    const-string v0, "PRETTY_LOGGER"

    iput-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/orhanobut/logger/PrettyFormatStrategy$1;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/orhanobut/logger/PrettyFormatStrategy;
    .locals 2

    iget-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/orhanobut/logger/LogcatLogStrategy;

    invoke-direct {v0}, Lcom/orhanobut/logger/LogcatLogStrategy;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    .line 241
    :cond_0
    new-instance v0, Lcom/orhanobut/logger/PrettyFormatStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy;-><init>(Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;Lcom/orhanobut/logger/PrettyFormatStrategy$1;)V

    return-object v0
.end method

.method public logStrategy(Lcom/orhanobut/logger/LogStrategy;)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    .locals 0

    iput-object p1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    return-object p0
.end method

.method public methodCount(I)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    .locals 0

    iput p1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodCount:I

    return-object p0
.end method

.method public methodOffset(I)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    .locals 0

    iput p1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodOffset:I

    return-object p0
.end method

.method public showThreadInfo(Z)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->showThreadInfo:Z

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    .locals 0

    iput-object p1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
