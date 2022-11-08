.class public Lcom/android/launcher3/allapps/AllAppsStore;
.super Ljava/lang/Object;
.source "AllAppsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
    }
.end annotation


# static fields
.field public static final DEFER_UPDATES_NEXT_DRAW:I = 0x1

.field public static final DEFER_UPDATES_TEST:I = 0x2


# instance fields
.field private mApps:[Lcom/android/launcher3/model/data/AppInfo;

.field private mDeferUpdatesFlags:I

.field private final mIconContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mModelFlags:I

.field private mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

.field private mTempKey:Lcom/android/launcher3/util/PackageUserKey;

.field private final mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatePending:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 63
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

    .line 65
    sget-object v0, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    .line 72
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    return-void
.end method

.method static synthetic lambda$updateProgressBar$1(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/BubbleTextView;)V
    .locals 3
    .param p0, "app"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "child"    # Lcom/android/launcher3/BubbleTextView;

    .line 191
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 192
    iget v0, p0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    .line 200
    .local v0, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 201
    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/AppInfo;->getProgressLevel()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/model/data/AppInfo;->status:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(II)V

    .line 203
    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 206
    .end local v0    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method private notifyUpdate()V
    .locals 2

    .line 142
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    .line 144
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;

    .line 147
    .local v1, "listener":Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
    invoke-interface {v1}, Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;->onAppsUpdated()V

    .line 148
    .end local v1    # "listener":Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method private updateAllIcons(Ljava/util/function/Consumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/BubbleTextView;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 211
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 212
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 214
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 215
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 216
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_0

    .line 217
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 220
    :cond_0
    nop

    .line 221
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/BaseDraggingActivity;

    .line 222
    .local v5, "baseDraggingActivity":Lcom/android/launcher3/BaseDraggingActivity;
    instance-of v6, v4, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v6, :cond_2

    .line 223
    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v6

    .line 224
    .local v6, "previewItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 226
    .local v7, "previewItemsCount":I
    new-instance v8, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v8}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    .line 227
    .local v8, "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    new-instance v9, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-direct {v9}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;-><init>()V

    .line 229
    .local v9, "sonyFolderBadgeInfo":Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_2
    if-ge v10, v7, :cond_1

    .line 230
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/BubbleTextView;

    .line 231
    .local v11, "view":Lcom/android/launcher3/BubbleTextView;
    invoke-interface {p1, v11}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 232
    nop

    .line 233
    invoke-virtual {v11}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5, v12}, Lcom/android/launcher3/BaseDraggingActivity;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v12

    .line 232
    invoke-virtual {v8, v12}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 234
    nop

    .line 235
    invoke-virtual {v11}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5, v12}, Lcom/android/launcher3/BaseDraggingActivity;->getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    move-result-object v12

    .line 234
    invoke-virtual {v9, v12}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->addSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyBadgeInfo;)V

    .line 229
    .end local v11    # "view":Lcom/android/launcher3/BubbleTextView;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 237
    .end local v10    # "k":I
    :cond_1
    move-object v10, v4

    check-cast v10, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v10, v8}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    .line 238
    move-object v10, v4

    check-cast v10, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v10, v9}, Lcom/android/launcher3/folder/FolderIcon;->setSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;)V

    .line 240
    .end local v6    # "previewItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v7    # "previewItemsCount":I
    .end local v8    # "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    .end local v9    # "sonyFolderBadgeInfo":Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;
    :cond_2
    const/4 v6, 0x0

    .line 241
    .local v6, "openFolder":Lcom/android/launcher3/folder/Folder;
    instance-of v7, v5, Lcom/android/launcher3/Launcher;

    if-eqz v7, :cond_3

    .line 242
    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v6

    .line 244
    :cond_3
    if-eqz v6, :cond_4

    .line 245
    invoke-virtual {v6}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v7

    .line 246
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 247
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    .line 248
    .local v9, "view":Lcom/android/launcher3/BubbleTextView;
    invoke-interface {p1, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 246
    .end local v9    # "view":Lcom/android/launcher3/BubbleTextView;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 214
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "baseDraggingActivity":Lcom/android/launcher3/BaseDraggingActivity;
    .end local v6    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .end local v7    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8    # "k":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 210
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "childCount":I
    .end local v3    # "j":I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 253
    .end local v0    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public disableDeferUpdates(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 113
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    .line 114
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    .line 118
    :cond_0
    return-void
.end method

.method public disableDeferUpdatesSilently(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 121
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    .line 122
    return-void
.end method

.method public enableDeferUpdates(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 109
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    .line 110
    return-void
.end method

.method public getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 3
    .param p1, "key"    # Lcom/android/launcher3/util/ComponentKey;

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

    sget-object v2, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 105
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method public getApps()[Lcom/android/launcher3/model/data/AppInfo;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    return-object v0
.end method

.method public getDeferUpdatesFlags()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    return v0
.end method

.method public hasModelFlag(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 93
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mModelFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$updateNotificationDots$0$com-android-launcher3-allapps-AllAppsStore(Ljava/util/function/Predicate;Lcom/android/launcher3/BubbleTextView;)V
    .locals 2
    .param p1, "updatedDots"    # Ljava/util/function/Predicate;
    .param p2, "child"    # Lcom/android/launcher3/BubbleTextView;

    .line 171
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 173
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 177
    .end local v0    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    return-void
.end method

.method public registerIconContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    return-void
.end method

.method public removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public setApps([Lcom/android/launcher3/model/data/AppInfo;I)V
    .locals 0
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I

    .line 82
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    .line 83
    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mModelFlags:I

    .line 84
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    .line 85
    return-void
.end method

.method public unregisterIconContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public updateFolderIcons()V
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 130
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 131
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 132
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 133
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v5, :cond_0

    .line 134
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/folder/FolderIcon;

    .line 135
    .local v5, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderIcon;->resetFolder()V

    .line 131
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/function/Predicate;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Ljava/util/function/Consumer;)V

    .line 178
    return-void
.end method

.method public updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 190
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Ljava/util/function/Consumer;)V

    .line 207
    return-void
.end method
