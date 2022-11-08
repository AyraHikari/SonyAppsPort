.class public Lcom/android/launcher3/folder/FolderGridOrganizer;
.super Ljava/lang/Object;
.source "FolderGridOrganizer.java"


# instance fields
.field private mCountX:I

.field private mCountY:I

.field private mDisplayingUpperLeftQuadrant:Z

.field private final mMaxCountX:I

.field private final mMaxCountY:I

.field private final mMaxItemsPerPage:I

.field private mNumItemsInFolder:I

.field private final mPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    .line 49
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    .line 50
    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    .line 51
    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    .line 52
    return-void
.end method

.method private calculateGridSize(I)V
    .locals 7
    .param p1, "count"    # I

    .line 93
    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    .line 94
    .local v0, "gridCountX":I
    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    .line 96
    .local v1, "gridCountY":I
    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    if-lt p1, v2, :cond_0

    .line 97
    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    .line 98
    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    .line 99
    const/4 v2, 0x1

    .local v2, "done":Z
    goto :goto_0

    .line 101
    .end local v2    # "done":Z
    :cond_0
    const/4 v2, 0x0

    .line 104
    .restart local v2    # "done":Z
    :goto_0
    if-nez v2, :cond_8

    .line 105
    move v3, v0

    .line 106
    .local v3, "oldCountX":I
    move v4, v1

    .line 107
    .local v4, "oldCountY":I
    mul-int v5, v0, v1

    const/4 v6, 0x0

    if-ge v5, p1, :cond_4

    .line 109
    if-le v0, v1, :cond_1

    iget v5, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    if-ne v1, v5, :cond_2

    :cond_1
    iget v5, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    if-ge v0, v5, :cond_2

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_2
    iget v5, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    if-ge v1, v5, :cond_3

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 115
    :cond_3
    :goto_1
    if-nez v1, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_4
    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, v0

    if-lt v5, p1, :cond_5

    if-lt v1, v0, :cond_5

    .line 117
    add-int/lit8 v5, v1, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 118
    :cond_5
    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, v1

    if-lt v5, p1, :cond_6

    .line 119
    add-int/lit8 v5, v0, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 121
    :cond_6
    :goto_2
    if-ne v0, v3, :cond_7

    if-ne v1, v4, :cond_7

    const/4 v6, 0x1

    :cond_7
    move v2, v6

    .line 122
    .end local v3    # "oldCountX":I
    .end local v4    # "oldCountY":I
    goto :goto_0

    .line 124
    :cond_8
    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    .line 125
    iput v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    .line 126
    return-void
.end method


# virtual methods
.method public getCountX()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    return v0
.end method

.method public getMaxItemsPerPage()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    return v0
.end method

.method public getPosForRank(I)Landroid/graphics/Point;
    .locals 3
    .param p1, "rank"    # I

    .line 147
    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    rem-int v0, p1, v0

    .line 148
    .local v0, "pagePos":I
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    rem-int v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 149
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    div-int v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 150
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    return-object v1
.end method

.method public isItemInPreview(I)Z
    .locals 1
    .param p1, "rank"    # I

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(II)Z

    move-result v0

    return v0
.end method

.method public isItemInPreview(II)Z
    .locals 5
    .param p1, "page"    # I
    .param p2, "rank"    # I

    .line 189
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 190
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    rem-int v3, p2, v2

    .line 191
    .local v3, "col":I
    div-int v2, p2, v2

    .line 192
    .local v2, "row":I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    if-ge v2, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:TT;>(I",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TR;>;"
        }
    .end annotation

    .line 157
    .local p2, "contents":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    mul-int/2addr v1, v2

    .line 159
    .local v1, "itemsPerPage":I
    mul-int v2, v1, p1

    .line 160
    .local v2, "start":I
    add-int v3, v2, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 162
    .local v3, "end":I
    move v4, v2

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "rank":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 163
    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 164
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 168
    goto :goto_1

    .line 162
    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    .end local v4    # "i":I
    .end local v5    # "rank":I
    :cond_2
    :goto_1
    return-object v0
.end method

.method public setContentSize(I)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .locals 1
    .param p1, "contentSize"    # I

    .line 65
    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mNumItemsInFolder:I

    if-eq p1, v0, :cond_1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->calculateGridSize(I)V

    .line 68
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    .line 69
    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mNumItemsInFolder:I

    .line 71
    :cond_1
    return-object p0
.end method

.method public setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 58
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setContentSize(I)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    return-object v0
.end method

.method public updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "rank"    # I

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getPosForRank(I)Landroid/graphics/Point;

    move-result-object v0

    .line 134
    .local v0, "pos":Landroid/graphics/Point;
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 135
    :cond_1
    :goto_0
    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 136
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 137
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 138
    const/4 v1, 0x1

    return v1
.end method
