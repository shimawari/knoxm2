.class public Lcom/orhanobut/logger/DiskLogAdapter;
.super Ljava/lang/Object;
.source "DiskLogAdapter.java"

# interfaces
.implements Lcom/orhanobut/logger/LogAdapter;


# instance fields
.field private final formatStrategy:Lcom/orhanobut/logger/FormatStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/orhanobut/logger/CsvFormatStrategy;->newBuilder()Lcom/orhanobut/logger/CsvFormatStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/orhanobut/logger/CsvFormatStrategy$Builder;->build()Lcom/orhanobut/logger/CsvFormatStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/orhanobut/logger/DiskLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/orhanobut/logger/FormatStrategy;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/orhanobut/logger/FormatStrategy;

    iput-object p1, p0, Lcom/orhanobut/logger/DiskLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    return-void
.end method


# virtual methods
.method public isLoggable(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/orhanobut/logger/DiskLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    .line 29
    invoke-interface {v0, p1, p2, p3}, Lcom/orhanobut/logger/FormatStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
