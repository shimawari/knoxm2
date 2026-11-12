.class Lcom/prompt/kiosk/slauncher/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/prompt/kiosk/slauncher/ItemInfo;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$itemId:J

    iput-object p6, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iput-object p7, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$context:Landroid/content/Context;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    const/4 v3, 0x0

    .line 348
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$itemId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    if-eq v1, v0, :cond_0

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.prompt.kiosk.slauncher.intent.action.RELOAD_LAUNCHER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$4;->val$context:Landroid/content/Context;

    .line 360
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 367
    :cond_0
    iget-wide v1, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 368
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_1
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
