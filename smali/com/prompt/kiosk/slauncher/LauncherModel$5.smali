.class Lcom/prompt/kiosk/slauncher/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

.field final synthetic val$notify:Z

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$notify:Z

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$notify:Z

    if-eqz v1, :cond_0

    .line 625
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 626
    :cond_0
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    :goto_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$values:Landroid/content/ContentValues;

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 628
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-wide v1, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 633
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addItemToStoredMaps(Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    return-void

    .line 630
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: ItemInfo id ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-wide v2, v2, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed to addItemToDatabase already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 631
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
