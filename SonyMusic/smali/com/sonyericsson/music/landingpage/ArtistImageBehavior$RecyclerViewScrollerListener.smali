.class Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ArtistImageBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewScrollerListener"
.end annotation


# instance fields
.field private final mLandingPageArtistViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/landingpage/LandingPageArtistView;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingAnimator:Landroid/animation/ValueAnimator;

.field private mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 131
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mLandingPageArtistViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mLandingPageArtistViewRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$200(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$102(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;I)I

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    invoke-static {v0, p2}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$202(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;I)I

    .line 163
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    invoke-static {p2}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$200(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    invoke-static {p2}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$200(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I

    move-result p2

    if-ne p2, v0, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    .line 164
    invoke-static {p2}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$100(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 166
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-lez p2, :cond_3

    .line 169
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 175
    :cond_1
    new-array p1, v0, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener$1;

    invoke-direct {p2, p0, v2}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener$1;-><init>(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 205
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mLandingPageArtistViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    if-eqz p1, :cond_3

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    .line 208
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    if-nez p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$000(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$000(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;)I

    move-result p3

    .line 141
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->this$0:Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->access$002(Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;I)I

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior$RecyclerViewScrollerListener;->mLandingPageArtistViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float v1, p3

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    int-to-float p2, p2

    sub-float/2addr v0, p2

    const/4 p2, 0x0

    if-gez p3, :cond_1

    cmpl-float p3, v0, p2

    if-lez p3, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 153
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method
