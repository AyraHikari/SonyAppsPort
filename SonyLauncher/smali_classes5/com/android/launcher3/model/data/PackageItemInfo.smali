.class public Lcom/android/launcher3/model/data/PackageItemInfo;
.super Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.source "PackageItemInfo.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final widgetCategory:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/PackageItemInfo;)V
    .locals 1
    .param p1, "copy"    # Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 51
    iget-object v0, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 52
    iget v0, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    iput v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    .line 53
    iget-object v0, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->itemType:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetCategory"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 43
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    .line 46
    iput-object p3, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->itemType:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 40
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/PackageItemInfo;->clone()Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 1

    .line 64
    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/PackageItemInfo;->clone()Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 72
    .local v2, "that":Lcom/android/launcher3/model/data/PackageItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, v2, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 73
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    iget v4, v2, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 72
    :goto_0
    return v0

    .line 70
    .end local v2    # "that":Lcom/android/launcher3/model/data/PackageItemInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
