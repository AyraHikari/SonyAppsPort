.class Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemTopPadding;
.super Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;
.source "LandingPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LandingPageAdapterItemTopPadding"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemTopPadding;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    .line 667
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method


# virtual methods
.method resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 680
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;

    if-eqz v0, :cond_0

    .line 681
    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;

    .line 682
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->resetViewHolderData()V

    :cond_0
    return-void
.end method

.method setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 672
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;

    if-eqz v0, :cond_0

    .line 673
    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;

    .line 674
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemTopPadding;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->access$100(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->setViewHolderData(Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;)V

    :cond_0
    return-void
.end method
