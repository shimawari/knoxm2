.class Lcom/prompt/kiosk/slauncher/AbstractFolder$11;
.super Ljava/lang/Object;
.source "AbstractFolder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prompt/kiosk/slauncher/IconInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$11;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prompt/kiosk/slauncher/IconInfo;Lcom/prompt/kiosk/slauncher/IconInfo;)I
    .locals 0

    .line 1318
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->title:Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/IconInfo;->title:Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1315
    check-cast p1, Lcom/prompt/kiosk/slauncher/IconInfo;

    check-cast p2, Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder$11;->compare(Lcom/prompt/kiosk/slauncher/IconInfo;Lcom/prompt/kiosk/slauncher/IconInfo;)I

    move-result p1

    return p1
.end method
