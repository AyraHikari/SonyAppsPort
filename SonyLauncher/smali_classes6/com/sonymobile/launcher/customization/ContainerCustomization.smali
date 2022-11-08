.class public abstract Lcom/sonymobile/launcher/customization/ContainerCustomization;
.super Lcom/sonymobile/launcher/customization/CustomizationBase;
.source "ContainerCustomization.java"


# static fields
.field protected static final ACTIVITIES:Ljava/lang/String; = "activities"

.field protected static final CATEGORY:Ljava/lang/String; = "category"

.field protected static final FOLDER:Ljava/lang/String; = "folder"

.field protected static final FOLDERS:Ljava/lang/String; = "folders"

.field protected static final ICON_FILENAME:Ljava/lang/String; = "icon-filename"

.field protected static final ICON_PACKAGE_NAME:Ljava/lang/String; = "icon-package-name"

.field protected static final ICON_RESOURCE_NAME:Ljava/lang/String; = "icon-resource-name"

.field private static final MIN_FOLDER_ITEMS:I = 0x2

.field protected static final NAME:Ljava/lang/String; = "name"

.field protected static final PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field protected static final PANE:Ljava/lang/String; = "pane"

.field protected static final POSITION:Ljava/lang/String; = "position"

.field protected static final REMOVE_ACTIVITIES:Ljava/lang/String; = "remove-activities"

.field protected static final REMOVE_FOLDERS:Ljava/lang/String; = "remove-folders"

.field protected static final REMOVE_SHORTCUTS:Ljava/lang/String; = "remove-shortcuts"

.field protected static final SHORTCUTS:Ljava/lang/String; = "shortcuts"

.field public static final STK_PACKAGE:Ljava/lang/String; = "com.android.stk"

.field private static final TAG:Ljava/lang/String; = "ContainerCustomization"

.field protected static final URI:Ljava/lang/String; = "uri"

.field protected static final X:Ljava/lang/String; = "x"

.field protected static final Y:Ljava/lang/String; = "y"


