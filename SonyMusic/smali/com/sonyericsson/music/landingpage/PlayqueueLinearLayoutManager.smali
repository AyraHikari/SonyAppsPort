.class public Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PlayqueueLinearLayoutManager.java"


# static fields
.field private static final SCROLL_FACTOR_POSITION_WINDOW_1:I = 0x5

.field private static final SCROLL_FACTOR_POSITION_WINDOW_2:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 8

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    .line 52
    new-instance v0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;-><init>(Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;Landroid/content/Context;ZIII)V

    .line 85
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 86
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
