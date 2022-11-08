.class public Lcom/android/launcher3/model/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field private static final NO_OP_CONSUMER:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AllAppsList"


# instance fields
.field public final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field private mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mDataChanged:Z

.field private mFlags:I

.field private mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

.field private mRemoveListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/AllAppsList;->NO_OP_CONSUMER:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 2
    .param p1, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p2, "appFilter"    # Lcom/android/launcher3/AppFilter;
    .param p3, "bgDataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 79
    sget-object v0, Lcom/android/launcher3/model/AllAppsList;->NO_OP_CONSUMER:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mRemoveListener:Ljava/util/function/Consumer;

    .line 96
    iput-object p1, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 97
    iput-object p2, p0, Lcom/android/launcher3/model/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 98
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/os/LocaleList;)V

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 99
    iput-object p3, p0, Lcom/android/launcher3/model/AllAppsList;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 100
    return-void
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 390
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 391
    .local v1, "info":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    const/4 v0, 0x1

    return v0

    .line 394
    .end local v1    # "info":Landroid/content/pm/LauncherActivityInfo;
    :cond_0
    goto :goto_0

    .line 395
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private findAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 9
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    .line 210
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 211
    .local v2, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v3, v2, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v3, :cond_3

    .line 212
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 213
    .local v3, "ownOrderAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v4, :cond_1

    .line 214
    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/AppInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    return-object v3

    .line 216
    .end local v3    # "ownOrderAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_2
    goto :goto_2

    .line 220
    :cond_3
    instance-of v3, v2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v3, :cond_5

    .line 221
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    .line 222
    .local v3, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 223
    .local v5, "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v6, v5, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v6, :cond_4

    .line 224
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    .line 225
    .local v6, "appInFolder":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/AppInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    .line 225
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 227
    return-object v6

    .line 230
    .end local v5    # "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v6    # "appInFolder":Lcom/android/launcher3/model/data/AppInfo;
    :cond_4
    goto :goto_1

    .line 220
    .end local v3    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_5
    :goto_2
    nop

    .line 232
    .end local v2    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_6
    goto :goto_0

    .line 233
    :cond_7
    return-object v1

    .line 208
    :cond_8
    :goto_3
    return-object v1
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0
    .param p0, "a"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 67
    return-void
.end method

.method private removeApp(I)V
    .locals 2
    .param p1, "index"    # I

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    .line 265
    .local v0, "removed":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 267
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->mRemoveListener:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "activityInfo"    # Landroid/content/pm/LauncherActivityInfo;

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 146
    return-void
.end method

.method public add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "activityInfo"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "loadIcon"    # Z

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    return-void

    .line 155
    :cond_1
    if-eqz p3, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 164
    return-void
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 283
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 284
    invoke-virtual {v0, p2, p3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 287
    .local v2, "info":Landroid/content/pm/LauncherActivityInfo;
    new-instance v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v3, p1, v2, p3}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 288
    .end local v2    # "info":Landroid/content/pm/LauncherActivityInfo;
    goto :goto_0

    .line 290
    :cond_0
    return-object v0
.end method

.method public addPromiseApp(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/model/AllAppsList;->addPromiseApp(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionInfo;Z)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public addPromiseApp(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionInfo;Z)Lcom/android/launcher3/model/data/AppInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p3, "loadIcon"    # Z

    .line 175
    nop

    .line 176
    invoke-static {p2}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object v0

    .line 178
    .local v0, "packageInstallInfo":Lcom/android/launcher3/pm/PackageInstallInfo;
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    .line 179
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x0

    return-object v1

    .line 182
    :cond_0
    new-instance v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 183
    .local v1, "promiseAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    .line 184
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/AllAppsList;->findAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v2

    .line 185
    .local v2, "ownerAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v2, :cond_1

    .line 186
    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 188
    :cond_1
    if-eqz p3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/AppInfo;->usingLowResIcon()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 190
    iget-object v3, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v4, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_2
    const-string v3, ""

    iput-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 198
    return-object v1
.end method

.method public clear()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 275
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/os/LocaleList;)V

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 276
    return-void
.end method

