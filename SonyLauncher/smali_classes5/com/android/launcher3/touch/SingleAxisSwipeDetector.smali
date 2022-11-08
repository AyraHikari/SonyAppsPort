.class public Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
.super Lcom/android/launcher3/touch/BaseSwipeDetector;
.source "SingleAxisSwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;,
        Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTH:I = 0x3

.field public static final DIRECTION_NEGATIVE:I = 0x2

.field public static final DIRECTION_POSITIVE:I = 0x1

.field public static final HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

.field public static final VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;


# instance fields
.field private final mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

.field private final mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

.field private mScrollDirections:I

.field private mTouchSlopMultiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;

    invoke-direct {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 68
    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$2;

    invoke-direct {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/view/ViewConfiguration;
    .param p3, "l"    # Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;
    .param p4, "dir"    # Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
    .param p5, "isRtl"    # Z

    .line 117
    invoke-direct {p0, p1, p2, p5}, Lcom/android/launcher3/touch/BaseSwipeDetector;-><init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V

    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    .line 118
    iput-object p3, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    .line 119
    iput-object p4, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;
    .param p3, "dir"    # Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 109
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;-><init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V

    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    .line 110
    iput-object p2, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    .line 111
    iput-object p3, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 112
    return-void
.end method

.method private canScrollNegative(F)Z
    .locals 1
    .param p1, "displacement"    # F

    .line 165
    iget v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mScrollDirections:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->isNegative(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canScrollPositive(F)Z
    .locals 2
    .param p1, "displacement"    # F

    .line 169
    iget v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mScrollDirections:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->isPositive(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected reportDragEndInternal(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "velocity"    # Landroid/graphics/PointF;

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v0

    .line 187
    .local v0, "velocityComponent":F
    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    invoke-interface {v1, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;->onDragEnd(F)V

    .line 188
    return-void
.end method

.method protected reportDragStartInternal(Z)V
    .locals 3
    .param p1, "recatch"    # Z

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v0

    .line 175
    .local v0, "startDisplacement":F
    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;->onDragStart(ZF)V

    .line 176
    return-void
.end method

.method protected reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "displacement"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 181
    invoke-virtual {v2, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractOrthogonalDirection(Landroid/graphics/PointF;)F

    move-result v2

    .line 180
    invoke-interface {v0, v1, v2, p2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;->onDrag(FFLandroid/view/MotionEvent;)Z

    .line 182
    return-void
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 0
    .param p1, "scrollDirectionFlags"    # I
    .param p2, "ignoreSlop"    # Z

    .line 136
    iput p1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mScrollDirections:I

    .line 137
    iput-boolean p2, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mIgnoreSlopWhenSettling:Z

    .line 138
    return-void
.end method

.method public setTouchSlopMultiplier(F)V
    .locals 0
    .param p1, "touchSlopMultiplier"    # F

    .line 132
    iput p1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    .line 133
    return-void
.end method

.method protected shouldScrollStart(Landroid/graphics/PointF;)Z
    .locals 4
    .param p1, "displacement"    # Landroid/graphics/PointF;

    .line 153
    iget v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlop:F

    iget v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 154
    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractOrthogonalDirection(Landroid/graphics/PointF;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 155
    .local v0, "minDisplacement":F
    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 156
    return v2

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v1

    .line 161
    .local v1, "displacementComponent":F
    invoke-direct {p0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->canScrollNegative(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->canScrollPositive(F)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public wasInitialTouchPositive()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->isPositive(F)Z

    move-result v0

    return v0
.end method
