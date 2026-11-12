.class Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;
.super Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;
.source "PendingAddHomeWidgetInfo.java"


# instance fields
.field boundWidget:Landroid/appwidget/AppWidgetHostView;

.field configurationData:Landroid/os/Parcelable;

.field enabled:Z

.field icon:I

.field info:Landroid/appwidget/AppWidgetProviderInfo;

.field mimeType:Ljava/lang/String;

.field minHeight:I

.field minResizeHeight:I

.field minResizeWidth:I

.field minWidth:I

.field previewImage:I


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->enabled:Z

    const/16 v0, 0x32

    .line 51
    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->itemType:I

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 53
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 54
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minWidth:I

    .line 55
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minHeight:I

    .line 56
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minResizeWidth:I

    .line 57
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minResizeHeight:I

    .line 58
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->previewImage:I

    .line 59
    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->icon:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->configurationData:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->enabled:Z

    .line 40
    iget v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->itemType:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->itemType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 42
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 43
    iget v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minWidth:I

    .line 44
    iget v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minHeight:I

    .line 45
    iget v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minResizeWidth:I

    .line 46
    iget v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minResizeHeight:I

    .line 47
    iget-boolean p1, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->enabled:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->enabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->enabled:Z

    .line 68
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minWidth:I

    .line 69
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minHeight:I

    .line 70
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minResizeWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minResizeWidth:I

    .line 71
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minResizeHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minResizeHeight:I

    .line 72
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->previewImage:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->previewImage:I

    .line 73
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->icon:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->icon:I

    .line 74
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 75
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 76
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->mimeType:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->configurationData:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->configurationData:Landroid/os/Parcelable;

    .line 78
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 79
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->itemType:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->itemType:I

    .line 80
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->spanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->spanX:I

    .line 81
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->spanY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->spanY:I

    .line 82
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minSpanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minSpanX:I

    .line 83
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minSpanY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minSpanY:I

    .line 84
    iget-boolean p1, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->enabled:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->enabled:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HomeWidget: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
