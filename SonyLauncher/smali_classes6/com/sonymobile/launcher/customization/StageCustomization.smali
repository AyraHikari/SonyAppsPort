.class public Lcom/sonymobile/launcher/customization/StageCustomization;
.super Lcom/sonymobile/launcher/customization/ContainerCustomization;
.source "StageCustomization.java"


# static fields
.field private static final SUPPORTED_TAGS:[Ljava/lang/String;


# instance fields
.field private final mSize:I

.field protected final mSlotList:Lcom/sonymobile/launcher/util/LimitedSlotList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/launcher/util/LimitedSlotList<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    const-string v0, "activities"

    const-string v1, "remove-activities"

    const-string v2, "shortcuts"

    const-string v3, "remove-shortcuts"

    const-string v4, "folders"

    const-string v5, "remove-folders"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/customization/StageCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/launcher/storage/Storage;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/launcher/customization/ContainerCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    iput v0, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSize:I

    .line 51
    new-instance v1, Lcom/sonymobile/launcher/util/LimitedSlotList;

    invoke-direct {v1, v0}, Lcom/sonymobile/launcher/util/LimitedSlotList;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSlotList:Lcom/sonymobile/launcher/util/LimitedSlotList;

    .line 52
    return-void
.end method


# virtual methods
.method protected createAutoInstallGooglePlayConfigParser(Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
    .locals 1
    .param p1, "parseListener"    # Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    .line 64
    nop

    .line 65
    invoke-super {p0, p1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->createAutoInstallGooglePlayConfigParser(Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    move-result-object v0

    .line 66
    .local v0, "autoInstallGooglePlayConfigParser":Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
    invoke-virtual {v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->enablePositionRestrictions()V

    .line 67
    return-object v0
.end method

.method protected getContainerId()J
    .locals 2

    .line 123
    const-wide/16 v0, -0x65

    return-wide v0
.end method

.method protected getCustomSettingsResource()Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 87
    sget v0, Lcom/android/launcher3/R$xml;->custom_settings_stage:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/StageCustomization;->getXmlResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultResource()Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 82
    sget v0, Lcom/android/launcher3/R$xml;->default_settings_stage:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/StageCustomization;->getXmlResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSlotList:Lcom/sonymobile/launcher/util/LimitedSlotList;

    invoke-virtual {v0}, Lcom/sonymobile/launcher/util/LimitedSlotList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 129
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/launcher/data/Item;>;"
    const/4 v2, 0x0

    .line 131
    .local v2, "slotIndex":I
    const/4 v3, 0x0

    .line 133
    .local v3, "position":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 134
    iget-object v5, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSlotList:Lcom/sonymobile/launcher/util/LimitedSlotList;

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "slotIndex":I
    .local v6, "slotIndex":I
    invoke-virtual {v5, v2}, Lcom/sonymobile/launcher/util/LimitedSlotList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 135
    .local v2, "item":Lcom/sonymobile/launcher/data/Item;
    if-eqz v2, :cond_0

    .line 136
    new-instance v5, Lcom/sonymobile/launcher/data/ItemLocation;

    const/4 v7, -0x1

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "position":I
    .local v8, "position":I
    invoke-direct {v5, v7, v3}, Lcom/sonymobile/launcher/data/ItemLocation;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/sonymobile/launcher/data/Item;->setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v8

    .line 133
    .end local v2    # "item":Lcom/sonymobile/launcher/data/Item;
    .end local v8    # "position":I
    .restart local v3    # "position":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    .line 141
    .end local v4    # "index":I
    .end local v6    # "slotIndex":I
    .local v2, "slotIndex":I
    :cond_1
    return-object v1
.end method

.method public getSize()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSize:I

    return v0
.end method

.method protected isWithinBounds(Lcom/sonymobile/launcher/data/ItemLocation;)Z
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/launcher/data/ItemLocation;

    .line 101
    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    iget v1, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSize:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAddItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 107
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    .line 109
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSlotList:Lcom/sonymobile/launcher/util/LimitedSlotList;

    invoke-virtual {v1, v0, p1}, Lcom/sonymobile/launcher/util/LimitedSlotList;->set(ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSlotList:Lcom/sonymobile/launcher/util/LimitedSlotList;

    invoke-virtual {v1, p1}, Lcom/sonymobile/launcher/util/LimitedSlotList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected onRemoveItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 118
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSlotList:Lcom/sonymobile/launcher/util/LimitedSlotList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/util/LimitedSlotList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected removeOverlappingItems(Lcom/sonymobile/launcher/data/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 92
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    .line 94
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mSlotList:Lcom/sonymobile/launcher/util/LimitedSlotList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/launcher/util/LimitedSlotList;->remove(I)Ljava/lang/Object;

    .line 97
    :cond_0
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

    .line 57
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/StageCustomization;->mStorage:Lcom/sonymobile/launcher/storage/Storage;

    invoke-interface {v0, p1}, Lcom/sonymobile/launcher/storage/Storage;->insertItems(Ljava/util/List;)V

    .line 58
    return-void
.end method

.method protected supportsGooglePlayContainer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "containerId"    # Ljava/lang/String;

    .line 77
    if-eqz p1, :cond_1

    const-string v0, "stage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method protected supportsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/sonymobile/launcher/customization/StageCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sonymobile/launcher/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
