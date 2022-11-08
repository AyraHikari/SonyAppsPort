.class public Lcom/sonymobile/launcher/gameenhancer/GeHideAppsList;
.super Ljava/lang/Object;
.source "GeHideAppsList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeHideAppsList(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 24
    .local v1, "user":Landroid/os/UserHandle;
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->getInstance()Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    move-result-object v2

    .line 25
    .local v2, "mng":Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v2}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->queryHideLauncherIcons()Ljava/util/List;

    move-result-object v3

    .line 27
    .local v3, "hidePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 28
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 29
    .local v5, "hidePackage":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 30
    const-class v6, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherApps;

    .line 31
    invoke-virtual {v6, v5, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 30
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherActivityInfo;

    .line 32
    .local v7, "info":Landroid/content/pm/LauncherActivityInfo;
    new-instance v8, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v7}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v8, p0, v7, v9, v1}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Ljava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 33
    .local v8, "hideApp":Lcom/android/launcher3/model/data/AppInfo;
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v7    # "info":Landroid/content/pm/LauncherActivityInfo;
    .end local v8    # "hideApp":Lcom/android/launcher3/model/data/AppInfo;
    goto :goto_1

    .line 27
    .end local v5    # "hidePackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .end local v3    # "hidePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :cond_1
    return-object v0
.end method
