.class public final synthetic Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/anim/SpringAnimationBuilder;

.field public final synthetic f$1:Landroid/util/FloatProperty;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iput-object p2, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;->f$1:Landroid/util/FloatProperty;

    iput-object p3, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;->f$1:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->lambda$build$0$com-android-launcher3-anim-SpringAnimationBuilder(Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V

    return-void
.end method
