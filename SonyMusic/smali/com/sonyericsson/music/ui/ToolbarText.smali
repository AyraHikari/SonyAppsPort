.class public Lcom/sonyericsson/music/ui/ToolbarText;
.super Ljava/lang/Object;
.source "ToolbarText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mCurrentAlpha:I

.field private mTagetColor:I

.field private mText:Landroid/text/SpannableString;

.field private mTextAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mTitleSpan:Lcom/sonyericsson/music/ui/MutableAlphaSpan;

.field private final mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;I)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 31
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_1

    .line 35
    new-instance p1, Landroid/text/SpannableString;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mText:Landroid/text/SpannableString;

    .line 36
    iput p3, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mCurrentAlpha:I

    .line 37
    new-instance p1, Lcom/sonyericsson/music/ui/MutableAlphaSpan;

    iget p2, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mCurrentAlpha:I

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/ui/MutableAlphaSpan;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTitleSpan:Lcom/sonyericsson/music/ui/MutableAlphaSpan;

    .line 38
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mText:Landroid/text/SpannableString;

    iget-object p2, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTitleSpan:Lcom/sonyericsson/music/ui/MutableAlphaSpan;

    const/4 p3, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 39
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object p2, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mText:Landroid/text/SpannableString;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private getTargetColor()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTextAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTagetColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mCurrentAlpha:I

    :goto_0
    return v0
.end method


# virtual methods
.method public animateTextAlpha(IIJ)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mText:Landroid/text/SpannableString;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/ToolbarText;->getTargetColor()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/ToolbarText;->cleanupToolbarText()V

    .line 58
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTextAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTextAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTextAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    iput p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mCurrentAlpha:I

    .line 62
    iput p2, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTagetColor:I

    .line 64
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTextAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public cleanupToolbarText()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTextAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTextAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTextAlphaAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mText:Landroid/text/SpannableString;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mCurrentAlpha:I

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTitleSpan:Lcom/sonyericsson/music/ui/MutableAlphaSpan;

    iget v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mCurrentAlpha:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ui/MutableAlphaSpan;->setAlpha(I)V

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mText:Landroid/text/SpannableString;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTextAlpha(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mText:Landroid/text/SpannableString;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mTitleSpan:Lcom/sonyericsson/music/ui/MutableAlphaSpan;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/MutableAlphaSpan;->setAlpha(I)V

    .line 46
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/sonyericsson/music/ui/ToolbarText;->mText:Landroid/text/SpannableString;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
