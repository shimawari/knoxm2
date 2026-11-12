.class public Lcom/prompt/kiosk/slauncher/ApplicationInfo;
.super Lcom/prompt/kiosk/slauncher/IconInfo;
.source "ApplicationInfo.java"


# static fields
.field static final DOWNLOADED_FLAG:I = 0x1

.field public static final INTENT_LAUNCH_FLAG:I = 0x10200000

.field private static final TAG:Ljava/lang/String; = "ApplicationInfo"

.field static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field componentName:Landroid/content/ComponentName;

.field firstInstallTime:J

.field flags:I

.field hidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/IconInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    const/16 v0, 0x64

    .line 54
    iput v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/IconInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v0, 0x10200000

    .line 103
    invoke-virtual {p0, p2, v0}, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 104
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    const/16 p2, 0x64

    .line 105
    iput p2, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->itemType:I

    .line 107
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_0

    iget p2, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    or-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    or-int/lit8 p1, p2, 0x3

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/prompt/kiosk/slauncher/IconCache;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Lcom/prompt/kiosk/slauncher/IconCache;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/IconInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    .line 62
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 64
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v3, 0x10200000

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 68
    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    or-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    or-int/lit8 v2, v3, 0x3

    iput v2, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    .line 76
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v2, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PackageManager.getApplicationInfo failed for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    invoke-virtual {p3, p0, p2, p4}, Lcom/prompt/kiosk/slauncher/IconCache;->getTitleAndIcon(Lcom/prompt/kiosk/slauncher/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V

    const/16 p1, 0x64

    .line 82
    iput p1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->itemType:I

    const-wide/16 p1, -0xc8

    .line 88
    iput-wide p1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->container:J

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    .line 120
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/IconInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    .line 121
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    const-wide/16 v0, -0x1

    .line 125
    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->container:J

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v3, 0x10200000

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 128
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->firstInstallTime:J

    const/16 p1, 0x64

    .line 131
    iput p1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/ApplicationInfo;)V
    .locals 2

    .line 92
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/IconInfo;-><init>(Lcom/prompt/kiosk/slauncher/ApplicationInfo;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    .line 93
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 94
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 96
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->flags:I

    .line 97
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->firstInstallTime:J

    const/16 p1, 0x64

    .line 98
    iput p1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->itemType:I

    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/ApplicationInfo;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   title=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" iconBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstInstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p2, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->firstInstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static makeIntentFromComponentName(Landroid/content/ComponentName;I)Landroid/content/Intent;
    .locals 2

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public isSameWith(Landroid/content/ComponentName;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public makeShortcut()Lcom/prompt/kiosk/slauncher/ShortcutInfo;
    .locals 1

    .line 173
    new-instance v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;-><init>(Lcom/prompt/kiosk/slauncher/ApplicationInfo;)V

    return-object v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2

    .line 181
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/IconInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 183
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "intent"

    .line 184
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 0

    .line 146
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->makeIntentFromComponentName(Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/IconInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ApplicationInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
