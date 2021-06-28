.class public Lcom/sonyericsson/music/ui/PlayPauseButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "PlayPauseButton.java"


# static fields
.field private static final ANIM_DURATION_MS:J = 0x15eL


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mDrawable:Lcom/sonyericsson/music/ui/PlayPauseDrawable;

.field private mPlaying:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p2, Lcom/sonyericsson/music/ui/PlayPauseDrawable;

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mDrawable:Lcom/sonyericsson/music/ui/PlayPauseDrawable;

    .line 35
    iget-object p1, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mDrawable:Lcom/sonyericsson/music/ui/PlayPauseDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->setStateful(Z)V

    .line 36
    iget-object p1, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mDrawable:Lcom/sonyericsson/music/ui/PlayPauseDrawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setWillNotCacheDrawing(Z)V

    .line 40
    iget-boolean p1, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mPlaying:Z

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/PlayPauseButton;->updateContentDescription(Z)V

    return-void
.end method

.method private updateContentDescription(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f10006b

    goto :goto_0

    :cond_0
    const p1, 0x7f10006c

    .line 65
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setPlaying(ZZ)V
    .locals 5

    .line 44
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mPlaying:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 48
    :cond_0
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mPlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 50
    iget-object p2, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 54
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mDrawable:Lcom/sonyericsson/music/ui/PlayPauseDrawable;

    const-string v2, "position"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    aput v0, v3, v4

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 55
    iget-object p2, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 56
    iget-object p2, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 58
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/music/ui/PlayPauseButton;->mDrawable:Lcom/sonyericsson/music/ui/PlayPauseDrawable;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->setPosition(F)V

    .line 60
    :goto_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/PlayPauseButton;->updateContentDescription(Z)V

    return-void
.end method
