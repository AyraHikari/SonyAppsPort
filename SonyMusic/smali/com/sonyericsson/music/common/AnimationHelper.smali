.class public Lcom/sonyericsson/music/common/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/AnimationHelper$FadeOutListener;,
        Lcom/sonyericsson/music/common/AnimationHelper$FadeInListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crossFadeInFadeOut(Landroid/content/Context;Landroid/view/View;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const v1, 0x7f010010

    .line 79
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-nez p4, :cond_0

    .line 83
    new-instance p4, Lcom/sonyericsson/music/common/AnimationHelper$FadeInListener;

    invoke-direct {p4, p1}, Lcom/sonyericsson/music/common/AnimationHelper$FadeInListener;-><init>(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_2

    int-to-long v2, p3

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    invoke-virtual {v1, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    const p4, 0x7f010012

    .line 94
    invoke-static {p0, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez p5, :cond_3

    .line 98
    new-instance p5, Lcom/sonyericsson/music/common/AnimationHelper$FadeOutListener;

    invoke-direct {p5, p2}, Lcom/sonyericsson/music/common/AnimationHelper$FadeOutListener;-><init>(Landroid/view/View;)V

    :cond_3
    if-eqz v0, :cond_4

    int-to-long p3, p3

    .line 102
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 103
    invoke-virtual {v0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-void
.end method
