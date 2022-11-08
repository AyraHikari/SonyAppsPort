.class public Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteGameEnhancerDataReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerDataReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerDataReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private deleteGameAllPackageListInDb(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package_name=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "selection":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 40
    const-string v2, " OR package_name=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper$HideLauncherIconColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 44
    invoke-interface {p2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 22
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->getInstance()Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    move-result-object v0

    .line 23
    .local v0, "hideLauncherIconManager":Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->queryHideLauncherIcons()Ljava/util/List;

    move-result-object v1

    .line 25
    .local v1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    return-void

    .line 29
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerDataReceiver;->deleteGameAllPackageListInDb(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    sget-object v2, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerDataReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Deleted records. hidelaunchericon.db"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/launcher/util/Log;->d(Ljava/lang/String;[Ljava/lang/String;)I

    .line 33
    .end local v1    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
