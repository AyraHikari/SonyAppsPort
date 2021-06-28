.class Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener$1;
.super Ljava/lang/Object;
.source "ArtistImageBehavior.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

.field final synthetic val$recyclerViewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener$1;->this$1:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener$1;->val$recyclerViewRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener$1;->val$recyclerViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener$1;->this$1:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;

    .line 181
    invoke-static {v1}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->access$300(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 184
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 191
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->onBehaviorScaleScrolling(FI)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 193
    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->onBehaviorScaleScrolling(FI)V

    :cond_1
    :goto_0
    return-void
.end method
