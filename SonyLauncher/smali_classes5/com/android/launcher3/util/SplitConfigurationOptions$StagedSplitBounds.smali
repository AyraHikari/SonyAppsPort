.class public Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
.super Ljava/lang/Object;
.source "SplitConfigurationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SplitConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StagedSplitBounds"
.end annotation


# instance fields
.field public final appsStackedVertically:Z

.field public final dividerHeightPercent:F

.field public final dividerWidthPercent:F

.field public final initiatedFromSeascape:Z

.field public final leftTaskPercent:F

.field public final leftTopBounds:Landroid/graphics/Rect;

.field public final leftTopTaskId:I

.field public final rightBottomBounds:Landroid/graphics/Rect;

.field public final rightBottomTaskId:I

.field public final topTaskPercent:F

.field public final visualDividerBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 7
    .param p1, "leftTopBounds"    # Landroid/graphics/Rect;
    .param p2, "rightBottomBounds"    # Landroid/graphics/Rect;
    .param p3, "leftTopTaskId"    # I
    .param p4, "rightBottomTaskId"    # I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 130
    iput-object p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 131
    iput p3, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    .line 132
    iput p4, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->rightBottomTaskId:I

    .line 134
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    .line 138
    iput-boolean v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    .line 139
    iput-boolean v3, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->initiatedFromSeascape:Z

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    .line 144
    iput-boolean v3, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    .line 150
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 151
    iput-boolean v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->initiatedFromSeascape:Z

    goto :goto_0

    .line 153
    :cond_1
    iput-boolean v3, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->initiatedFromSeascape:Z

    .line 157
    :goto_0
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 158
    .local v0, "totalWidth":F
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 159
    .local v1, "totalHeight":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    .line 161
    iget-object v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerWidthPercent:F

    .line 162
    iget-object v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerHeightPercent:F

    .line 163
    return-void
.end method
