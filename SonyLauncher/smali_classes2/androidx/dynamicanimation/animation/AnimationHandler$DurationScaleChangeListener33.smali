.class public Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DurationScaleChangeListener33"
.end annotation


# instance fields
.field mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

.field final synthetic this$0:Landroidx/dynamicanimation/animation/AnimationHandler;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 291
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$register$0$androidx-dynamicanimation-animation-AnimationHandler$DurationScaleChangeListener33(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 297
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    iput p1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    return-void
.end method

.method public register()Z
    .locals 1

    .line 296
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 298
    invoke-static {v0}, Landroid/animation/ValueAnimator;->registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    move-result v0

    return v0

    .line 300
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public unregister()Z
    .locals 2

    .line 305
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    invoke-static {v0}, Landroid/animation/ValueAnimator;->unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    move-result v0

    .line 306
    .local v0, "unregistered":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 307
    return v0
.end method
