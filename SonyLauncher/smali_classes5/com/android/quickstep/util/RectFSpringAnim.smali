.class public Lcom/android/quickstep/util/RectFSpringAnim;
.super Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;,
        Lcom/android/quickstep/util/RectFSpringAnim$Tracking;
    }
.end annotation


# static fields
.field private static final RECT_CENTER_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECT_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACKING_BOTTOM:I = 0x2

.field public static final TRACKING_CENTER:I = 0x1

.field public static final TRACKING_TOP:I


# instance fields
.field private final mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimsStarted:Z

.field private mCurrentCenterX:F

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentScaleProgress:F

.field private mCurrentY:F

.field private mMaxVelocityPxPerS:I

.field private mMinVisChange:F

.field private final mOnUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRectScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectScaleAnimEnded:Z

.field private mRectXAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

.field private mRectXAnimEnded:Z

.field private mRectYAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

.field private mRectYAnimEnded:Z

.field private final mStartRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field public final mTracking:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentCenterX(Lcom/android/quickstep/util/RectFSpringAnim;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentScaleProgress(Lcom/android/quickstep/util/RectFSpringAnim;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentY(Lcom/android/quickstep/util/RectFSpringAnim;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentCenterX(Lcom/android/quickstep/util/RectFSpringAnim;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentScaleProgress(Lcom/android/quickstep/util/RectFSpringAnim;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentY(Lcom/android/quickstep/util/RectFSpringAnim;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdate(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->onUpdate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/android/quickstep/util/RectFSpringAnim$1;

    const-string v1, "rectCenterXSpring"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/RectFSpringAnim$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/RectFSpringAnim;->RECT_CENTER_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 67
    new-instance v0, Lcom/android/quickstep/util/RectFSpringAnim$2;

    const-string v1, "rectYSpring"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/RectFSpringAnim$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/RectFSpringAnim;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 81
    new-instance v0, Lcom/android/quickstep/util/RectFSpringAnim$3;

    const-string v1, "rectScaleProgress"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/RectFSpringAnim$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/RectFSpringAnim;->RECT_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V
    .locals 9
    .param p1, "startRect"    # Landroid/graphics/RectF;
    .param p2, "targetRect"    # Landroid/graphics/RectF;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 133
    invoke-direct {p0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/List;

    .line 134
    iput-object p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 135
    iput-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 136
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 138
    invoke-static {p3}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v0

    .line 139
    .local v0, "rp":Lcom/android/systemui/plugins/ResourceProvider;
    sget v1, Lcom/android/launcher3/R$dimen;->swipe_up_fling_min_visible_change:I

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mMinVisChange:F

    .line 140
    sget v1, Lcom/android/launcher3/R$dimen;->swipe_up_max_velocity:I

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mMaxVelocityPxPerS:I

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->setCanRelease(Z)V

    .line 143
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p4, :cond_1

    .line 144
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 145
    move v2, v3

    goto :goto_0

    .line 146
    :cond_0
    nop

    :goto_0
    iput v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    goto :goto_1

    .line 148
    :cond_1
    iget v4, p4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 149
    .local v4, "heightPx":I
    iget-object v5, p4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 151
    .local v5, "padding":Landroid/graphics/Rect;
    int-to-float v6, v4

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    .line 152
    .local v6, "topThreshold":F
    iget v7, p4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 154
    .local v7, "bottomThreshold":F
    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_2

    .line 155
    iput v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    goto :goto_1

    .line 156
    :cond_2
    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    .line 157
    iput v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    goto :goto_1

    .line 159
    :cond_3
    iput v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    .line 163
    .end local v4    # "heightPx":I
    .end local v5    # "padding":Landroid/graphics/Rect;
    .end local v6    # "topThreshold":F
    .end local v7    # "bottomThreshold":F
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/RectFSpringAnim;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    .line 164
    return-void
.end method

.method private getTrackedYFromRect(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 167
    iget v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    packed-switch v0, :pswitch_data_0

    .line 174
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    return v0

    .line 171
    :pswitch_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    return v0

    .line 169
    :pswitch_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isEnded()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeOnEnd()V
    .locals 3

    .line 337
    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->setCanRelease(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 341
    .local v1, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 342
    .end local v1    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method private onUpdate()V
    .locals 9

    .line 299
    invoke-direct {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iget v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 307
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 306
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    .line 308
    .local v0, "currentWidth":F
    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 309
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 308
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    .line 310
    .local v1, "currentHeight":F
    iget v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 318
    :pswitch_0
    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    div-float v5, v0, v3

    sub-float v5, v4, v5

    iget v6, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    sub-float v7, v6, v1

    div-float v3, v0, v3

    add-float/2addr v4, v3

    invoke-virtual {v2, v5, v7, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    div-float v5, v0, v3

    sub-float v5, v4, v5

    iget v6, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    div-float v7, v1, v3

    sub-float v7, v6, v7

    div-float v8, v0, v3

    add-float/2addr v4, v8

    div-float v3, v1, v3

    add-float/2addr v6, v3

    invoke-virtual {v2, v5, v7, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    div-float v5, v0, v3

    sub-float v5, v4, v5

    iget v6, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    div-float v3, v0, v3

    add-float/2addr v4, v3

    add-float v3, v6, v1

    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 316
    nop

    .line 330
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;

    .line 331
    .local v3, "onUpdateListener":Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
    iget-object v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    invoke-interface {v3, v4, v5}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;F)V

    .line 332
    .end local v3    # "onUpdateListener":Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
    goto :goto_1

    .line 334
    .end local v0    # "currentWidth":F
    .end local v1    # "currentHeight":F
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 209
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V
    .locals 1
    .param p1, "onUpdateListener"    # Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 347
    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;

    .line 349
    .local v1, "onUpdateListener":Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
    invoke-interface {v1}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->onCancel()V

    .line 350
    .end local v1    # "onUpdateListener":Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->end()V

    .line 353
    return-void
.end method

.method public end()V
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/FlingSpringAnim;->end()V

    .line 283
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/FlingSpringAnim;->end()V

    .line 284
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 288
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    .line 289
    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    .line 291
    invoke-direct {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    .line 292
    return-void
.end method

.method synthetic lambda$start$0$com-android-quickstep-util-RectFSpringAnim(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 1
    .param p1, "animation"    # Landroidx/dynamicanimation/animation/DynamicAnimation;
    .param p2, "canceled"    # Z
    .param p3, "centerX"    # F
    .param p4, "velocityX"    # F

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    .line 221
    invoke-direct {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    .line 222
    return-void
.end method

.method synthetic lambda$start$1$com-android-quickstep-util-RectFSpringAnim(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 1
    .param p1, "animation"    # Landroidx/dynamicanimation/animation/DynamicAnimation;
    .param p2, "canceled"    # Z
    .param p3, "centerY"    # F
    .param p4, "velocityY"    # F

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    .line 225
    invoke-direct {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    .line 226
    return-void
.end method

.method synthetic lambda$start$2$com-android-quickstep-util-RectFSpringAnim(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 1
    .param p1, "animation"    # Landroidx/dynamicanimation/animation/DynamicAnimation;
    .param p2, "canceled"    # Z
    .param p3, "value"    # F
    .param p4, "velocity"    # F

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    .line 266
    invoke-direct {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    .line 267
    return-void
.end method

.method public onTargetPositionChanged()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/FlingSpringAnim;->getTargetPosition()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/anim/FlingSpringAnim;->updatePosition(FF)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    if-eqz v0, :cond_1

    .line 184
    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher3/anim/FlingSpringAnim;->getTargetPosition()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/anim/FlingSpringAnim;->updatePosition(FF)V

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/launcher3/anim/FlingSpringAnim;->getTargetPosition()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/anim/FlingSpringAnim;->updatePosition(FF)V

    goto :goto_0

    .line 186
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/launcher3/anim/FlingSpringAnim;->getTargetPosition()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/anim/FlingSpringAnim;->updatePosition(FF)V

    .line 202
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start(Landroid/content/Context;Landroid/graphics/PointF;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "velocityPxPerMs"    # Landroid/graphics/PointF;

    .line 219
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    new-instance v10, Lcom/android/quickstep/util/RectFSpringAnim$$ExternalSyntheticLambda0;

    invoke-direct {v10, v15}, Lcom/android/quickstep/util/RectFSpringAnim$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    .line 223
    .local v10, "onXEndListener":Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
    new-instance v0, Lcom/android/quickstep/util/RectFSpringAnim$$ExternalSyntheticLambda1;

    invoke-direct {v0, v15}, Lcom/android/quickstep/util/RectFSpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    move-object/from16 v21, v0

    .line 230
    .local v21, "onYEndListener":Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
    iget v0, v14, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v22, v0, v1

    .line 231
    .local v22, "xVelocityPxPerS":F
    iget v0, v14, Landroid/graphics/PointF;->y:F

    mul-float v23, v0, v1

    .line 232
    .local v23, "yVelocityPxPerS":F
    nop

    .line 233
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mMaxVelocityPxPerS:I

    .line 232
    invoke-static {v0, v1}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result v0

    int-to-float v0, v0

    .line 233
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float v24, v0, v1

    .line 234
    .local v24, "dampedXVelocityPxPerS":F
    nop

    .line 235
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mMaxVelocityPxPerS:I

    .line 234
    invoke-static {v0, v1}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result v0

    int-to-float v0, v0

    .line 235
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float v25, v0, v1

    .line 237
    .local v25, "dampedYVelocityPxPerS":F
    iget v13, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 238
    .local v13, "startX":F
    iget-object v0, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    .line 239
    .local v12, "endX":F
    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v26

    .line 240
    .local v26, "minXValue":F
    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 242
    .local v27, "maxXValue":F
    new-instance v11, Lcom/android/launcher3/anim/FlingSpringAnim;

    sget-object v3, Lcom/android/quickstep/util/RectFSpringAnim;->RECT_CENTER_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v7, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mMinVisChange:F

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v13

    move v5, v12

    move/from16 v6, v24

    move/from16 v8, v26

    move/from16 v9, v27

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/anim/FlingSpringAnim;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFFFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iput-object v11, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    .line 245
    iget v0, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    .line 246
    .local v0, "startY":F
    iget-object v1, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {v15, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result v1

    .line 247
    .local v1, "endY":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 248
    .local v2, "minYValue":F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 249
    .local v3, "maxYValue":F
    new-instance v4, Lcom/android/launcher3/anim/FlingSpringAnim;

    sget-object v5, Lcom/android/quickstep/util/RectFSpringAnim;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v6, v15, Lcom/android/quickstep/util/RectFSpringAnim;->mMinVisChange:F

    move-object v11, v4

    move v7, v12

    .end local v12    # "endX":F
    .local v7, "endX":F
    move-object/from16 v12, p0

    move v8, v13

    .end local v13    # "startX":F
    .local v8, "startX":F
    move-object/from16 v13, p1

    move-object v9, v14

    move-object v14, v5

    move-object v5, v15

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v25

    move/from16 v18, v6

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-direct/range {v11 .. v21}, Lcom/android/launcher3/anim/FlingSpringAnim;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFFFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iput-object v4, v5, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    .line 252
    iget-object v4, v5, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v4, v6, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 253
    .local v4, "minVisibleChange":F
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v11

    .line 254
    .local v11, "rp":Lcom/android/systemui/plugins/ResourceProvider;
    sget v12, Lcom/android/launcher3/R$dimen;->swipe_up_rect_scale_damping_ratio:I

    invoke-interface {v11, v12}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v12

    .line 255
    .local v12, "damping":F
    sget v13, Lcom/android/launcher3/R$dimen;->swipe_up_rect_scale_stiffness:I

    invoke-interface {v11, v13}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v13

    .line 257
    .local v13, "stiffness":F
    new-instance v14, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v15, Lcom/android/quickstep/util/RectFSpringAnim;->RECT_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v14, v5, v15}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v15, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v15, v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 259
    invoke-virtual {v15, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v15

    .line 260
    invoke-virtual {v15, v13}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v15

    .line 258
    invoke-virtual {v14, v15}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v14

    iget v15, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v15, v4

    .line 261
    invoke-virtual {v14, v15}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v14

    check-cast v14, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 262
    invoke-virtual {v14, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 263
    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v14, Lcom/android/quickstep/util/RectFSpringAnim$$ExternalSyntheticLambda2;

    invoke-direct {v14, v5}, Lcom/android/quickstep/util/RectFSpringAnim$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    .line 264
    invoke-virtual {v6, v14}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v6, v5, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 269
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/quickstep/util/RectFSpringAnim;->setCanRelease(Z)V

    .line 270
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 272
    iget-object v6, v5, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/FlingSpringAnim;->start()V

    .line 273
    iget-object v6, v5, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnim:Lcom/android/launcher3/anim/FlingSpringAnim;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/FlingSpringAnim;->start()V

    .line 274
    iget-object v6, v5, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 275
    iget-object v6, v5, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/Animator$AnimatorListener;

    .line 276
    .local v14, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 277
    .end local v14    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method
