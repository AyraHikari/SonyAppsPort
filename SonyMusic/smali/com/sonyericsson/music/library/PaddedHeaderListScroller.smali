.class public Lcom/sonyericsson/music/library/PaddedHeaderListScroller;
.super Ljava/lang/Object;
.source "PaddedHeaderListScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;,
        Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;
    }
.end annotation


# instance fields
.field private mCurrentScrollState:I

.field private mListener:Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;

.field private mVelocity:F


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mCurrentScrollState:I

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mListener:Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;F)F
    .locals 0

    .line 15
    iput p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mVelocity:F

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)Z
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->isAtBottomOfList()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mListener:Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mCurrentScrollState:I

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)Z
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->isScrollFlingState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)I
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->getPaddingHeightVisible()I

    move-result p0

    return p0
.end method

.method private getPaddingHeightVisible()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mListener:Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;->paddingHeightVisible()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAtBottomOfList()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mListener:Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;->isAtBottomOfList()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAtBottomOfList(Landroid/widget/AbsListView;)Z
    .locals 4

    .line 83
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-gt p0, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private isScrollFlingState()Z
    .locals 2

    .line 69
    iget v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mCurrentScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isToolbarMostlyVisible(Lcom/sonyericsson/music/ToolbarControl;)Z
    .locals 1

    .line 119
    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarWrapper()Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static paddingHeightVisible(Landroid/view/View;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showToolbar(Lcom/sonyericsson/music/ToolbarControl;)Z
    .locals 4

    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->getPaddingHeightVisible()I

    move-result v0

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->isScrollFlingState()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mVelocity:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->isToolbarMostlyVisible(Lcom/sonyericsson/music/ToolbarControl;)Z

    move-result p1

    if-nez p1, :cond_4

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    return v3
.end method


# virtual methods
.method public getPaddingScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;
    .locals 1

    .line 73
    new-instance v0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;-><init>(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;Lcom/sonyericsson/music/ToolbarControl;)V

    return-object v0
.end method

.method public onPaddedHeaderListScrollStateChanged(Lcom/sonyericsson/music/ToolbarControl;I)V
    .locals 1

    .line 44
    iget v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mCurrentScrollState:I

    if-eq v0, p2, :cond_1

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->runToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V

    .line 48
    :cond_0
    iput p2, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->mCurrentScrollState:I

    :cond_1
    return-void
.end method

.method public runToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 114
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->showToolbar(Lcom/sonyericsson/music/ToolbarControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ToolbarControl;->animateTo(F)V

    :cond_1
    return-void
.end method
