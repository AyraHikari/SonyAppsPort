.class public final Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;
.super Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
.source "WidgetsListSearchHeaderEntry.java"

# interfaces
.implements Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Header;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Header<",
        "Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIsWidgetListShown:Z


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

    .line 31
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;Z)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "pkgItem"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "titleSectionName"    # Ljava/lang/String;
    .param p4, "isWidgetListShown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;Z)V"
        }
    .end annotation

    .line 36
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    .line 37
    iput-boolean p4, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mIsWidgetListShown:Z

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 59
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    .line 61
    .local v0, "otherEntry":Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mWidgets:Ljava/util/List;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/data/PackageItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mTitleSectionName:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mIsWidgetListShown:Z

    iget-boolean v3, v0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mIsWidgetListShown:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 61
    :goto_0
    return v1
.end method

.method public getRank()I
    .locals 1

    .line 54
    const/4 v0, 0x3

    return v0
.end method

.method public isWidgetListShown()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mIsWidgetListShown:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchHeader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    move-result-object v0

    return-object v0
.end method

.method public withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;
    .locals 5

    .line 69
    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mIsWidgetListShown:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mWidgets:Ljava/util/List;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0
.end method