.method public copyData()[Lcom/android/launcher3/model/data/AppInfo;
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/model/data/AppInfo;

    .line 415
    .local v0, "result":[Lcom/android/launcher3/model/data/AppInfo;
    sget-object v1, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 416
    return-object v0
.end method

.method public findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 405
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    .line 406
    .local v1, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    return-object v1

    .line 409
    .end local v1    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndResetChangeFlag()Z
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 107
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 108
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    return v0
.end method

.method public hasShortcutHostPermission()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic lambda$trackRemoves$1$com-android-launcher3-model-AllAppsList()V
    .locals 1

    .line 422
    sget-object v0, Lcom/android/launcher3/model/AllAppsList;->NO_OP_CONSUMER:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mRemoveListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    .line 298
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 299
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 300
    .local v2, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/AllAppsList;->removeApp(I)V

    .line 298
    .end local v2    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setFlags(IZ)V
    .locals 2
    .param p1, "flagMask"    # I
    .param p2, "enabled"    # Z

    .line 122
    if-eqz p2, :cond_0

    .line 123
    iget v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    goto :goto_0

    .line 125
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    .line 127
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 128
    return-void
.end method

.method public trackRemoves(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Lcom/android/launcher3/util/SafeCloseable;"
        }
    .end annotation

    .line 420
    .local p1, "removeListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/model/data/AppInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/model/AllAppsList;->mRemoveListener:Ljava/util/function/Consumer;

    .line 422
    new-instance v0, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/AllAppsList;)V

    return-object v0
.end method

.method public updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V
    .locals 5
    .param p2, "op"    # Lcom/android/launcher3/util/FlagOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/FlagOp;",
            ")V"
        }
    .end annotation

    .line 310
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    .line 311
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 312
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 313
    .local v3, "info":Lcom/android/launcher3/model/data/AppInfo;
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    iget v4, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    invoke-interface {p2, v4}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 315
    iput-boolean v2, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 311
    .end local v3    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 318
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 4
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 321
    .local p1, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    .line 322
    .local v1, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/icons/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 324
    iget-object v2, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 325
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 327
    .end local v1    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 335
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 336
    invoke-virtual {v0, p2, p3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_4

    .line 340
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 341
    iget-object v3, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 342
    .local v3, "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 343
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v4}, Lcom/android/launcher3/model/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 345
    const-string v4, "AllAppsList"

    const-string v5, "Changing shortcut target due to app component name change."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/AllAppsList;->removeApp(I)V

    .line 340
    .end local v3    # "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 354
    .local v3, "info":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/model/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v4

    .line 355
    .local v4, "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    if-nez v4, :cond_2

    .line 356
    new-instance v5, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v5, p1, v3, p3}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_2

    .line 358
    :cond_2
    invoke-static {v3}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v5

    .line 360
    .local v5, "launchIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v3, v7}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 361
    iget-object v6, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v7, v4, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 362
    nop

    .line 363
    invoke-static {v3}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v6

    const/4 v7, 0x2

    .line 362
    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(II)V

    .line 365
    iput-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 367
    iput-boolean v2, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 369
    .end local v3    # "info":Landroid/content/pm/LauncherActivityInfo;
    .end local v4    # "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v5    # "launchIntent":Landroid/content/Intent;
    :goto_2
    goto :goto_1

    :cond_3
    goto :goto_4

    .line 372
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_6

    .line 373
    iget-object v2, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 374
    .local v2, "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 375
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 376
    iget-object v3, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, p3}, Lcom/android/launcher3/icons/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 377
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/AllAppsList;->removeApp(I)V

    .line 372
    .end local v2    # "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 382
    .end local v1    # "i":I
    :cond_6
    :goto_4
    return-object v0
.end method

.method public updatePromiseInstallInfo(Lcom/android/launcher3/pm/PackageInstallInfo;)Ljava/util/List;
    .locals 8
    .param p1, "installInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/pm/PackageInstallInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "updatedAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    iget-object v1, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    .line 240
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 241
    iget-object v4, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    .line 242
    .local v4, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 243
    .local v5, "tgtComp":Landroid/content/ComponentName;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 244
    invoke-virtual {v6, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 245
    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    if-ne v6, v3, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 255
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->isAppStartable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 256
    invoke-direct {p0, v2}, Lcom/android/launcher3/model/AllAppsList;->removeApp(I)V

    goto :goto_2

    .line 247
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->isAppStartable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    if-ne v6, v3, :cond_2

    .line 249
    goto :goto_2

    .line 251
    :cond_2
    invoke-virtual {v4, p1}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 253
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v4    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v5    # "tgtComp":Landroid/content/ComponentName;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method

.method public updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 204
    return-void
.end method
