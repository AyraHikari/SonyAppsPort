.class public abstract Lcom/android/quickstep/util/MultiValueUpdateListener;
.super Ljava/lang/Object;
.source "MultiValueUpdateListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    }
.end annotation


# instance fields
.field private final mAllProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllProperties(Lcom/android/quickstep/util/MultiValueUpdateListener;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener;->mAllProperties:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener;->mAllProperties:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 34
    .local v0, "percent":F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, v0

    .line 36
    .local v1, "currentPlayTime":F
    iget-object v2, p0, Lcom/android/quickstep/util/MultiValueUpdateListener;->mAllProperties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 37
    iget-object v3, p0, Lcom/android/quickstep/util/MultiValueUpdateListener;->mAllProperties:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 38
    .local v3, "prop":Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    const/4 v4, 0x0

    invoke-static {v3}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->-$$Nest$fgetmDelay(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)F

    move-result v5

    sub-float v5, v1, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 39
    .local v4, "time":F
    invoke-static {v3}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->-$$Nest$fgetmDuration(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)F

    move-result v5

    div-float v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 40
    .local v5, "newPercent":F
    invoke-static {v3}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->-$$Nest$fgetmInterpolator(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 41
    invoke-static {v3}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->-$$Nest$fgetmEnd(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)F

    move-result v7

    mul-float/2addr v7, v5

    invoke-static {v3}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->-$$Nest$fgetmStart(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)F

    move-result v8

    sub-float/2addr v6, v5

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    iput v7, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 36
    .end local v3    # "prop":Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .end local v4    # "time":F
    .end local v5    # "newPercent":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/util/MultiValueUpdateListener;->onUpdate(FZ)V

    .line 44
    return-void
.end method

.method public abstract onUpdate(FZ)V
.end method
