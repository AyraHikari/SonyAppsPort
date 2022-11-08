.class public Lcom/sonymobile/launcher/customization/AppTrayCustomization;
.super Lcom/sonymobile/launcher/customization/ContainerCustomization;
.source "AppTrayCustomization.java"


# static fields
.field private static final APP_TRAY:Ljava/lang/String; = "app-tray"

.field private static final SUPPORTED_TAGS:[Ljava/lang/String;


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    const-string v0, "activities"

    const-string v1, "app-tray"

    const-string v2, "folders"

    const-string v3, "remove-folders"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/launcher/storage/Storage;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/launcher/customization/ContainerCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mItems:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    .line 45
    return-void
.end method

.method private storeSortOrder(Lcom/sonymobile/launcher/allapps/SortMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonymobile/launcher/allapps/SortMode;

    .line 167
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xperia_sort_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    return-void
.end method


# virtual methods
.method protected addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "packageName"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p6, p7}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->removeActivityItem(Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-super/range {v0 .. v7}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

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

    .line 141
    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-super/range {v0 .. v7}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addFolder(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected addPromiseIconActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "packageName"    # Ljava/lang/String;

    .line 134
    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-super/range {v0 .. v7}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->addPromiseIconActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getContainerId()J
    .locals 2

    .line 110
    const-wide/16 v0, -0x66

    return-wide v0
.end method

.method protected getCustomSettingsResource()Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 120
    sget v0, Lcom/android/launcher3/R$xml;->custom_settings_apptray:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->getXmlResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultResource()Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 115
    sget v0, Lcom/android/launcher3/R$xml;->default_settings_apptray:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->getXmlResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "position":I
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 149
    .local v2, "item":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "position":I
    .local v4, "position":I
    iput v0, v3, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    .line 150
    .end local v2    # "item":Lcom/sonymobile/launcher/data/Item;
    move v0, v4

    goto :goto_0

    .line 152
    .end local v4    # "position":I
    .restart local v0    # "position":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mItems:Ljava/util/List;

    return-object v1
.end method

.method protected handleKey(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 3
    .param p1, "groupType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 59
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "app-tray"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "sorting-order"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "sortingOrder":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    invoke-static {v0}, Lcom/sonymobile/launcher/allapps/SortMode;->fromString(Ljava/lang/String;)Lcom/sonymobile/launcher/allapps/SortMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    iput-object v2, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    .line 67
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 71
    .end local v0    # "sortingOrder":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isWithinBounds(Lcom/sonymobile/launcher/data/ItemLocation;)Z
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/launcher/data/ItemLocation;

    .line 81
    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    if-gez v0, :cond_1

    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAddItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 86
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v0

    .line 88
    .local v0, "location":Lcom/sonymobile/launcher/data/ItemLocation;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mItems:Ljava/util/List;

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mItems:Ljava/util/List;

    iget v2, v0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onRemoveItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "itemsRemoved":Z
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return v0
.end method

.method protected removeOverlappingItems(Lcom/sonymobile/launcher/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 77
    return-void
.end method

.method protected store(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mStorage:Lcom/sonymobile/launcher/storage/Storage;

    invoke-interface {v0, p1}, Lcom/sonymobile/launcher/storage/Storage;->insertItems(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->storeSortOrder(Lcom/sonymobile/launcher/allapps/SortMode;)V

    .line 159
    return-void
.end method

.method protected supportsGooglePlayContainer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "containerId"    # Ljava/lang/String;

    .line 54
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected supportsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sonymobile/launcher/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
