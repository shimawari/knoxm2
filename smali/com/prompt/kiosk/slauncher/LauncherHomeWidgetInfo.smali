.class public Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;
.super Lcom/prompt/kiosk/slauncher/ItemInfo;
.source "LauncherHomeWidgetInfo.java"


# instance fields
.field appWidgetId:I

.field asset:Ljava/lang/String;

.field enabled:Z

.field hostView:Landroid/appwidget/AppWidgetHostView;

.field minHeight:I

.field minWidth:I

.field providerName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->enabled:Z

    const/16 v0, 0x32

    .line 49
    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->itemType:I

    const/4 v0, 0x3

    .line 50
    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->resizeMode:I

    return-void
.end method

.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>(Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->enabled:Z

    .line 55
    iget v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    .line 56
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 57
    iget v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    .line 58
    iget v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    .line 59
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 60
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    return v0
.end method

.method public getAsset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getTableContentUri(JZ)Landroid/net/Uri;
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableContentUri(JZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTableUri(Z)Landroid/net/Uri;
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableUri(Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "asset"

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HomeWidget(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->unbind()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method
