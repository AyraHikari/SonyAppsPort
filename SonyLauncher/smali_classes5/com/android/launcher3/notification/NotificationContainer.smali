.class public Lcom/android/launcher3/notification/NotificationContainer;
.super Landroid/widget/FrameLayout;
.source "NotificationContainer.java"

# interfaces
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# static fields
.field private static final DRAG_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/notification/NotificationContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

.field private mDragTranslationX:F

.field private mIgnoreTouch:Z

.field private final mNotificationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field private final mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

.field private final mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

.field private final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDragTranslationX(Lcom/android/launcher3/notification/NotificationContainer;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mDragTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupContainer(Lcom/android/launcher3/notification/NotificationContainer;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeDetector(Lcom/android/launcher3/notification/NotificationContainer;)Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDragTranslationX(Lcom/android/launcher3/notification/NotificationContainer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->setDragTranslationX(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/launcher3/notification/NotificationContainer$1;

    const-string v1, "notificationProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/notification/NotificationContainer$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/notification/NotificationContainer;->DRAG_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationContainer;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/notification/NotificationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIgnoreTouch:Z

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mDragTranslationX:F

    .line 87
    new-instance v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    .line 88
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 89
    sget-object v2, Lcom/android/launcher3/notification/NotificationContainer;->DRAG_TRANSLATION_X:Landroid/util/FloatProperty;

    const/4 v3, 0x1

    new-array v3, v3, [F

    aput v1, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$layout;->notification_content:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationMainView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/launcher3/R$layout;->notification_content:I

    invoke-static {v2, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/notification/NotificationMainView;

    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    .line 95
    invoke-virtual {v2, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/launcher3/notification/NotificationContainer;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationContainer;->addView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method private setDragTranslationX(F)V
    .locals 3
    .param p1, "translationX"    # F

    .line 189
    iput p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mDragTranslationX:F

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 192
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->onPrimaryDrag(F)V

    .line 193
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v1}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->onSecondaryDrag(F)V

    .line 198
    :goto_0
    return-void
.end method


# virtual methods
.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "notificationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 151
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    .line 156
    .local v0, "mainNotification":Lcom/android/launcher3/notification/NotificationInfo;
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 157
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 158
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationInfo;

    goto :goto_0

    .line 159
    :cond_1
    nop

    .line 157
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 160
    return-void
.end method

.method public onDrag(F)Z
    .locals 3
    .param p1, "displacement"    # F

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result v0

    int-to-float p1, v0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 213
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->onPrimaryDrag(F)V

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v1}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->onSecondaryDrag(F)V

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 220
    const/4 v1, 0x1

    return v1
.end method

.method public onDragEnd(F)V
    .locals 9
    .param p1, "velocity"    # F

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getTranslationX()F

    move-result v0

    .line 228
    .local v0, "startTranslation":F
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 230
    .local v1, "width":F
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v2}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "willExit":Z
    const/4 v3, 0x0

    .local v3, "endTranslation":F
    goto :goto_2

    .line 233
    .end local v2    # "willExit":Z
    .end local v3    # "endTranslation":F
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isFling(F)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 234
    const/4 v2, 0x1

    .line 235
    .restart local v2    # "willExit":Z
    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    neg-float v3, v1

    goto :goto_0

    :cond_1
    move v3, v1

    .restart local v3    # "endTranslation":F
    :goto_0
    goto :goto_2

    .line 236
    .end local v2    # "willExit":Z
    .end local v3    # "endTranslation":F
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 237
    const/4 v2, 0x1

    .line 238
    .restart local v2    # "willExit":Z
    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    neg-float v3, v1

    goto :goto_1

    :cond_3
    move v3, v1

    .restart local v3    # "endTranslation":F
    :goto_1
    goto :goto_2

    .line 240
    .end local v2    # "willExit":Z
    .end local v3    # "endTranslation":F
    :cond_4
    const/4 v2, 0x0

    .line 241
    .restart local v2    # "willExit":Z
    const/4 v3, 0x0

    .line 244
    .restart local v3    # "endTranslation":F
    :goto_2
    sub-float v4, v3, v0

    div-float/2addr v4, v1

    invoke-static {p1, v4}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v4

    .line 247
    .local v4, "duration":J
    iget-object v6, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 248
    iget-object v6, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 249
    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v6, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 252
    iget-object v6, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    .line 253
    .local v6, "current":Lcom/android/launcher3/notification/NotificationMainView;
    iget-object v7, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/android/launcher3/notification/NotificationContainer$2;

    invoke-direct {v8, p0, v2, v6}, Lcom/android/launcher3/notification/NotificationContainer$2;-><init>(Lcom/android/launcher3/notification/NotificationContainer;ZLcom/android/launcher3/notification/NotificationMainView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    iget-object v7, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 264
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showArrow(Z)V

    .line 204
    return-void
.end method

.method public onInterceptSwipeEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/launcher3/notification/NotificationContainer;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationContainer;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIgnoreTouch:Z

    .line 113
    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIgnoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 118
    return v1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 122
    return v1

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public onSwipeEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 133
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIgnoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 138
    return v1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPopupView(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0
    .param p1, "popupView"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 103
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 104
    return-void
.end method

.method public trimNotifications(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "notificationKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 168
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/notification/NotificationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v1, v1, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationInfo;

    goto :goto_1

    .line 176
    :cond_2
    move-object v1, v2

    :goto_1
    nop

    .line 177
    .local v1, "primaryInfo":Lcom/android/launcher3/notification/NotificationInfo;
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 178
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/notification/NotificationInfo;

    goto :goto_2

    .line 179
    :cond_3
    nop

    :goto_2
    nop

    .line 181
    .local v2, "secondaryInfo":Lcom/android/launcher3/notification/NotificationInfo;
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 182
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 184
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/notification/NotificationMainView;->onPrimaryDrag(F)V

    .line 185
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/notification/NotificationMainView;->onSecondaryDrag(F)V

    .line 186
    return-void
.end method

.method public updateBackgroundColor(ILandroid/animation/AnimatorSet;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "animatorSetOut"    # Landroid/animation/AnimatorSet;

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/notification/NotificationMainView;->updateBackgroundColor(ILandroid/animation/AnimatorSet;)V

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/notification/NotificationMainView;->updateBackgroundColor(ILandroid/animation/AnimatorSet;)V

    .line 274
    return-void
.end method

.method public updateHeader(I)V
    .locals 2
    .param p1, "notificationCount"    # I

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->updateHeader(I)V

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->updateHeader(I)V

    .line 282
    return-void
.end method
