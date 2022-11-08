.class public Lcom/android/launcher3/model/FirstScreenBroadcast;
.super Ljava/lang/Object;
.source "FirstScreenBroadcast.java"


# static fields
.field private static final ACTION_FIRST_SCREEN_ACTIVE_INSTALLS:Ljava/lang/String; = "com.android.launcher3.action.FIRST_SCREEN_ACTIVE_INSTALLS"

.field private static final DEBUG:Z = false

.field private static final FOLDER_ITEM_EXTRA:Ljava/lang/String; = "folderItem"

.field private static final HOTSEAT_ITEM_EXTRA:Ljava/lang/String; = "hotseatItem"

.field private static final TAG:Ljava/lang/String; = "FirstScreenBroadcast"

.field private static final VERIFICATION_TOKEN_EXTRA:Ljava/lang/String; = "verificationToken"

.field private static final WIDGET_ITEM_EXTRA:Ljava/lang/String; = "widgetItem"

.field private static final WORKSPACE_ITEM_EXTRA:Ljava/lang/String; = "workspaceItem"


# instance fields
.field private final mSessionInfoForPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "sessionInfoForPackage":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/model/FirstScreenBroadcast;->mSessionInfoForPackage:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method private static cloneOnMainThread(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    .line 189
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getPackageName(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "packageName":Ljava/lang/String;
    instance-of v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_0

    .line 166
    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 167
    .local v1, "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 170
    :cond_1
    :goto_0
    nop

    .line 173
    :goto_1
    return-object v0
.end method

.method static synthetic lambda$cloneOnMainThread$2(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic lambda$sendBroadcasts$0(Landroid/os/UserHandle;Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 1
    .param p0, "myUser"    # Landroid/os/UserHandle;
    .param p1, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 93
    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static printList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p0, "packageInstaller"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FirstScreenBroadcast"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method private sendBroadcastToInstaller(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p3, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "firstScreenItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 109
    .local v0, "folderItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 110
    .local v1, "workspaceItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v2, "hotseatItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 113
    .local v3, "widgetItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 114
    .local v5, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v6, v5, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v6, :cond_2

    .line 115
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/FolderInfo;

    .line 117
    .local v6, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v7, v6, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/launcher3/model/FirstScreenBroadcast;->cloneOnMainThread(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    .line 118
    .local v8, "folderItemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v8}, Lcom/android/launcher3/model/FirstScreenBroadcast;->getPackageName(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "folderItemInfoPackage":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 120
    invoke-interface {p3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 121
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v8    # "folderItemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    goto :goto_1

    .line 126
    .end local v6    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v9    # "folderItemInfoPackage":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Lcom/android/launcher3/model/FirstScreenBroadcast;->getPackageName(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 128
    goto :goto_0

    .line 130
    :cond_3
    instance-of v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v7, :cond_4

    .line 131
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    :cond_4
    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v8, -0x65

    if-ne v7, v8, :cond_5

    .line 133
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_5
    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v8, -0x64

    if-ne v7, v8, :cond_6

    .line 135
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v5    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_2
    goto :goto_0

    .line 146
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 147
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 148
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 149
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 151
    return-void

    .line 153
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.launcher3.action.FIRST_SCREEN_ACTIVE_INSTALLS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    const-string v6, "folderItem"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    const-string v6, "workspaceItem"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    const-string v6, "hotseatItem"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    const-string v6, "widgetItem"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/high16 v7, 0x44000000    # 512.0f

    .line 159
    invoke-static {p1, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "verificationToken"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 153
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method


# virtual methods
.method synthetic lambda$sendBroadcasts$1$com-android-launcher3-model-FirstScreenBroadcast(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firstScreenItems"    # Ljava/util/List;
    .param p3, "installer"    # Ljava/lang/String;
    .param p4, "packages"    # Ljava/util/Set;

    .line 97
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/android/launcher3/model/FirstScreenBroadcast;->sendBroadcastToInstaller(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

.method public sendBroadcasts(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p2, "firstScreenItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 90
    .local v0, "myUser":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/launcher3/model/FirstScreenBroadcast;->mSessionInfoForPackage:Ljava/util/HashMap;

    .line 91
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda1;-><init>(Landroid/os/UserHandle;)V

    .line 93
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda3;-><init>()V

    .line 95
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 94
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/model/FirstScreenBroadcast;Landroid/content/Context;Ljava/util/List;)V

    .line 96
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 98
    return-void
.end method
