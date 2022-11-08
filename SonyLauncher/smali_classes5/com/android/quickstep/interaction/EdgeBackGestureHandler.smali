.class public Lcom/android/quickstep/interaction/EdgeBackGestureHandler;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;,
        Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;
    }
.end annotation


# static fields
.field private static final MAX_LONG_PRESS_TIMEOUT:I

.field private static final TAG:Ljava/lang/String; = "EdgeBackGestureHandler"


# instance fields
.field private mAllowGesture:Z

.field private final mBackCallback:Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;

.field private final mBottomGestureHeight:I

.field private final mContext:Landroid/content/Context;

.field private mDisallowedGestureReason:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

.field private final mEdgeWidth:I

.field private mGestureCallback:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

.field private mIsEnabled:Z

.field private mLeftInset:I

.field private final mLongPressTimeout:I

.field private mRightInset:I

.field private mThresholdCrossed:Z

.field private final mTouchSlop:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmEdgeBackPanel(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGesturePanel;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "gestures.back_timeout"

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 71
    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;-><init>(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mBackCallback:Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mTouchSlop:F

    .line 97
    sget v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    .line 98
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 100
    nop

    .line 101
    const-string v1, "navigation_bar_gesture_height"

    invoke-static {v1, v0}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mBottomGestureHeight:I

    .line 102
    const-string v1, "config_backGestureInset"

    invoke-static {v1, v0}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v1

    .line 104
    .local v1, "systemBackRegion":I
    if-nez v1, :cond_0

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeWidth:I

    .line 105
    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 172
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 173
    .local v0, "cancelEv":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 174
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 175
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 176
    return-void
.end method

.method private createLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 136
    const-string v2, "navigation_edge_panel_width"

    invoke-static {v2, v0}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v2

    .line 137
    const-string v3, "navigation_edge_panel_height"

    invoke-static {v3, v0}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    return-object v1
.end method

.method private isWithinTouchRegion(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 155
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeWidth:I

    iget v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_0

    .line 156
    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisallowedGestureReason:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 157
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mBottomGestureHeight:I

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_1

    .line 162
    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_IN_NAV_BAR_REGION:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisallowedGestureReason:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 163
    return v1

    .line 166
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 180
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeWidth:I

    iget v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 182
    .local v2, "isOnLeftEdge":Z
    :goto_0
    sget-object v4, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->UNKNOWN:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    iput-object v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisallowedGestureReason:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 184
    iget-object v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 185
    iget-boolean v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v4, :cond_6

    .line 186
    iget-object v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-virtual {v4, v2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setIsLeftPanel(Z)V

    .line 187
    iget-object v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-virtual {v4, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 188
    iput-boolean v3, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mThresholdCrossed:Z

    goto :goto_1

    .line 190
    .end local v2    # "isOnLeftEdge":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_6

    .line 191
    iget-boolean v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mThresholdCrossed:Z

    if-nez v2, :cond_5

    .line 192
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 194
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 195
    return-void

    .line 196
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 198
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 199
    return-void

    .line 201
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 202
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 203
    .local v3, "dy":F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    .line 204
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 205
    return-void

    .line 206
    :cond_4
    cmpl-float v4, v2, v3

    if-lez v4, :cond_5

    iget v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    .line 207
    iput-boolean v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 214
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_5
    iget-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-virtual {v2, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->onMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 190
    :cond_6
    :goto_1
    nop

    .line 217
    :goto_2
    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 218
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 219
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 220
    .local v2, "dy":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_8

    iget v3, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mAllowGesture:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    if-eqz v3, :cond_8

    .line 221
    iget-object v4, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisallowedGestureReason:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-interface {v3, v4}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;->onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V

    .line 224
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_8
    return-void
.end method


# virtual methods
.method onInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 142
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method registerBackGestureAttemptCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    .line 126
    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    .line 127
    return-void
.end method

.method setInsets(II)V
    .locals 0
    .param p1, "leftInset"    # I
    .param p2, "rightInset"    # I

    .line 227
    iput p1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mLeftInset:I

    .line 228
    iput p2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mRightInset:I

    .line 229
    return-void
.end method

.method setViewGroupParent(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 108
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mIsEnabled:Z

    .line 110
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->onDestroy()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->createLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    .line 118
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mBackCallback:Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setBackCallback(Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;)V

    .line 119
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    .line 120
    .local v0, "currentSize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 121
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mEdgeBackPanel:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    iget-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setDisplaySize(Landroid/graphics/Point;)V

    .line 123
    .end local v0    # "currentSize":Landroid/graphics/Point;
    :cond_2
    return-void
.end method

.method unregisterBackGestureAttemptCallback()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    .line 131
    return-void
.end method
