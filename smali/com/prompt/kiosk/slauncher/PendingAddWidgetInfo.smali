.class Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;
.super Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;
.source "PendingAddWidgetInfo.java"


# instance fields
.field boundWidget:Landroid/appwidget/AppWidgetHostView;

.field configurationData:Landroid/os/Parcelable;

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

    .line 38
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;-><init>()V

    const/4 v0, 0x4

    .line 39
    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->itemType:I

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 41
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 42
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minWidth:I

    .line 43
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minHeight:I

    .line 44
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minResizeWidth:I

    .line 45
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minResizeHeight:I

    .line 46
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->previewImage:I

    .line 47
    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->icon:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;-><init>()V

    .line 56
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minWidth:I

    .line 57
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minHeight:I

    .line 58
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minResizeWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minResizeWidth:I

    .line 59
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minResizeHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minResizeHeight:I

    .line 60
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->previewImage:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->previewImage:I

    .line 61
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->icon:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->icon:I

    .line 62
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 63
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 64
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    .line 66
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 67
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->itemType:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->itemType:I

    .line 68
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->spanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->spanX:I

    .line 69
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->spanY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->spanY:I

    .line 70
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minSpanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minSpanX:I

    .line 71
    iget p1, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minSpanY:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minSpanY:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Widget: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
