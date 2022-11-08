.class Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LandingPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopPaddingHolder"
.end annotation


# instance fields
.field mAdapterInteractionListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTopPadding:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;Landroid/view/View;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    .line 839
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09021c

    .line 841
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mTopPadding:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 847
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mAdapterInteractionListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 849
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;

    if-eqz p1, :cond_0

    .line 851
    invoke-interface {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;->onTopPaddingClick()V

    :cond_0
    return-void
.end method

.method resetViewHolderData()V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mAdapterInteractionListenerRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 867
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mAdapterInteractionListenerRef:Ljava/lang/ref/WeakReference;

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mTopPadding:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setViewHolderData(Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;)V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mAdapterInteractionListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 860
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mAdapterInteractionListenerRef:Ljava/lang/ref/WeakReference;

    .line 861
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mTopPadding:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
