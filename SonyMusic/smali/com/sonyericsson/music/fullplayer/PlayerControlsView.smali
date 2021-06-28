.class public Lcom/sonyericsson/music/fullplayer/PlayerControlsView;
.super Landroid/view/ViewGroup;
.source "PlayerControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;
    }
.end annotation


# static fields
.field private static final WRAP:I = -0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;
    .locals 0

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    return-object p0
.end method

.method private static mh(Landroid/view/View;)I
    .locals 0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private static mhMargins(Landroid/view/View;)I
    .locals 2

    .line 82
    invoke-static {p0}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method private static mw(Landroid/view/View;)I
    .locals 0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method private static mwMargins(Landroid/view/View;)I
    .locals 2

    .line 87
    invoke-static {p0}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method private placeChild(Landroid/view/View;II)V
    .locals 4

    .line 100
    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    move-result-object v0

    .line 101
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, p2, v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, p3

    add-int/2addr p2, v1

    .line 104
    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->mw(Landroid/view/View;)I

    move-result v1

    add-int/2addr p2, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v0

    .line 105
    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->mh(Landroid/view/View;)I

    move-result v0

    add-int/2addr p3, v0

    .line 101
    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 0

    .line 145
    instance-of p1, p1, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->generateDefaultLayoutParams()Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;
    .locals 2

    .line 141
    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;
    .locals 2

    .line 136
    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;
    .locals 1

    .line 150
    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 65
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_0

    .line 66
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 67
    invoke-static {p4}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->mwMargins(Landroid/view/View;)I

    move-result p4

    add-int/2addr p3, p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p2, p4

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p2, p3

    .line 73
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 75
    invoke-static {p3}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/music/fullplayer/PlayerControlsView$LayoutParams;->weight:F

    int-to-float v1, p2

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr p5, v0

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-static {p3}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->mhMargins(Landroid/view/View;)I

    move-result v1

    sub-int v1, p4, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0, p3, p5, v0}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->placeChild(Landroid/view/View;II)V

    .line 77
    invoke-static {p3}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->mwMargins(Landroid/view/View;)I

    move-result p3

    add-int/2addr p5, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move v3, p1

    move v4, v7

    move v5, p2

    .line 48
    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 49
    invoke-static {v9}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->mwMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v7, v1

    .line 50
    invoke-static {v9}, Lcom/sonyericsson/music/fullplayer/PlayerControlsView;->mhMargins(Landroid/view/View;)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v7

    .line 57
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v8, p1

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 59
    invoke-static {v8, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
