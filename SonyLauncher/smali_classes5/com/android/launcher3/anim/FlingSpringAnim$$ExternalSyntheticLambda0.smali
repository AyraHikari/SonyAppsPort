.class public final synthetic Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/anim/FlingSpringAnim;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/anim/FlingSpringAnim;

    iput-object p2, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$2:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput p4, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$3:F

    iput p5, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$4:F

    iput-object p6, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$5:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/anim/FlingSpringAnim;

    iget-object v1, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$2:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v3, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$3:F

    iget v4, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$4:F

    iget-object v5, p0, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;->f$5:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/anim/FlingSpringAnim;->lambda$new$0$com-android-launcher3-anim-FlingSpringAnim(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
