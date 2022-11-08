.class public Lcom/sonymobile/launcher/grid/GridRect;
.super Ljava/lang/Object;
.source "GridRect.java"


# instance fields
.field public col:I

.field public colSpan:I

.field public row:I

.field public rowSpan:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/launcher/grid/GridRect;)V
    .locals 0
    .param p1, "gridRect"    # Lcom/sonymobile/launcher/grid/GridRect;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/grid/GridRect;->set(Lcom/sonymobile/launcher/grid/GridRect;)V

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 123
    return v0

    .line 124
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 125
    return v1

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 127
    return v1

    .line 128
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/launcher/grid/GridRect;

    .line 129
    .local v2, "other":Lcom/sonymobile/launcher/grid/GridRect;
    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iget v4, v2, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    if-eq v3, v4, :cond_3

    .line 130
    return v1

    .line 131
    :cond_3
    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    iget v4, v2, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    if-eq v3, v4, :cond_4

    .line 132
    return v1

    .line 133
    :cond_4
    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    iget v4, v2, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    if-eq v3, v4, :cond_5

    .line 134
    return v1

    .line 135
    :cond_5
    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    iget v4, v2, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    if-ne v3, v4, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 110
    const/16 v0, 0x1f

    .line 111
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 112
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    add-int/2addr v2, v3

    .line 113
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    add-int/2addr v1, v3

    .line 114
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    add-int/2addr v2, v3

    .line 115
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v3

    .line 116
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public overlaps(Lcom/sonymobile/launcher/grid/GridRect;)Z
    .locals 3
    .param p1, "that"    # Lcom/sonymobile/launcher/grid/GridRect;

    .line 45
    iget v0, p1, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iget v1, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iget v2, p0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    iget v2, p1, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget v0, p1, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    iget v1, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    iget v2, p0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    iget v2, p1, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    .line 97
    iput v0, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    .line 98
    iput v0, p0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    .line 99
    iput v0, p0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    .line 100
    return-void
.end method

.method public set(Lcom/sonymobile/launcher/grid/GridRect;)V
    .locals 1
    .param p1, "gridRect"    # Lcom/sonymobile/launcher/grid/GridRect;

    .line 55
    iget v0, p1, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iput v0, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    .line 56
    iget v0, p1, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    iput v0, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    .line 57
    iget v0, p1, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    iput v0, p0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    .line 58
    iget v0, p1, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    iput v0, p0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") + ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(Lcom/sonymobile/launcher/grid/GridRect;)V
    .locals 8
    .param p1, "rect"    # Lcom/sonymobile/launcher/grid/GridRect;

    .line 69
    iget v0, p1, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    if-eqz v0, :cond_5

    iget v1, p1, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    if-eqz v1, :cond_5

    .line 70
    iget v2, p0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    if-eqz v3, :cond_4

    .line 71
    iget v4, p1, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    add-int/2addr v0, v4

    .line 72
    .local v0, "rectRight":I
    iget v5, p1, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    add-int/2addr v1, v5

    .line 73
    .local v1, "rectBottom":I
    iget v6, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    add-int/2addr v2, v6

    .line 74
    .local v2, "right":I
    iget v7, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    add-int/2addr v3, v7

    .line 75
    .local v3, "bottom":I
    if-le v6, v4, :cond_0

    .line 76
    iput v4, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    .line 78
    :cond_0
    if-le v7, v5, :cond_1

    .line 79
    iput v5, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    .line 81
    :cond_1
    if-ge v2, v0, :cond_2

    .line 82
    move v2, v0

    .line 84
    :cond_2
    if-ge v3, v1, :cond_3

    .line 85
    move v3, v1

    .line 87
    :cond_3
    iget v4, p0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    sub-int v4, v2, v4

    iput v4, p0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    .line 88
    iget v4, p0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    sub-int v4, v3, v4

    iput v4, p0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    .line 89
    .end local v0    # "rectRight":I
    .end local v1    # "rectBottom":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/grid/GridRect;->set(Lcom/sonymobile/launcher/grid/GridRect;)V

    .line 93
    :cond_5
    :goto_0
    return-void
.end method
