.class public final Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconFeature;
.super Ljava/lang/Object;
.source "HideLauncherIconFeature.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HideLauncherIconFeature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableComponents(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 47
    .local p1, "clsArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 48
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconFeature;->setComponentEnabledState(Landroid/content/Context;ILjava/lang/Class;)V

    .line 49
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public static enableComponents(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 39
    .local p1, "clsArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 40
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconFeature;->setComponentEnabledState(Landroid/content/Context;ILjava/lang/Class;)V

    .line 41
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->newInstance(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->newInstance()V

    .line 44
    return-void
.end method

.method public static isFeatureEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sonymobile.gameenhancer"

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/PackageManagerUtils;->isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setComponentEnabledState(Landroid/content/Context;ILjava/lang/Class;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "componentEnableState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 29
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "component":Landroid/content/ComponentName;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : Set ComponentEnabledState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "HideLauncherIconFeature"

    invoke-static {v3, v2}, Lcom/sonymobile/launcher/util/Log;->d(Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 36
    return-void
.end method
