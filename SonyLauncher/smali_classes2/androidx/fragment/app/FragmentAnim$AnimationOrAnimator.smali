.class Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/Animation;

.field public final animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 192
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 193
    if-eqz p1, :cond_0

    .line 196
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 185
    if-eqz p1, :cond_0

    .line 188
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
