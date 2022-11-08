.class public Lcom/sonymobile/launcher/data/ItemLocation;
.super Ljava/lang/Object;
.source "ItemLocation.java"


# static fields
.field public static final NO_POSITION:I = -0x1


# instance fields
.field public final grid:Lcom/sonymobile/launcher/grid/GridRect;

.field public page:I

.field public position:I


# direct methods
.method public constructor <init>(II)V
    .locals 7
    .param p1, "page"    # I
    .param p2, "position"    # I

    .line 29
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/launcher/data/ItemLocation;-><init>(IIIIII)V

    .line 30
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7
    .param p1, "page"    # I
    .param p2, "col"    # I
    .param p3, "row"    # I
    .param p4, "colSpan"    # I
    .param p5, "rowSpan"    # I

    .line 25
    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/launcher/data/ItemLocation;-><init>(IIIIII)V

    .line 26
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "col"    # I
    .param p4, "row"    # I
    .param p5, "colSpan"    # I
    .param p6, "rowSpan"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    .line 34
    iput p2, p0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    .line 35
    new-instance v0, Lcom/sonymobile/launcher/grid/GridRect;

    invoke-direct {v0}, Lcom/sonymobile/launcher/grid/GridRect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    .line 36
    iput p3, v0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    .line 37
    iput p4, v0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    .line 38
    iput p5, v0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    .line 39
    iput p6, v0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    .line 40
    return-void
.end method

.method public static copy(Lcom/sonymobile/launcher/data/ItemLocation;)Lcom/sonymobile/launcher/data/ItemLocation;
    .locals 8
    .param p0, "original"    # Lcom/sonymobile/launcher/data/ItemLocation;

    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lcom/sonymobile/launcher/data/ItemLocation;

    iget v2, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    iget v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v4, v1, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v5, v1, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v6, v1, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v7, v1, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/launcher/data/ItemLocation;-><init>(IIIIII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 138
    return v0

    .line 139
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 140
    return v1

    .line 141
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 142
    return v1

    .line 143
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/launcher/data/ItemLocation;

    .line 144
    .local v2, "other":Lcom/sonymobile/launcher/data/ItemLocation;
    iget v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    iget v4, v2, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    if-eq v3, v4, :cond_3

    .line 145
    return v1

    .line 146
    :cond_3
    iget v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    iget v4, v2, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    if-eq v3, v4, :cond_4

    .line 147
    return v1

    .line 148
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    if-eq v3, v4, :cond_5

    .line 149
    return v1

    .line 150
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    if-eq v3, v4, :cond_6

    .line 151
    return v1

    .line 152
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    if-eq v3, v4, :cond_7

    .line 153
    return v1

    .line 154
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    if-ne v3, v4, :cond_8

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 122
    const/16 v0, 0x1f

    .line 123
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 124
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    add-int/2addr v2, v3

    .line 125
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    add-int/2addr v1, v3

    .line 126
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    add-int/2addr v2, v3

    .line 127
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    add-int/2addr v1, v3

    .line 128
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v3

    .line 129
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    add-int/2addr v1, v3

    .line 131
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public overlaps(Lcom/sonymobile/launcher/data/ItemLocation;)Z
    .locals 5
    .param p1, "other"    # Lcom/sonymobile/launcher/data/ItemLocation;

    .line 83
    iget v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v4, p1, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    if-eq v4, v3, :cond_1

    .line 84
    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    iget v3, p1, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 86
    :cond_1
    iget v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    iget v3, p1, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    invoke-virtual {v0, v3}, Lcom/sonymobile/launcher/grid/GridRect;->overlaps(Lcom/sonymobile/launcher/grid/GridRect;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public set(IIIIII)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "col"    # I
    .param p4, "row"    # I
    .param p5, "colSpan"    # I
    .param p6, "rowSpan"    # I

    .line 67
    iput p1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    .line 68
    iput p2, p0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    .line 69
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iput p3, v0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    .line 70
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iput p4, v0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    .line 71
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iput p5, v0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    .line 72
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iput p6, v0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    .line 73
    return-void
.end method

.method public set(Lcom/sonymobile/launcher/data/ItemLocation;)V
    .locals 2
    .param p1, "source"    # Lcom/sonymobile/launcher/data/ItemLocation;

    .line 48
    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    iput v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    .line 49
    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    iput v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    .line 50
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iput v1, v0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    .line 51
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    iput v1, v0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    .line 52
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    iput v1, v0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    .line 53
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    iput v1, v0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemLocation [page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rowSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(Lcom/sonymobile/launcher/data/ItemLocation;)V
    .locals 2
    .param p1, "otherLocation"    # Lcom/sonymobile/launcher/data/ItemLocation;

    .line 113
    iget v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    iget v1, p1, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    if-eq v0, v1, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/grid/GridRect;->union(Lcom/sonymobile/launcher/grid/GridRect;)V

    .line 117
    return-void
.end method
