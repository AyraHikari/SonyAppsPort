.class public Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;
.super Ljava/lang/Object;
.source "OwnOrderAppsList.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/sonymobile/launcher/allapps/AppsList;


# static fields
.field private static final TAG:Ljava/lang/String; = "OwnOrderAppsList"


# instance fields
.field private mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field private mAppInfoComparator:Lcom/sonymobile/launcher/allapps/AppInfoOwnOrderComparator;

.field private mIsBound:Z

.field private final mIsWork:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNumAppRowsInAdapter:I

.field private final mNumAppsPerRow:I

.field private mOwnOrderApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsStore"    # Lcom/android/launcher3/allapps/AllAppsStore;
    .param p3, "isWork"    # Z

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 79
    iput-object p2, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 80
    invoke-static {p1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    .line 81
    .local v0, "baseDraggingActivity":Lcom/android/launcher3/BaseDraggingActivity;
    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_0

    .line 82
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    goto :goto_0

    .line 84
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 86
    :goto_0
    new-instance v1, Lcom/sonymobile/launcher/allapps/AppInfoOwnOrderComparator;

    invoke-direct {v1}, Lcom/sonymobile/launcher/allapps/AppInfoOwnOrderComparator;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAppInfoComparator:Lcom/sonymobile/launcher/allapps/AppInfoOwnOrderComparator;

    .line 87
    iput-boolean p3, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mIsWork:Z

    .line 88
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mNumAppsPerRow:I

    .line 89
    invoke-virtual {p2, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 90
    return-void
.end method

.method private appTitleUpdate()V
    .locals 9

    .line 304
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 305
    .local v3, "newApp":Lcom/android/launcher3/model/data/AppInfo;
    if-nez v3, :cond_0

    .line 306
    goto :goto_2

    .line 308
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 309
    .local v5, "ownOrderItemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v6, v5, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v6, :cond_1

    .line 310
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    .line 311
    .local v6, "ownOrderApp":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v7, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v8, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 312
    iget-object v7, v3, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 313
    iget-object v7, v3, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    iput-object v7, v6, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 317
    .end local v5    # "ownOrderItemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v6    # "ownOrderApp":Lcom/android/launcher3/model/data/AppInfo;
    :cond_1
    goto :goto_1

    .line 304
    .end local v3    # "newApp":Lcom/android/launcher3/model/data/AppInfo;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_3
    return-void
.end method

.method private appsConsideredEquals(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 2
    .param p1, "newApp"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "ownOrderApp"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 439
    invoke-direct {p0, p2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->isPromiseAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 440
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p2, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 442
    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0
.end method

.method private commitChanges()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAppInfoComparator:Lcom/sonymobile/launcher/allapps/AppInfoOwnOrderComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateRank(I)V

    .line 459
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updatePositionsInDatabase()V

    .line 462
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateAdapterItems()V

    .line 463
    return-void
.end method

.method private findAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 7
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 392
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 393
    .local v1, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_2

    .line 394
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 395
    .local v2, "ownOrderAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    .line 396
    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->appsConsideredEquals(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    return-object v2

    .line 398
    .end local v2    # "ownOrderAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_1
    goto :goto_2

    .line 401
    :cond_2
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_4

    .line 402
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    .line 403
    .local v2, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 404
    .local v4, "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v5, v4, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v5, :cond_3

    .line 405
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    .line 406
    .local v5, "appInFolder":Lcom/android/launcher3/model/data/AppInfo;
    invoke-direct {p0, p1, v5}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->appsConsideredEquals(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 407
    return-object v5

    .line 410
    .end local v4    # "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v5    # "appInFolder":Lcom/android/launcher3/model/data/AppInfo;
    :cond_3
    goto :goto_1

    .line 401
    .end local v2    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_4
    :goto_2
    nop

    .line 412
    .end local v1    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_5
    goto :goto_0

    .line 413
    :cond_6
    const-string v0, "findAppInfo(): return null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwnOrderAppsList"

    invoke-static {v1, v0}, Lcom/sonymobile/launcher/util/Log;->d(Ljava/lang/String;[Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method private findFolderInfo(J)Lcom/android/launcher3/model/data/FolderInfo;
    .locals 4
    .param p1, "id"    # J

    .line 363
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 364
    .local v1, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 365
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    return-object v0

    .line 367
    .end local v1    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findFolderInfoOnId(J)Lcom/android/launcher3/model/data/FolderInfo;
    .locals 7
    .param p1, "id"    # J

    .line 372
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 373
    .local v1, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_1

    .line 374
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    .line 375
    .local v2, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 376
    .local v4, "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v5, v4, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v5, :cond_0

    .line 377
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    int-to-long v5, v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    .line 378
    return-object v2

    .line 381
    .end local v4    # "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    goto :goto_1

    .line 383
    .end local v1    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_1
    goto :goto_0

    .line 384
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findRemoveAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 5
    .param p1, "ownOrderAppInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 350
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 351
    return-object p1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 355
    .local v3, "newAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-direct {p0, v3, p1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->appsConsideredEquals(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    const/4 v0, 0x0

    return-object v0

    .line 354
    .end local v3    # "newAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_2
    return-object p1
.end method

.method private findRemoveAppInfo()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, "allOwnOrderApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 326
    .local v2, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v3, v2, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v3, :cond_0

    .line 327
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 328
    :cond_0
    instance-of v3, v2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v3, :cond_2

    .line 329
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    .line 330
    .local v3, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 331
    .local v5, "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v6, v5, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v6, :cond_1

    .line 332
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v5    # "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    goto :goto_1

    .line 336
    .end local v2    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_2
    :goto_2
    goto :goto_0

    .line 339
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v1, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 341
    .local v3, "ownOrderApp":Lcom/android/launcher3/model/data/AppInfo;
    invoke-direct {p0, v3}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->findRemoveAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v4

    .line 342
    .local v4, "removedApp":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v4, :cond_4

    .line 343
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v3    # "ownOrderApp":Lcom/android/launcher3/model/data/AppInfo;
    .end local v4    # "removedApp":Lcom/android/launcher3/model/data/AppInfo;
    :cond_4
    goto :goto_3

    .line 346
    :cond_5
    return-object v1
.end method

.method private findRestoreAppInfoInFolder(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 9
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 418
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->isPromiseAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 420
    .local v2, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v3, v2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v3, :cond_2

    .line 421
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    .line 422
    .local v3, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 423
    .local v5, "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v6, v5, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v6, :cond_1

    .line 424
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    .line 425
    .local v6, "appInFolder":Lcom/android/launcher3/model/data/AppInfo;
    invoke-direct {p0, v6}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->isPromiseAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 426
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 427
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    iget-object v8, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 428
    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 429
    return-object v6

    .line 432
    .end local v5    # "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v6    # "appInFolder":Lcom/android/launcher3/model/data/AppInfo;
    :cond_1
    goto :goto_1

    .line 434
    .end local v2    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_2
    goto :goto_0

    .line 435
    :cond_3
    return-object v1
.end method

.method private static getAppNames(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 545
    .local p0, "adapterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 546
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 547
    .local v2, "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v3, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const-string v4, ", "

    if-eqz v3, :cond_0

    .line 548
    iget-object v3, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 549
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 550
    :cond_0
    iget-object v3, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v3, :cond_1

    .line 551
    iget-object v3, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 552
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    .end local v2    # "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :cond_1
    :goto_1
    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAppNames(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 536
    .local p0, "appInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 537
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 538
    .local v2, "appInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 539
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    .end local v2    # "appInfo":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isPromiseAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 388
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->isAppStartable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private refillAdapterItems()V
    .locals 7

    .line 478
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 480
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 481
    .local v1, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_0

    .line 483
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v2

    .line 484
    .local v2, "appItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v3, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "appItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    goto :goto_1

    .line 485
    :cond_0
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_1

    .line 486
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asFolder(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v2

    .line 487
    .local v2, "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v3, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 485
    .end local v2    # "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :cond_1
    :goto_1
    nop

    .line 489
    .end local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_2
    goto :goto_0

    .line 491
    :cond_2
    iget v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mNumAppsPerRow:I

    if-eqz v0, :cond_8

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "numAppsInSection":I
    const/4 v1, 0x0

    .line 496
    .local v1, "numAppsInRow":I
    const/4 v2, -0x1

    .line 497
    .local v2, "rowIndex":I
    iget-object v3, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 498
    .local v4, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    .line 499
    iget v5, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 500
    const/4 v0, 0x0

    goto :goto_4

    .line 501
    :cond_3
    iget v5, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    const/16 v6, 0x40

    invoke-static {v5, v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 502
    :cond_4
    iget v5, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mNumAppsPerRow:I

    rem-int v5, v0, v5

    if-nez v5, :cond_5

    .line 503
    const/4 v1, 0x0

    .line 504
    add-int/lit8 v2, v2, 0x1

    .line 506
    :cond_5
    iput v2, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    .line 507
    iput v1, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowAppIndex:I

    .line 508
    add-int/lit8 v0, v0, 0x1

    .line 509
    add-int/lit8 v1, v1, 0x1

    .line 511
    .end local v4    # "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :cond_6
    :goto_4
    goto :goto_3

    .line 512
    :cond_7
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mNumAppRowsInAdapter:I

    .line 514
    .end local v0    # "numAppsInSection":I
    .end local v1    # "numAppsInRow":I
    .end local v2    # "rowIndex":I
    :cond_8
    return-void
.end method

.method private refreshRecyclerView()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyDataSetChanged()V

    .line 474
    :cond_0
    return-void
.end method

.method private updateAdapterItems()V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->refillAdapterItems()V

    .line 467
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->refreshRecyclerView()V

    .line 468
    return-void
.end method

.method private updatePositionsInDatabase()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 599
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ModelWriter;->moveAllAppsItemsInDatabase(Ljava/util/ArrayList;)V

    .line 600
    return-void
.end method

.method private updateRank(I)V
    .locals 3
    .param p1, "startPos"    # I

    .line 559
    move v0, p1

    .local v0, "i":I
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 560
    iget-object v2, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 561
    .local v2, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iput v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 562
    iput v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 559
    .end local v2    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addApp(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "position"    # I

    .line 649
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 651
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v0

    .line 652
    .local v0, "appItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 654
    invoke-direct {p0, p2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateRank(I)V

    .line 655
    return-void
.end method

.method public bindOwnOrderApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p1, "ownOrderApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 447
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 448
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->commitChanges()V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mIsBound:Z

    .line 450
    return-void
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFastScrollerSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumAppRows()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public getNumFilteredApps()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasApp(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 636
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasFolderWithId(J)Z
    .locals 4
    .param p1, "id"    # J

    .line 640
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 641
    .local v1, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 642
    const/4 v0, 0x1

    return v0

    .line 644
    .end local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    goto :goto_0

    .line 645
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasNoFilteredResults()Z
    .locals 1

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public hasSearchResults()Z
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isWork()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mIsWork:Z

    return v0
.end method

.method public makeFolder(ILcom/android/launcher3/model/data/ItemInfo;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "secondItem"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 574
    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    .line 575
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    const-string v1, ""

    iput-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 577
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    .line 578
    .local v8, "firstItem":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 580
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 581
    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 583
    invoke-direct {p0, v1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateRank(I)V

    .line 585
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iget v4, v0, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    const/16 v3, -0x66

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabaseSync(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 588
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    iget v6, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v5, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 590
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 593
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updatePositionsInDatabase()V

    .line 594
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateAdapterItems()V

    .line 595
    return-void
.end method

.method public moveComplete()V
    .locals 0

    .line 570
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updatePositionsInDatabase()V

    .line 571
    return-void
.end method

.method public moveItem(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 521
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 522
    .local v0, "app":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 524
    .local v1, "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v2, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 525
    iget-object v2, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 527
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 528
    .local v2, "updateStartPos":I
    invoke-direct {p0, v2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateRank(I)V

    .line 533
    return-void
.end method

.method public onAppsUpdated()V
    .locals 15

    .line 150
    iget-boolean v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mIsWork:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mIsBound:Z

    if-nez v0, :cond_1

    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_2

    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    .line 155
    .local v0, "appInfos":[Lcom/android/launcher3/model/data/AppInfo;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, -0x66

    if-ge v3, v1, :cond_11

    aget-object v5, v0, v3

    .line 156
    .local v5, "addedOrUpdatedAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v6, v5, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 157
    goto/16 :goto_4

    .line 160
    :cond_3
    invoke-direct {p0, v5}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->findAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v6

    .line 161
    .local v6, "ownOrderAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    const/4 v7, 0x1

    if-nez v6, :cond_7

    .line 163
    invoke-direct {p0, v5}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->isPromiseAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 164
    iget v4, v5, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    .line 165
    .local v4, "installReason":I
    new-instance v8, Lcom/sonymobile/launcher/XperiaAppInfo;

    invoke-direct {v8, v5}, Lcom/sonymobile/launcher/XperiaAppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 167
    .local v8, "appInfo":Lcom/sonymobile/launcher/XperiaAppInfo;
    iget-object v9, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v9, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v9

    const/16 v11, -0x66

    const v12, 0x7fffffff

    const/4 v13, -0x1

    const/4 v14, -0x1

    .line 169
    move-object v10, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabaseSync(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 170
    const/4 v9, 0x4

    if-eq v4, v9, :cond_4

    const/4 v9, 0x2

    if-eq v4, v9, :cond_4

    .line 173
    iget-object v9, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v9

    new-instance v10, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;

    invoke-direct {v10, v8}, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 176
    :cond_4
    invoke-direct {p0, v5}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->findRestoreAppInfoInFolder(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v9

    .line 177
    .local v9, "restoreAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v9, :cond_5

    .line 178
    iget-object v10, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    iget v10, v9, Lcom/android/launcher3/model/data/AppInfo;->container:I

    int-to-long v10, v10

    invoke-direct {p0, v10, v11}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->findFolderInfo(J)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v10

    .line 180
    .local v10, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    if-eqz v10, :cond_5

    .line 182
    iget v11, v9, Lcom/android/launcher3/model/data/AppInfo;->container:I

    iput v11, v8, Lcom/sonymobile/launcher/XperiaAppInfo;->container:I

    .line 183
    iget v11, v9, Lcom/android/launcher3/model/data/AppInfo;->screenId:I

    iput v11, v8, Lcom/sonymobile/launcher/XperiaAppInfo;->screenId:I

    .line 184
    iget v11, v9, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    iput v11, v8, Lcom/sonymobile/launcher/XperiaAppInfo;->rank:I

    .line 185
    iget v11, v9, Lcom/android/launcher3/model/data/AppInfo;->id:I

    iput v11, v8, Lcom/sonymobile/launcher/XperiaAppInfo;->id:I

    .line 186
    iget-object v11, v10, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iget v12, v8, Lcom/sonymobile/launcher/XperiaAppInfo;->rank:I

    invoke-virtual {v11, v12, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v10, v7}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    .line 188
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/launcher3/LauncherModel;->updateApp(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 189
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 196
    .end local v4    # "installReason":I
    .end local v8    # "appInfo":Lcom/sonymobile/launcher/XperiaAppInfo;
    .end local v9    # "restoreAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v10    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_5
    goto/16 :goto_4

    .line 197
    :cond_6
    new-instance v4, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v4, v5}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 198
    .local v4, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v7

    const/16 v9, -0x66

    const v10, 0x7fffffff

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 200
    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabaseSync(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 204
    .end local v4    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    goto/16 :goto_4

    .line 206
    :cond_7
    invoke-direct {p0, v6}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->isPromiseAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-direct {p0, v5}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->isPromiseAppInfo(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 207
    new-instance v8, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v8, v5}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 208
    .local v8, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget v9, v6, Lcom/android/launcher3/model/data/AppInfo;->container:I

    iput v9, v8, Lcom/android/launcher3/model/data/AppInfo;->container:I

    .line 209
    iget v9, v6, Lcom/android/launcher3/model/data/AppInfo;->screenId:I

    iput v9, v8, Lcom/android/launcher3/model/data/AppInfo;->screenId:I

    .line 210
    iget v9, v6, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    iput v9, v8, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    .line 211
    iget v9, v6, Lcom/android/launcher3/model/data/AppInfo;->id:I

    iput v9, v8, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 212
    iget v9, v8, Lcom/android/launcher3/model/data/AppInfo;->container:I

    if-ne v9, v4, :cond_b

    .line 213
    iget-object v4, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 214
    .local v4, "index":I
    if-gez v4, :cond_a

    .line 215
    iget v9, v8, Lcom/android/launcher3/model/data/AppInfo;->id:I

    int-to-long v9, v9

    invoke-direct {p0, v9, v10}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->findFolderInfoOnId(J)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v9

    .line 216
    .local v9, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    if-eqz v9, :cond_10

    .line 217
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v11, v9, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 218
    iget-object v11, v9, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    .line 219
    .local v11, "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v12, v11, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v12, :cond_8

    iget v12, v11, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v13, v8, Lcom/android/launcher3/model/data/AppInfo;->id:I

    if-ne v12, v13, :cond_8

    .line 221
    iput v10, v8, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    .line 222
    iget v12, v9, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    iput v12, v8, Lcom/android/launcher3/model/data/AppInfo;->container:I

    .line 217
    .end local v11    # "infoInFolder":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 225
    .end local v10    # "i":I
    :cond_9
    iget v10, v8, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    if-ltz v10, :cond_10

    iget v10, v8, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    iget-object v11, v9, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    .line 227
    iget-object v10, v9, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iget v11, v8, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    invoke-virtual {v10, v11, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v9, v7}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    .line 229
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/launcher3/LauncherModel;->updateApp(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 230
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_4

    .line 235
    .end local v9    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_a
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v4    # "index":I
    goto :goto_2

    .line 237
    :cond_b
    iget v4, v8, Lcom/android/launcher3/model/data/AppInfo;->container:I

    int-to-long v9, v4

    invoke-direct {p0, v9, v10}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->findFolderInfo(J)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    .line 238
    .local v4, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    if-eqz v4, :cond_c

    .line 239
    iget-object v9, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iget v10, v8, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {v4, v7}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    .line 243
    .end local v4    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_c
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/launcher3/LauncherModel;->updateApp(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 244
    iget-object v4, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 250
    .end local v8    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    goto :goto_4

    .line 251
    :cond_d
    iget-object v4, v6, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v4, :cond_e

    .line 252
    iget-object v4, v5, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v4, v6, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_3

    .line 253
    :cond_e
    iget-object v4, v5, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v6, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v7, v5, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v7, v7, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 255
    iget-object v4, v5, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v4, v6, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 257
    :cond_f
    :goto_3
    iget-object v4, v5, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    iput-object v4, v6, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 258
    iget v4, v5, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    iput v4, v6, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 259
    iget-object v4, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/launcher3/LauncherModel;->updateApp(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 260
    iget-object v4, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 155
    .end local v5    # "addedOrUpdatedAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v6    # "ownOrderAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_10
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 271
    :cond_11
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->findRemoveAppInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 273
    .local v1, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 274
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    .line 276
    .local v5, "removedApp":Lcom/android/launcher3/model/data/AppInfo;
    iget v6, v5, Lcom/android/launcher3/model/data/AppInfo;->container:I

    const/4 v7, 0x0

    if-ne v6, v4, :cond_12

    .line 277
    iget-object v6, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v6, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v6

    invoke-virtual {v6, v5, v7}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 279
    iget-object v6, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->validateModelDataOnResume()V

    goto :goto_6

    .line 281
    :cond_12
    iget v6, v5, Lcom/android/launcher3/model/data/AppInfo;->container:I

    int-to-long v8, v6

    invoke-direct {p0, v8, v9}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->findFolderInfo(J)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v6

    .line 282
    .local v6, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    if-eqz v6, :cond_14

    .line 283
    invoke-virtual {v6, v5, v2}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 284
    iget-object v8, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 285
    iget-object v7, v6, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 286
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 289
    :cond_13
    iget-object v7, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->validateModelDataOnResume()V

    .line 295
    .end local v5    # "removedApp":Lcom/android/launcher3/model/data/AppInfo;
    .end local v6    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_14
    :goto_6
    goto :goto_5

    .line 297
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->appTitleUpdate()V

    .line 300
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->commitChanges()V

    .line 301
    return-void
.end method

.method public removeInfo(Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 3
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 607
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 608
    .local v0, "index":I
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 609
    .local v1, "removed":Z
    if-eqz v1, :cond_0

    .line 610
    iget-object v2, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 611
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateRank(I)V

    .line 612
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updatePositionsInDatabase()V

    .line 613
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->refillAdapterItems()V

    .line 615
    :cond_0
    return v0
.end method

.method public replaceInfo(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 9
    .param p1, "newItem"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "position"    # I

    .line 619
    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 620
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 622
    .local v0, "replacedItem":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v1

    .line 623
    .local v1, "appItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v2, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v2, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    const/16 v5, -0x66

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 627
    return-void
.end method

.method public saveAddedApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 7
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mOwnOrderApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    const/16 v3, -0x66

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 661
    return-void

    .line 658
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 96
    iput-object p1, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 97
    return-void
.end method

.method public stopBindOwnOrderApps()V
    .locals 1

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->mIsBound:Z

    .line 454
    return-void
.end method

.method public update()V
    .locals 1

    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateRank(I)V

    .line 631
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updatePositionsInDatabase()V

    .line 632
    invoke-direct {p0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->updateAdapterItems()V

    .line 633
    return-void
.end method
