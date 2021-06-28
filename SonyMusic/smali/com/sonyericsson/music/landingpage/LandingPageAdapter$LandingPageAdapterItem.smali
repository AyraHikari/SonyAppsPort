.class abstract Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;
.super Ljava/lang/Object;
.source "LandingPageAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LandingPageAdapterItem"
.end annotation


# instance fields
.field private final mRecyclerViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private mTotalAvailableWidth:I

.field private final mViewType:I

.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->mViewType:I

    .line 617
    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->mRecyclerViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method


# virtual methods
.method public attachedToWindow()V
    .locals 0

    return-void
.end method

.method deinit()V
    .locals 0

    return-void
.end method

.method destroy()V
    .locals 0

    return-void
.end method

.method getRecyclerViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->mRecyclerViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getTotalAvailableWidth()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->mTotalAvailableWidth:I

    return v0
.end method

.method getViewType()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->mViewType:I

    return v0
.end method

.method init(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    return-void
.end method

.method setTotalAvailableWidth(I)V
    .locals 0

    .line 625
    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->mTotalAvailableWidth:I

    return-void
.end method

.method setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method swapData(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
