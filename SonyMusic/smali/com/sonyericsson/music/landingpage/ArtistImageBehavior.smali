.class public Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ArtistImageBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcom/sonyericsson/music/landingpage/LandingPageArtistView;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARTIST_IMAGE_SPEED:F = 0.4f

.field private static final OVERSCROLL_TOP_PADDING_FACTOR:F = 0.4f

.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I = 0x0

.field private static final SCROLL_STATE_SETTLING:I = 0x2


# instance fields
.field private mCurrentState:I

.field private mDependencyRecyclerViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousState:I

.field private mRemoveDiff:I

.field private mScrollListener:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mPreviousState:I

    .line 39
    iput v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mPreviousState:I

    .line 39
    iput p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mCurrentState:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mRemoveDiff:I

    return p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mRemoveDiff:I

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mPreviousState:I

    return p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mPreviousState:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mCurrentState:I

    return p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mCurrentState:I

    return p1
.end method


# virtual methods
.method public clearBehavior()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mDependencyRecyclerViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mScrollListener:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mDependencyRecyclerViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mScrollListener:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mDependencyRecyclerViewRef:Ljava/lang/ref/WeakReference;

    .line 75
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mScrollListener:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    :cond_0
    return-void
.end method

.method public bridge synthetic layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 21
    check-cast p2, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/view/View;)Z
    .locals 4

    .line 57
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f0900f2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    instance-of v2, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 60
    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mScrollListener:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    if-nez v3, :cond_1

    .line 61
    new-instance v3, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    invoke-direct {v3, p0, p2}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;-><init>(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;)V

    iput-object v3, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mScrollListener:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    .line 62
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mDependencyRecyclerViewRef:Ljava/lang/ref/WeakReference;

    .line 63
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mScrollListener:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    .line 21
    check-cast p2, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    invoke-virtual/range {p0 .. p7}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/view/View;IIII)V
    .locals 2

    .line 91
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p4, 0x1

    const/4 p6, 0x0

    const v0, 0x7f0900f2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 92
    :goto_0
    instance-of v0, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 96
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gez p7, :cond_1

    .line 98
    iget v1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mCurrentState:I

    if-ne v1, p4, :cond_1

    int-to-float p4, p7

    .line 101
    invoke-virtual {p2, p4, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->onBehaviorScaleScrolling(FI)V

    int-to-float p1, p1

    const p2, 0x3ecccccd    # 0.4f

    mul-float p4, p4, p2

    sub-float/2addr p1, p4

    .line 102
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 103
    invoke-virtual {p3, p6, p1, p6, p6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    if-lez p5, :cond_3

    if-lez p1, :cond_3

    .line 105
    iget p7, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mCurrentState:I

    if-ne p7, p4, :cond_3

    int-to-float p4, p5

    .line 109
    invoke-virtual {p2, p4, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->onBehaviorScaleScrolling(FI)V

    sub-int/2addr p1, p5

    if-gez p1, :cond_2

    .line 115
    iput p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->mRemoveDiff:I

    .line 117
    :cond_2
    invoke-static {p1, p6}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p6, p1, p6, p6}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 21
    check-cast p2, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    invoke-virtual/range {p0 .. p5}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p5, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
