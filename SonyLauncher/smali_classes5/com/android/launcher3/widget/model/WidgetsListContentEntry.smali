.class public final Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
.super Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
.source "WidgetsListContentEntry.java"


# instance fields
.field private final mMaxSpanSizeInCells:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "pkgItem"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "titleSectionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .param p1, "pkgItem"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "titleSectionName"    # Ljava/lang/String;
    .param p4, "maxSpanSizeInCells"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;I)V"
        }
    .end annotation

    .line 54
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    .line 55
    iput p4, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mMaxSpanSizeInCells:I

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 96
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    .line 98
    .local v0, "otherEntry":Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/data/PackageItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mTitleSectionName:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mMaxSpanSizeInCells:I

    iget v3, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mMaxSpanSizeInCells:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 98
    :goto_0
    return v1
.end method

.method public getMaxSpanSizeInCells()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mMaxSpanSizeInCells:I

    return v0
.end method

.method public getRank()I
    .locals 1

    .line 67
    const/4 v0, 0x4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxSpanSizeInCells: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mMaxSpanSizeInCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMaxSpanSize(I)Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    .locals 4
    .param p1, "maxSpanSizeInCells"    # I

    .line 78
    iget v0, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mMaxSpanSizeInCells:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 79
    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;I)V

    return-object v0
.end method
