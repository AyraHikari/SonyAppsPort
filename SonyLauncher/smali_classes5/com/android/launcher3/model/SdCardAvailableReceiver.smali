.class public Lcom/android/launcher3/model/SdCardAvailableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SdCardAvailableReceiver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Ljava/util/Set;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/util/PackageUserKey;>;"
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 48
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mPackages:Ljava/util/Set;

    .line 50
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 54
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 55
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    iget-object v2, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    .line 57
    .local v3, "puk":Lcom/android/launcher3/util/PackageUserKey;
    iget-object v4, v3, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 59
    .local v4, "user":Landroid/os/UserHandle;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v5, "packagesRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v6, "packagesUnavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v4}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    iget-object v7, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v4}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    iget-object v7, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_0
    iget-object v7, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 70
    iget-object v7, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 71
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 70
    invoke-virtual {v7, v4, v8}, Lcom/android/launcher3/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 73
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 74
    iget-object v7, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 75
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 74
    invoke-virtual {v7, v8, v4, v9}, Lcom/android/launcher3/LauncherModel;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 78
    .end local v3    # "puk":Lcom/android/launcher3/util/PackageUserKey;
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "packagesRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "packagesUnavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method
