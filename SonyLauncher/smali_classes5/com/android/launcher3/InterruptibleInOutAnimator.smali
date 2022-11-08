.class public Lcom/android/launcher3/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source "InterruptibleInOutAnimator.java"


# static fields
.field private static final IN:I = 0x1

.field private static final OUT:I = 0x2

.field private static final STOPPED:I

.field private static final VALUE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/InterruptibleInOutAnimator;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field mDirection:I

.field private mFirstRun:Z

.field private mOriginalDuration:J

.field private mOriginalFromValue:F

.field private mOriginalToValue:F

.field private mTag:Ljava/lang/Object;

.field private mValue:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmValue(Lcom/android/launcher3/InterruptibleInOutAnimator;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmValue(Lcom/android/launcher3/InterruptibleInOutAnimator;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mValue:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/android/launcher3/InterruptibleInOutAnimator$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "value"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/InterruptibleInOutAnimator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/InterruptibleInOutAnimator;->VALUE:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(JFF)V
    .locals 4
    .param p1, "duration"    # J
    .param p3, "fromValue"    # F
    .param p4, "toValue"    # F

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 69
    sget-object v2, Lcom/android/launcher3/InterruptibleInOutAnimator;->VALUE:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p3, v3, v1

    aput p4, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 70
    iput-wide p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    .line 71
    iput p3, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 72
    iput p4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalToValue:F

    .line 74
    new-instance v1, Lcom/android/launcher3/InterruptibleInOutAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/InterruptibleInOutAnimator$2;-><init>(Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    return-void
.end method

.method private animate(I)V
    .locals 12
    .param p1, "direction"    # I

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 84
    .local v0, "currentPlayTime":J
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget v3, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalToValue:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 85
    .local v3, "toValue":F
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mValue:F

    .line 88
    .local v4, "startValue":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->cancel()V

    .line 92
    iput p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 95
    iget-wide v5, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    sub-long v7, v5, v0

    .line 96
    .local v7, "duration":J
    iget-object v9, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    iget-object v5, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v9, 0x0

    aput v4, v6, v9

    aput v3, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 99
    iget-object v2, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 100
    iput-boolean v9, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    .line 101
    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    .line 127
    return-void
.end method

.method public animateOut()V
    .locals 1

    .line 136
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    .line 137
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 106
    return-void
.end method

.method public end()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 111
    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 141
    return-void
.end method
