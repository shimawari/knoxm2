.class Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity$1;
.super Ljava/lang/Object;
.source "OpenSourceLicenseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;

    .line 26
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->finish()V

    return-void
.end method
