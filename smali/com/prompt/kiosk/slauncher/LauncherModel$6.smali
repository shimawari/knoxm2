.class Lcom/prompt/kiosk/slauncher/LauncherModel$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

.field final synthetic val$uriToDelete:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$6;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$6;->val$uriToDelete:Landroid/net/Uri;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$6;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$6;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$6;->val$uriToDelete:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 739
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$6;->val$item:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 740
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->deleteItemFromStoredMaps(Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    return-void
.end method