# instance fields
.field private final mCategories:[Ljava/lang/String;

.field protected mCheckIfInstalled:Z

.field private final mFolderLocalizedNames:[Ljava/lang/String;

.field private final mFolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/launcher/data/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field protected final mMainUser:Landroid/os/UserHandle;

.field protected final mStorage:Lcom/sonymobile/launcher/storage/Storage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/launcher/storage/Storage;

    .line 100
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/customization/CustomizationBase;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mCheckIfInstalled:Z

    .line 101
    iput-object p2, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mStorage:Lcom/sonymobile/launcher/storage/Storage;

    .line 102
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 103
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mMainUser:Landroid/os/UserHandle;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$array;->home_folder_customization_categories:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mCategories:[Ljava/lang/String;

    .line 107
    sget v1, Lcom/android/launcher3/R$array;->home_folder_names:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderLocalizedNames:[Ljava/lang/String;

    .line 108
    return-void
.end method

.method private addIconItem(IIIILjava/lang/String;Lcom/sonymobile/launcher/data/Item;)Z
    .locals 8
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 297
    new-instance v7, Lcom/sonymobile/launcher/data/ItemLocation;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/launcher/data/ItemLocation;-><init>(IIIIII)V

    .line 299
    .local v0, "location":Lcom/sonymobile/launcher/data/ItemLocation;
    invoke-virtual {p6, v0}, Lcom/sonymobile/launcher/data/Item;->setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 301
    if-eqz p5, :cond_1

    .line 302
    const-wide/16 v1, -0x1

    invoke-virtual {p6, v1, v2}, Lcom/sonymobile/launcher/data/Item;->setContainerId(J)V

    .line 304
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/data/FolderItem;

    .line 305
    .local v1, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1, p6}, Lcom/sonymobile/launcher/data/FolderItem;->addItem(Lcom/sonymobile/launcher/data/Item;)V

    .line 311
    .end local v1    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    goto :goto_0

    .line 309
    .restart local v1    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 312
    .end local v1    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->getContainerId()J

    move-result-wide v1

    invoke-virtual {p6, v1, v2}, Lcom/sonymobile/launcher/data/Item;->setContainerId(J)V

    .line 313
    invoke-virtual {p0, p6}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addItem(Lcom/sonymobile/launcher/data/Item;)Z

    .line 315
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private isActivityEnabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 801
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mMainUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v2, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mMainUser:Landroid/os/UserHandle;

    .line 802
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 801
    :goto_0
    return v0

    .line 803
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ContainerCustomization"

    const-string v3, "Failed to isActivityEnabled"

    invoke-static {v2, v3, v1}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private removeFoldersWithTooFewItems()V
    .locals 7

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v0, "foldersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 385
    .local v2, "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/launcher/data/FolderItem;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/launcher/data/FolderItem;

    .line 386
    .local v3, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    invoke-virtual {v3}, Lcom/sonymobile/launcher/data/FolderItem;->getNumberOfItems()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 387
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v2    # "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/launcher/data/FolderItem;>;"
    .end local v3    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    :cond_0
    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 395
    .local v2, "folderId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeFolder(Ljava/lang/String;)Lcom/sonymobile/launcher/data/FolderItem;

    move-result-object v3

    .line 396
    .local v3, "removedFolder":Lcom/sonymobile/launcher/data/FolderItem;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sonymobile/launcher/data/FolderItem;->hasItems()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    invoke-virtual {v3}, Lcom/sonymobile/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/launcher/data/Item;

    .line 399
    .local v4, "item":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v3}, Lcom/sonymobile/launcher/data/FolderItem;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/launcher/data/Item;->setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 400
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->getContainerId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/launcher/data/Item;->setContainerId(J)V

    .line 401
    invoke-virtual {p0, v4}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addItem(Lcom/sonymobile/launcher/data/Item;)Z

    .line 403
    .end local v2    # "folderId":Ljava/lang/String;
    .end local v3    # "removedFolder":Lcom/sonymobile/launcher/data/FolderItem;
    .end local v4    # "item":Lcom/sonymobile/launcher/data/Item;
    :cond_2
    goto :goto_1

    .line 404
    :cond_3
    return-void
.end method

.method private removeItem(Lcom/sonymobile/launcher/data/Item;Ljava/lang/String;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;
    .param p2, "folderId"    # Ljava/lang/String;

    .line 437
    if-eqz p2, :cond_1

    .line 439
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/launcher/data/FolderItem;

    .line 440
    .local v0, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/data/FolderItem;->removeItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v1

    return v1

    .line 443
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 445
    .end local v0    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v0

    return v0
.end method

.method private replacePromisePlaceHolderItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 157
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/launcher/data/Item;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/data/Item;

    .line 159
    .local v1, "item":Lcom/sonymobile/launcher/data/Item;
    instance-of v2, v1, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;

    if-eqz v2, :cond_0

    .line 160
    new-instance v2, Lcom/sonymobile/launcher/data/PromiseItem;

    move-object v3, v1

    check-cast v3, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;

    invoke-direct {v2, v3}, Lcom/sonymobile/launcher/data/PromiseItem;-><init>(Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;)V

    .line 161
    .local v2, "promiseItem":Lcom/sonymobile/launcher/data/PromiseItem;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/launcher/data/PromiseItem;->setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 162
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/Item;->getContainerId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/launcher/data/PromiseItem;->setContainerId(J)V

    .line 163
    invoke-interface {v0, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 165
    .end local v1    # "item":Lcom/sonymobile/launcher/data/Item;
    .end local v2    # "promiseItem":Lcom/sonymobile/launcher/data/PromiseItem;
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method private replacePromisePlaceHolderItemsInFolders()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/data/FolderItem;

    .line 149
    .local v1, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/FolderItem;->hasItems()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->replacePromisePlaceHolderItems(Ljava/util/List;)V

    .line 152
    .end local v1    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    :cond_0
    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method protected addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "packageName"    # Ljava/lang/String;

    .line 292
    new-instance v6, Lcom/sonymobile/launcher/data/ActivityItem;

    invoke-direct {v6, p7, p6}, Lcom/sonymobile/launcher/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v6, "item":Lcom/sonymobile/launcher/data/ActivityItem;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addIconItem(IIIILjava/lang/String;Lcom/sonymobile/launcher/data/Item;)Z

    move-result v0

    return v0
.end method

.method protected addFolder(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "category"    # Ljava/lang/String;

    .line 481
    new-instance v7, Lcom/sonymobile/launcher/data/ItemLocation;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/launcher/data/ItemLocation;-><init>(IIIIII)V

    .line 482
    .local v0, "location":Lcom/sonymobile/launcher/data/ItemLocation;
    new-instance v1, Lcom/sonymobile/launcher/data/FolderItem;

    invoke-direct {v1, p6, p5}, Lcom/sonymobile/launcher/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v1, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    invoke-virtual {v1, v0}, Lcom/sonymobile/launcher/data/FolderItem;->setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 484
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->getContainerId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/launcher/data/FolderItem;->setContainerId(J)V

    .line 487
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    invoke-interface {v2, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p0, v1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addItem(Lcom/sonymobile/launcher/data/Item;)Z

    .line 492
    const/4 v2, 0x1

    return v2
.end method

.method protected addItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 7
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "itemAdded":Z
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->isWithinBounds(Lcom/sonymobile/launcher/data/ItemLocation;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ContainerCustomization"

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeOverlappingItems(Lcom/sonymobile/launcher/data/Item;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->onAddItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v0

    goto :goto_0

    .line 234
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item out of bounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    :goto_0
    if-nez v0, :cond_1

    .line 238
    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addItem failed for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    :cond_1
    return v0
.end method

.method protected addPromiseIconActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "packageName"    # Ljava/lang/String;

    .line 334
    new-instance v6, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;

    invoke-direct {v6, p7, p6}, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v6, "item":Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addIconItem(IIIILjava/lang/String;Lcom/sonymobile/launcher/data/Item;)Z

    move-result v0

    return v0
.end method

.method protected addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "iconPackageName"    # Ljava/lang/String;
    .param p4, "iconResourceName"    # Ljava/lang/String;
    .param p5, "iconFilename"    # Ljava/lang/String;
    .param p6, "page"    # I
    .param p7, "position"    # I
    .param p8, "x"    # I
    .param p9, "y"    # I
    .param p10, "folderId"    # Ljava/lang/String;

    .line 550
    move-object v7, p0

    iget-object v0, v7, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mContext:Landroid/content/Context;

    .line 551
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->createShortcutItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/data/ShortcutItem;

    move-result-object v8

    .line 553
    .local v8, "item":Lcom/sonymobile/launcher/data/ShortcutItem;
    if-eqz v8, :cond_0

    .line 554
    move-object v0, p0

    move v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p10

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addIconItem(IIIILjava/lang/String;Lcom/sonymobile/launcher/data/Item;)Z

    move-result v0

    return v0

    .line 561
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public applyCustomization()Z
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->parseAutoInstallGooglePlayConfig()V

    .line 343
    invoke-super {p0}, Lcom/sonymobile/launcher/customization/CustomizationBase;->applyCustomization()Z

    move-result v0

    .line 345
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeFoldersWithTooFewItems()V

    .line 347
    return v0
.end method

.method protected createAutoInstallGooglePlayConfigParser(Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
    .locals 2
    .param p1, "parseListener"    # Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    .line 379
    new-instance v0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    iget-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)V

    return-object v0
.end method

.method protected abstract getContainerId()J
.end method

.method protected abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation
.end method

.method protected final handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 24
    .param p1, "groupType"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 617
    .local p3, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->supportsGroup(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 621
    return v1

    .line 624
    :cond_0
    const-string v0, "container"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->supportsGooglePlayContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    return v1

    .line 633
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "activities"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "remove-shortcuts"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "folders"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "remove-activities"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "remove-folders"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "shortcuts"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v3, "id"

    const-string v4, "icon-resource-name"

    const-string v5, "icon-package-name"

    const-string v6, "uri"

    const-string v7, "package-name"

    const-string v8, "y"

    const-string v9, "x"

    const-string v10, "position"

    const-string v15, "pane"

    const-string v14, "folder"

    const-string v2, "name"

    packed-switch v0, :pswitch_data_0

    .line 794
    invoke-virtual {v11, v12, v13}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->handleKey(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0

    .line 778
    :pswitch_0
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 779
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 781
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 782
    move-object v1, v0

    .line 789
    :cond_3
    invoke-virtual {v11, v1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeFolder(Ljava/lang/String;)Lcom/sonymobile/launcher/data/FolderItem;

    .line 791
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    goto/16 :goto_8

    .line 752
    :pswitch_1
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    .restart local v0    # "name":Ljava/lang/String;
    const-string v2, "category"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 754
    .local v14, "category":Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 755
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 756
    .local v15, "pane":I
    nop

    .line 757
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 758
    .local v10, "position":I
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 759
    .local v9, "x":I
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 761
    .local v8, "y":I
    if-nez v0, :cond_4

    .line 762
    iget-object v1, v11, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mCategories:[Ljava/lang/String;

    iget-object v3, v11, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderLocalizedNames:[Ljava/lang/String;

    invoke-static {v1, v3, v14}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->getFolderName([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_2

    .line 761
    :cond_4
    move-object/from16 v16, v0

    .line 764
    .end local v0    # "name":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_5

    .line 765
    move-object/from16 v2, v16

    move-object/from16 v17, v2

    goto :goto_3

    .line 764
    :cond_5
    move-object/from16 v17, v2

    .line 773
    .end local v2    # "id":Ljava/lang/String;
    .local v17, "id":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move v1, v15

    move v2, v10

    move v3, v9

    move v4, v8

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addFolder(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 775
    .end local v8    # "y":I
    .end local v9    # "x":I
    .end local v10    # "position":I
    .end local v14    # "category":Ljava/lang/String;
    .end local v15    # "pane":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "id":Ljava/lang/String;
    goto/16 :goto_8

    .line 735
    :pswitch_2
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 736
    .local v6, "uri":Ljava/lang/String;
    iget-object v0, v11, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/sonymobile/launcher/util/HomeUtils;->getShortcutName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 737
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 738
    .local v8, "iconPackageName":Ljava/lang/String;
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 739
    .local v9, "iconResourceName":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 747
    .local v10, "folderId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v3, v10

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 749
    .end local v6    # "uri":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "iconPackageName":Ljava/lang/String;
    .end local v9    # "iconResourceName":Ljava/lang/String;
    .end local v10    # "folderId":Ljava/lang/String;
    goto/16 :goto_8

    .line 711
    :pswitch_3
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 712
    .local v7, "uri":Ljava/lang/String;
    iget-object v0, v11, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2, v7}, Lcom/sonymobile/launcher/util/HomeUtils;->getShortcutName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 713
    .local v17, "name":Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 714
    .local v18, "iconPackageName":Ljava/lang/String;
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 715
    .local v19, "iconResourceName":Ljava/lang/String;
    const-string v0, "icon-filename"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 716
    .local v20, "iconFilename":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 717
    .local v14, "folderId":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 718
    .restart local v15    # "pane":I
    nop

    .line 719
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 720
    .local v16, "position":I
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v21

    .line 721
    .local v21, "x":I
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v22

    .line 730
    .local v22, "y":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v7

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move v6, v15

    move-object/from16 v23, v7

    .end local v7    # "uri":Ljava/lang/String;
    .local v23, "uri":Ljava/lang/String;
    move/from16 v7, v16

    move/from16 v8, v21

    move/from16 v9, v22

    move-object v10, v14

    invoke-virtual/range {v0 .. v10}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Z

    .line 732
    .end local v14    # "folderId":Ljava/lang/String;
    .end local v15    # "pane":I
    .end local v16    # "position":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "iconPackageName":Ljava/lang/String;
    .end local v19    # "iconResourceName":Ljava/lang/String;
    .end local v20    # "iconFilename":Ljava/lang/String;
    .end local v21    # "x":I
    .end local v22    # "y":I
    .end local v23    # "uri":Ljava/lang/String;
    goto/16 :goto_8

    .line 695
    :pswitch_4
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 704
    .local v2, "folderId":Ljava/lang/String;
    invoke-virtual {v11, v1, v0, v2}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeActivityItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 705
    invoke-virtual {v11, v1, v0, v2}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removePromiseItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 708
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "folderId":Ljava/lang/String;
    :cond_6
    goto/16 :goto_8

    .line 635
    :pswitch_5
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 636
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 637
    .local v6, "name":Ljava/lang/String;
    if-eqz v7, :cond_e

    if-nez v6, :cond_7

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    const/4 v0, 0x1

    goto/16 :goto_9

    .line 641
    :cond_7
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 642
    .restart local v14    # "folderId":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 643
    .restart local v15    # "pane":I
    nop

    .line 644
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 645
    .local v10, "position":I
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 646
    .local v9, "x":I
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 648
    .local v8, "y":I
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 649
    .local v5, "componentName":Landroid/content/ComponentName;
    iget-boolean v0, v11, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mCheckIfInstalled:Z

    if-eqz v0, :cond_d

    const-string v0, "com.android.stk"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    goto/16 :goto_6

    .line 657
    :cond_8
    invoke-direct {v11, v5}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->isActivityEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 659
    iget-object v0, v11, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v1, v11, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mMainUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/content/pm/LauncherActivityInfo;

    .line 660
    .local v16, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 667
    move-object/from16 v0, p0

    move v1, v15

    move v2, v10

    move v3, v9

    move v4, v8

    move-object/from16 v17, v5

    .end local v5    # "componentName":Landroid/content/ComponentName;
    .local v17, "componentName":Landroid/content/ComponentName;
    move-object v5, v14

    move-object/from16 v18, v6

    .end local v6    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v19, v7

    .end local v7    # "packageName":Ljava/lang/String;
    .local v19, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 668
    goto :goto_5

    .line 660
    .end local v17    # "componentName":Landroid/content/ComponentName;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 670
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v16    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .restart local v17    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "packageName":Ljava/lang/String;
    goto :goto_4

    .line 659
    .end local v17    # "componentName":Landroid/content/ComponentName;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 670
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v17    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "packageName":Ljava/lang/String;
    :goto_5
    goto :goto_7

    .line 672
    .end local v17    # "componentName":Landroid/content/ComponentName;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_b
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v17    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    .line 673
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-direct {v0, v7, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object v6, v0

    .line 674
    .local v6, "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    sget-object v0, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, v11, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mContext:Landroid/content/Context;

    .line 675
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v0

    .line 676
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 677
    .local v16, "installSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v16, :cond_c

    .line 685
    move-object/from16 v0, p0

    move v1, v15

    move v2, v10

    move v3, v9

    move v4, v8

    move-object v5, v14

    move-object/from16 v19, v6

    .end local v6    # "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v19, "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    move-object/from16 v6, v18

    move-object/from16 v20, v7

    .end local v7    # "packageName":Ljava/lang/String;
    .local v20, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addPromiseIconActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 677
    .end local v19    # "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v20    # "packageName":Ljava/lang/String;
    .restart local v6    # "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_c
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v19    # "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v20    # "packageName":Ljava/lang/String;
    goto :goto_7

    .line 649
    .end local v16    # "installSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v17    # "componentName":Landroid/content/ComponentName;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v20    # "packageName":Ljava/lang/String;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .local v6, "name":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    .line 656
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v17    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v20    # "packageName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    move v1, v15

    move v2, v10

    move v3, v9

    move v4, v8

    move-object v5, v14

    move-object/from16 v6, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 692
    .end local v8    # "y":I
    .end local v9    # "x":I
    .end local v10    # "position":I
    .end local v14    # "folderId":Ljava/lang/String;
    .end local v15    # "pane":I
    .end local v17    # "componentName":Landroid/content/ComponentName;
    .end local v18    # "name":Ljava/lang/String;
    .end local v20    # "packageName":Ljava/lang/String;
    :goto_7
    nop

    .line 796
    :goto_8
    const/4 v0, 0x1

    return v0

    .line 637
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_e
    move-object/from16 v18, v6

    move-object/from16 v20, v7

    const/4 v0, 0x1

    .line 638
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v20    # "packageName":Ljava/lang/String;
    :goto_9
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78da5313 -> :sswitch_5
        -0x49087684 -> :sswitch_4
        -0x446e0b2a -> :sswitch_3
        -0x28b98e3b -> :sswitch_2
        0x3eefb2e4 -> :sswitch_1
        0x7a1b3bed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract isWithinBounds(Lcom/sonymobile/launcher/data/ItemLocation;)Z
.end method

.method protected abstract onAddItem(Lcom/sonymobile/launcher/data/Item;)Z
.end method

.method protected abstract onRemoveItem(Lcom/sonymobile/launcher/data/Item;)Z
.end method

.method protected parseAutoInstallGooglePlayConfig()V
    .locals 1

    .line 352
    new-instance v0, Lcom/sonymobile/launcher/customization/ContainerCustomization$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization$1;-><init>(Lcom/sonymobile/launcher/customization/ContainerCustomization;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->createAutoInstallGooglePlayConfigParser(Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    move-result-object v0

    .line 373
    .local v0, "autoInstallGPConfigParser":Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
    invoke-virtual {v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parse()V

    .line 374
    return-void
.end method

.method protected removeActivityItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 458
    new-instance v0, Lcom/sonymobile/launcher/data/ActivityItem;

    invoke-direct {v0, p2, p1}, Lcom/sonymobile/launcher/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .local v0, "item":Lcom/sonymobile/launcher/data/ActivityItem;
    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v1

    .line 460
    .local v1, "itemRemoved":Z
    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeItemFromFolders(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 461
    return v1
.end method

.method protected removeActivityItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "folderId"    # Ljava/lang/String;

    .line 417
    new-instance v0, Lcom/sonymobile/launcher/data/ActivityItem;

    invoke-direct {v0, p2, p1}, Lcom/sonymobile/launcher/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .local v0, "activityItem":Lcom/sonymobile/launcher/data/ActivityItem;
    invoke-direct {p0, v0, p3}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeItem(Lcom/sonymobile/launcher/data/Item;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected removeFolder(Ljava/lang/String;)Lcom/sonymobile/launcher/data/FolderItem;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "folderToRemove":Lcom/sonymobile/launcher/data/FolderItem;
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 511
    .local v2, "item":Lcom/sonymobile/launcher/data/Item;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sonymobile/launcher/data/FolderItem;

    if-eqz v3, :cond_0

    .line 512
    move-object v3, v2

    check-cast v3, Lcom/sonymobile/launcher/data/FolderItem;

    .line 513
    .local v3, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    invoke-virtual {v3}, Lcom/sonymobile/launcher/data/FolderItem;->getCustId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    move-object v0, v3

    .line 515
    goto :goto_1

    .line 518
    .end local v2    # "item":Lcom/sonymobile/launcher/data/Item;
    .end local v3    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    :cond_0
    goto :goto_0

    .line 520
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    return-object v0

    .line 528
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected removeItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 255
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->onRemoveItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v0

    return v0
.end method

.method protected removeItemFromFolders(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/FolderItem;

    .line 268
    .local v2, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    invoke-virtual {v2, p1}, Lcom/sonymobile/launcher/data/FolderItem;->removeItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 271
    .end local v2    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    :cond_0
    goto :goto_0

    .line 273
    :cond_1
    return v0
.end method

.method protected abstract removeOverlappingItems(Lcom/sonymobile/launcher/data/Item;)V
.end method

.method protected removePromiseItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "folderId"    # Ljava/lang/String;

    .line 432
    new-instance v0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;

    invoke-direct {v0, p2, p1}, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .local v0, "promiseItem":Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;
    invoke-direct {p0, v0, p3}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeItem(Lcom/sonymobile/launcher/data/Item;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected removeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "folderId"    # Ljava/lang/String;
    .param p4, "iconPackageName"    # Ljava/lang/String;
    .param p5, "iconResourceName"    # Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->getContainerId()J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->createShortcutItem(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/data/ShortcutItem;

    move-result-object v0

    .line 581
    .local v0, "tempShortcut":Lcom/sonymobile/launcher/data/ShortcutItem;
    if-eqz v0, :cond_2

    .line 582
    if-eqz p3, :cond_1

    .line 584
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mFolderMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/data/FolderItem;

    .line 585
    .local v1, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/FolderItem;->hasItems()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v2

    .line 589
    .local v2, "itemsInsideFolder":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 590
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 592
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/launcher/data/ShortcutItem;

    .line 593
    .local v4, "shortcut":Lcom/sonymobile/launcher/data/ShortcutItem;
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 596
    .end local v1    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    .end local v2    # "itemsInsideFolder":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .end local v3    # "position":I
    .end local v4    # "shortcut":Lcom/sonymobile/launcher/data/ShortcutItem;
    :cond_0
    goto :goto_0

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->getItems()Ljava/util/List;

    move-result-object v1

    .line 599
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 600
    .local v2, "position":I
    if-ltz v2, :cond_2

    .line 602
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/launcher/data/ShortcutItem;

    .line 603
    .local v3, "listItem":Lcom/sonymobile/launcher/data/ShortcutItem;
    invoke-virtual {p0, v3}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->removeItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v4

    return v4

    .line 612
    .end local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .end local v2    # "position":I
    .end local v3    # "listItem":Lcom/sonymobile/launcher/data/ShortcutItem;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCheckIfInstalled(Z)V
    .locals 0
    .param p1, "checkIfInstalled"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization;->mCheckIfInstalled:Z

    .line 120
    return-void
.end method

.method protected abstract store(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public final storeData()V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->getItems()Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    if-nez v0, :cond_0

    .line 131
    return-void

    .line 135
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->replacePromisePlaceHolderItems(Ljava/util/List;)V

    .line 136
    invoke-direct {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->replacePromisePlaceHolderItemsInFolders()V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 139
    .local v2, "item":Lcom/sonymobile/launcher/data/Item;
    instance-of v3, v2, Lcom/sonymobile/launcher/data/FolderItem;

    if-eqz v3, :cond_1

    .line 140
    move-object v3, v2

    check-cast v3, Lcom/sonymobile/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sonymobile/launcher/data/FolderItem;->updateItemPositions()V

    .line 142
    .end local v2    # "item":Lcom/sonymobile/launcher/data/Item;
    :cond_1
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->store(Ljava/util/List;)V

    .line 145
    return-void
.end method
