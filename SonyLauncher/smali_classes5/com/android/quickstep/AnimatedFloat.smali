.class public Lcom/android/quickstep/AnimatedFloat;
.super Ljava/lang/Object;
.source "AnimatedFloat.java"


# static fields
.field private static final NO_OP:Ljava/lang/Runnable;

.field public static final VALUE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/AnimatedFloat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndValue:Ljava/lang/Float;

.field private final mUpdateCallback:Ljava/lang/Runnable;

.field private mValueAnimator:Landroid/animation/ObjectAnimator;

.field public value:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmValueAnimator(Lcom/android/quickstep/AnimatedFloat;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEndValue(Lcom/android/quickstep/AnimatedFloat;Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mEndValue:Ljava/lang/Float;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValueAnimator(Lcom/android/quickstep/AnimatedFloat;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/android/quickstep/AnimatedFloat$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    .line 41
    new-instance v0, Lcom/android/quickstep/AnimatedFloat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/quickstep/AnimatedFloat;->NO_OP:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    sget-object v0, Lcom/android/quickstep/AnimatedFloat;->NO_OP:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "updateCallback"    # Ljava/lang/Runnable;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    .line 41
    return-void
.end method


# virtual methods
.method public animateToValue(F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "end"    # F

    .line 62
    iget v0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public animateToValue(FF)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 69
    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    .line 70
    sget-object v0, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    .line 71
    new-instance v1, Lcom/android/quickstep/AnimatedFloat$2;

    invoke-direct {v1, p0, p2}, Lcom/android/quickstep/AnimatedFloat$2;-><init>(Lcom/android/quickstep/AnimatedFloat;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public cancelAnimation()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 114
    :cond_0
    return-void
.end method

.method public finishAnimation()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 120
    :cond_0
    return-void
.end method

.method public getCurrentAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimatingToValue(F)Z
    .locals 1
    .param p1, "endValue"    # F

    .line 134
    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mEndValue:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startAnimation()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 108
    :cond_0
    return-void
.end method

.method public updateValue(F)V
    .locals 1
    .param p1, "v"    # F

    .line 95
    iget v0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iput p1, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 97
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    :cond_0
    return-void
.end method
