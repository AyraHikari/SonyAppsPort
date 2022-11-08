.class public abstract Lcom/android/launcher3/views/BaseDragLayer;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "BaseDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;,
        Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/InsettableFrameLayout;"
    }
.end annotation


# static fields
.field public static final LAYOUT_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYOUT_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_DISPATCHING_FROM_PROXY:I = 0x4

.field private static final TOUCH_DISPATCHING_FROM_VIEW:I = 0x1

.field private static final TOUCH_DISPATCHING_FROM_VIEW_GESTURE_REGION:I = 0x2

.field private static final TOUCH_DISPATCHING_TO_VIEW_IN_PROGRESS:I = 0x8


# instance fields
.field protected mActiveController:Lcom/android/launcher3/util/TouchController;

.field protected final mActivity:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mControllers:[Lcom/android/launcher3/util/TouchController;

.field protected final mHitRect:Landroid/graphics/Rect;

.field private final mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field protected mProxyTouchController:Lcom/android/launcher3/util/TouchController;

.field private final mSystemGestureRegion:Landroid/graphics/RectF;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected final mTmpRectPoints:[F

.field protected final mTmpXY:[F

.field private mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

.field private mTouchDispatchState:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$1;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "x"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_X:Landroid/util/Property;

    .line 72
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$2;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "y"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "alphaChannelCount"    # I

    .line 125
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[F

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpRectPoints:[F

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mSystemGestureRegion:Landroid/graphics/RectF;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 126
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-direct {v0, p0, p3}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 128
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 129
    return-void
.end method

.method private findControllerToHandleTouch(Landroid/view/MotionEvent;)Lcom/android/launcher3/util/TouchController;
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 179
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 180
    .local v0, "topView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventInLauncher(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->canInterceptEventsInSystemGestureRegion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    return-object v0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 187
    .local v4, "controller":Lcom/android/launcher3/util/TouchController;
    invoke-interface {v4, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    return-object v4

    .line 186
    .end local v4    # "controller":Lcom/android/launcher3/util/TouchController;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private isEventInLauncher(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 171
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 172
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 174
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mSystemGestureRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/views/BaseDragLayer;->mSystemGestureRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mSystemGestureRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/views/BaseDragLayer;->mSystemGestureRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 174
    :goto_0
    return v2
.end method

.method static synthetic lambda$onViewRemoved$0(Lcom/android/launcher3/AbstractFloatingView;)V
    .locals 1
    .param p0, "floatingView"    # Lcom/android/launcher3/AbstractFloatingView;

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method


# virtual methods
.method protected addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    .local p2, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 243
    :goto_0
    return-void
.end method

.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    .local p1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const v1, 0x7fcbf

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 229
    .local v0, "topView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 235
    :goto_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 470
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 471
    .local v0, "topView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/InsettableFrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    .line 476
    :goto_0
    return-void
.end method

.method protected canFindActiveController()Z
    .locals 1

    .line 205
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    and-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 499
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    instance-of v0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 555
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 557
    .local v0, "gestureInsets":Landroid/graphics/Insets;
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    .line 558
    .local v1, "gestureInsetBottom":I
    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 559
    .local v2, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v3, v2, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v3, :cond_0

    .line 561
    const/4 v3, 0x0

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    sub-int v4, v1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 563
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/views/BaseDragLayer;->mSystemGestureRegion:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/Insets;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Insets;->top:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Insets;->right:I

    int-to-float v6, v6

    int-to-float v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 566
    .end local v0    # "gestureInsets":Landroid/graphics/Insets;
    .end local v1    # "gestureInsetBottom":I
    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 278
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 299
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 300
    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 301
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    goto :goto_0

    .line 280
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 283
    .local v0, "action":I
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 284
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 287
    .end local v0    # "action":I
    :cond_0
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    or-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 290
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventInLauncher(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    goto :goto_0

    .line 293
    :cond_1
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 295
    nop

    .line 304
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 307
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 512
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DragLayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tactiveController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/launcher3/util/TouchController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tdragLayerAlpha : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method protected findActiveController(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 195
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->canFindActiveController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->findControllerToHandleTouch(Landroid/view/MotionEvent;)Lcom/android/launcher3/util/TouchController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 56
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 56
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .line 56
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .locals 2

    .line 493
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 56
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 56
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 56
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 0

    .line 56
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 0

    .line 56
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 488
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 504
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAlphaProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 1
    .param p1, "index"    # I

    .line 508
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [F

    .line 395
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "includeRootScroll"    # Z

    .line 412
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .line 387
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[F

    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 388
    const/4 v1, 0x1

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 389
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result v0

    .line 390
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[F

    invoke-static {v1, p2}, Lcom/android/launcher3/Utilities;->roundArray([F[I)V

    .line 391
    return v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 7
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 368
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpRectPoints:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 369
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpRectPoints:[F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x3

    aput v2, v0, v5

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpRectPoints:[F

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result v0

    .line 373
    .local v0, "s":F
    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpRectPoints:[F

    aget v6, v2, v1

    aget v2, v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 374
    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpRectPoints:[F

    aget v6, v2, v3

    aget v2, v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 375
    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpRectPoints:[F

    aget v1, v2, v1

    aget v2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpRectPoints:[F

    aget v2, v1, v3

    aget v1, v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 377
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "loc"    # [I

    .line 381
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    const/4 v0, 0x0

    aput v0, p2, v0

    .line 382
    const/4 v1, 0x1

    aput v0, p2, v1

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method protected getViewLocationRelativeToSelf(Landroid/view/View;)[I
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 447
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 448
    .local v0, "loc":[I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInWindow([I)V

    .line 449
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 450
    .local v2, "x":I
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 452
    .local v4, "y":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 453
    aget v5, v0, v1

    sub-int/2addr v5, v2

    aput v5, v0, v1

    .line 454
    aget v1, v0, v3

    sub-int/2addr v1, v4

    aput v1, v0, v3

    .line 455
    return-object v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 442
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getViewLocationRelativeToSelf(Landroid/view/View;)[I

    move-result-object v0

    .line 443
    .local v0, "loc":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v3, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p2, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    return-void
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 140
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "evView"    # Landroid/view/View;

    .line 149
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 150
    .local v0, "xy":[I
    invoke-virtual {p0, p3, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public mapCoordInSelfToDescendant(Landroid/view/View;[F)V
    .locals 0
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [F

    .line 428
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 429
    return-void
.end method

.method public mapCoordInSelfToDescendant(Landroid/view/View;[I)V
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .line 435
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[F

    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 436
    const/4 v1, 0x1

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 437
    invoke-static {p1, p0, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[F

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->roundArray([F[I)V

    .line 439
    return-void
.end method

.method public mapRectInSelfToDescendant(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 421
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapRectInSelfToDescendant(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 422
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 157
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 159
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    if-nez v0, :cond_3

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->finishAutoCancelActionMode()Z

    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    if-eqz v1, :cond_2

    .line 161
    invoke-interface {v1}, Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 163
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    .line 167
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 538
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 539
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v0

    .line 540
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 541
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 542
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 543
    .local v3, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v4, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    if-eqz v4, :cond_0

    .line 544
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 545
    .local v4, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 546
    iget v5, v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 540
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 460
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 461
    .local v0, "topView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 464
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 212
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const v1, 0x7fcbf

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 214
    .local v0, "topView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 215
    if-ne p1, v0, :cond_0

    .line 216
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 220
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 222
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 260
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 261
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    if-eqz v1, :cond_1

    .line 263
    invoke-interface {v1}, Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 265
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v1, :cond_3

    .line 269
    invoke-interface {v1, p1}, Lcom/android/launcher3/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 272
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 247
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 248
    instance-of v0, p1, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v0, :cond_0

    .line 251
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/AbstractFloatingView;

    .line 252
    .local v0, "floatingView":Lcom/android/launcher3/AbstractFloatingView;
    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Lcom/android/launcher3/views/BaseDragLayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/views/BaseDragLayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/AbstractFloatingView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher3/views/BaseDragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    .end local v0    # "floatingView":Lcom/android/launcher3/AbstractFloatingView;
    :cond_0
    return-void
.end method

.method public proxyTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "allowViewDispatch"    # Z

    .line 314
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 315
    .local v0, "actionMasked":I
    iget v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 320
    .local v2, "isViewDispatching":Z
    :goto_0
    if-eqz p2, :cond_2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_2

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    move p2, v5

    .line 324
    const/4 v5, 0x3

    if-eqz p2, :cond_5

    .line 325
    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 326
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 328
    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_4

    .line 329
    :cond_3
    iget v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 330
    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 332
    :cond_4
    return v4

    .line 335
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/views/BaseDragLayer;->mProxyTouchController:Lcom/android/launcher3/util/TouchController;

    if-eqz v6, :cond_6

    .line 336
    invoke-interface {v6, p1}, Lcom/android/launcher3/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_3

    .line 338
    .end local v1    # "handled":Z
    :cond_6
    if-nez v0, :cond_8

    .line 339
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v6, :cond_7

    .line 341
    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    goto :goto_2

    .line 344
    :cond_7
    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 347
    :cond_8
    :goto_2
    iget v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    .line 348
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->findControllerToHandleTouch(Landroid/view/MotionEvent;)Lcom/android/launcher3/util/TouchController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mProxyTouchController:Lcom/android/launcher3/util/TouchController;

    .line 350
    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mProxyTouchController:Lcom/android/launcher3/util/TouchController;

    if-eqz v1, :cond_a

    move v3, v4

    :cond_a
    move v1, v3

    .line 352
    .restart local v1    # "handled":Z
    :goto_3
    if-eq v0, v4, :cond_b

    if-ne v0, v5, :cond_c

    .line 353
    :cond_b
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/views/BaseDragLayer;->mProxyTouchController:Lcom/android/launcher3/util/TouchController;

    .line 354
    iget v3, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchDispatchState:I

    .line 356
    :cond_c
    return v1
.end method

.method public abstract recreateControllers()V
.end method

.method public setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    .line 479
    .local p0, "this":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    .line 480
    return-void
.end method
