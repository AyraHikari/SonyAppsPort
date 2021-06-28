.class Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryWithTitleViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIM_DURATION_HEADER_COLOR:I = 0x1f4


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mCategoryButton:Landroid/widget/TextView;

.field private final mCategoryTitle:Landroid/widget/TextView;

.field private final mCategoryTitleWrap:Landroid/widget/RelativeLayout;

.field private mCategoryWrapClickListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09006c

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitleWrap:Landroid/widget/RelativeLayout;

    const v0, 0x7f09006b

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    const v0, 0x7f09016c

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryButton:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method enableCategoryButton(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitleWrap:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryWrapClickListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryWrapClickListenerRef:Ljava/lang/ref/WeakReference;

    .line 93
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitleWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryWrapClickListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;->onCategoryButtonClick()V

    :cond_0
    return-void
.end method

.method removeCategoryButtonListener()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitleWrap:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryWrapClickListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryWrapClickListenerRef:Ljava/lang/ref/WeakReference;

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitleWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method resetTitleColorAnimation()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method setCategoryTitle(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setCategoryTitleColor(Landroid/content/Context;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->setCategoryTitleColor(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method setCategoryTitleColor(Landroid/content/Context;ZZZ)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    const p2, 0x7f060071

    goto :goto_0

    :cond_0
    const p2, 0x7f060072

    .line 60
    :goto_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->resetTitleColorAnimation()V

    if-eqz p4, :cond_1

    .line 64
    iget-object p4, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    const-string v0, "textColor"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 64
    invoke-static {p4, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance p4, Landroid/animation/ArgbEvaluator;

    invoke-direct {p4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p2, p4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 67
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 68
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 70
    :cond_1
    iget-object p4, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    if-eqz p3, :cond_2

    const p2, 0x7f060073

    .line 75
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0a0011

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float p3, p3, p4

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p4

    .line 81
    iget-object p4, p0, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {p4, p1, p3, p3, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2
    return-void
.end method
