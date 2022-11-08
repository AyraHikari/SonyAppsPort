.class public Lcom/sonymobile/launcher/XperiaLauncherApplication;
.super Landroid/app/Application;
.source "XperiaLauncherApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerDataReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;

    aput-object v2, v0, v1

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    .local v0, "componentEnabledStateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconFeature;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconFeature;->enableComponents(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconFeature;->disableComponents(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    :goto_0
    return-void
.end method
