.class Lcom/prompt/kiosk/slauncher/AbstractFolder$10;
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$10;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prompt/kiosk/slauncher/IconInfo;Lcom/prompt/kiosk/slauncher/IconInfo;)I
    .locals 4

    .line 1291
    iget v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    iget v1, p2, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 1293
    :cond_0
    iget v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    iget v1, p2, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 1297
    :cond_1
    iget v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    iget v1, p2, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    if-ge v0, v1, :cond_2

    return v2

    .line 1299
    :cond_2
    iget v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    iget v1, p2, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    if-le v0, v1, :cond_3

    return v3

    .line 1303
    :cond_3
    iget v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    iget v1, p2, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    if-ge v0, v1, :cond_4

    return v2

    .line 1305
    :cond_4
    iget p1, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    iget p2, p2, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    if-le p1, p2, :cond_5

    return v3

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1288
    check-cast p1, Lcom/prompt/kiosk/slauncher/IconInfo;

    check-cast p2, Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder$10;->compare(Lcom/prompt/kiosk/slauncher/IconInfo;Lcom/prompt/kiosk/slauncher/IconInfo;)I

    move-result p1

    return p1
.end method
