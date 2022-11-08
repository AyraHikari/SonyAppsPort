.class public Lcom/sonyericsson/music/fullplayer/PlayerView;
.super Landroid/view/ViewGroup;
.source "PlayerView.java"


# static fields
.field private static final MATCH_PARENT:I = -0x1

.field private static final MIDDLE_SPACING_COUNT:I = 0x2

.field private static final WEIGHT_END:F = 2.0f

.field private static final WEIGHT_MIDDLE:F = 1.0f

.field private static final WEIGHT_SUM:F = 6.0f

.field private static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mArtContainer:Landroid/view/View;

.field private mArtMargin:I

.field private mControls:Landroid/view/View;

.field private mControlsMargin:I

.field private mMetadata:Landroid/view/View;

.field private mSeekBarContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->init()V

    return-void
.end method

.method private findViewByIdOrThrow(I)Landroid/view/View;
    .locals 4

    .line 216
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "0x%x"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a4

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtMargin:I

    const v1, 0x7f0700a7

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControlsMargin:I

    return-void
.end method

.method private isLandscape()Z
    .locals 2

    .line 224
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static measureChildExactly(Landroid/view/View;II)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 207
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 208
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 207
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureChildWithSize(Landroid/view/View;IIIIII)V
    .locals 2

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p6

    .line 199
    invoke-static {p2, v0, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 202
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p6

    add-int/2addr p4, p6

    add-int/2addr p4, p7

    .line 201
    invoke-static {p3, p4, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 203
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private static placeChild(Landroid/view/View;II)V
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090042

    .line 76
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->findViewByIdOrThrow(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    const v0, 0x7f090120

    .line 77
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->findViewByIdOrThrow(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mMetadata:Landroid/view/View;

    const v0, 0x7f090222

    .line 78
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->findViewByIdOrThrow(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mSeekBarContainer:Landroid/view/View;

    const v0, 0x7f090187

    .line 79
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->findViewByIdOrThrow(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 131
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr p4, p2

    sub-int p2, p5, p3

    .line 139
    iget-object p3, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 140
    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 142
    iget-object v4, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 143
    iget-object v5, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 145
    iget-object v6, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mMetadata:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 146
    iget-object v7, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mSeekBarContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 153
    iget p4, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtMargin:I

    add-int/2addr v1, p4

    sub-int p4, p2, v3

    .line 154
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p1

    .line 155
    iget-object p5, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    invoke-static {p5, v1, p4}, Lcom/sonyericsson/music/fullplayer/PlayerView;->placeChild(Landroid/view/View;II)V

    .line 159
    iget p4, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControlsMargin:I

    add-int/2addr p3, p4

    add-int/2addr v1, p3

    sub-int/2addr p2, v6

    sub-int/2addr p2, v7

    sub-int/2addr p2, v5

    .line 160
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 161
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mMetadata:Landroid/view/View;

    invoke-static {p2, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerView;->placeChild(Landroid/view/View;II)V

    add-int/2addr p1, v6

    .line 163
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mSeekBarContainer:Landroid/view/View;

    invoke-static {p2, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerView;->placeChild(Landroid/view/View;II)V

    add-int/2addr p1, v7

    .line 165
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    invoke-static {p2, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerView;->placeChild(Landroid/view/View;II)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    invoke-static {p2, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerView;->placeChild(Landroid/view/View;II)V

    add-int/2addr p1, v3

    sub-int/2addr p5, v0

    sub-int/2addr p5, p1

    add-int p2, v6, v7

    add-int/2addr p2, v5

    sub-int/2addr p5, p2

    int-to-float p2, p5

    const/high16 p3, 0x40000000    # 2.0f

    mul-float p2, p2, p3

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p2, v0

    .line 176
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 v0, p2, 0x2

    sub-int/2addr p5, v0

    int-to-float p5, p5

    div-float/2addr p5, p3

    .line 177
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int/2addr p1, p2

    .line 181
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mMetadata:Landroid/view/View;

    invoke-static {p2, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerView;->placeChild(Landroid/view/View;II)V

    add-int/2addr v6, p3

    add-int/2addr p1, v6

    .line 184
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mSeekBarContainer:Landroid/view/View;

    invoke-static {p2, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerView;->placeChild(Landroid/view/View;II)V

    sub-int/2addr p4, v1

    sub-int/2addr p4, v2

    sub-int/2addr p4, v4

    .line 187
    div-int/lit8 p4, p4, 0x2

    add-int/2addr v1, p4

    add-int/2addr v7, p3

    add-int/2addr p1, v7

    .line 189
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    invoke-static {p2, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerView;->placeChild(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    .line 84
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 85
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v13

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v14

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/fullplayer/PlayerView;->measureChildWithSize(Landroid/view/View;IIIIII)V

    sub-int v0, v11, v15

    sub-int v0, v0, v16

    .line 98
    iget v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtMargin:I

    iget v2, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControlsMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sub-int v1, v12, v13

    sub-int/2addr v1, v14

    .line 99
    iget v2, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    iget-object v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    invoke-static {v1, v0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerView;->measureChildExactly(Landroid/view/View;II)V

    .line 104
    iget v0, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtMargin:I

    iget-object v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControlsMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int v13, v0, v1

    .line 105
    iget-object v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mMetadata:Landroid/view/View;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v6, v13

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/fullplayer/PlayerView;->measureChildWithSize(Landroid/view/View;IIIIII)V

    .line 106
    iget-object v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mSeekBarContainer:Landroid/view/View;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/fullplayer/PlayerView;->measureChildWithSize(Landroid/view/View;IIIIII)V

    .line 107
    iget-object v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/fullplayer/PlayerView;->measureChildWithSize(Landroid/view/View;IIIIII)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mMetadata:Landroid/view/View;

    invoke-virtual {v8, v0, v9, v10}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 110
    iget-object v0, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mSeekBarContainer:Landroid/view/View;

    invoke-virtual {v8, v0, v9, v10}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 111
    iget-object v0, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    invoke-virtual {v8, v0, v9, v10}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 113
    iget-object v0, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mMetadata:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 114
    iget-object v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mSeekBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 115
    iget-object v2, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mControls:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v1

    add-int v7, v0, v2

    sub-int v0, v12, v13

    sub-int/2addr v0, v14

    sub-int/2addr v0, v7

    if-le v0, v11, :cond_1

    .line 121
    iget-object v0, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    invoke-static {v0, v11, v11}, Lcom/sonyericsson/music/fullplayer/PlayerView;->measureChildExactly(Landroid/view/View;II)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, v8, Lcom/sonyericsson/music/fullplayer/PlayerView;->mArtContainer:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/fullplayer/PlayerView;->measureChildWithSize(Landroid/view/View;IIIIII)V

    .line 126
    :goto_0
    invoke-virtual {v8, v11, v12}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
