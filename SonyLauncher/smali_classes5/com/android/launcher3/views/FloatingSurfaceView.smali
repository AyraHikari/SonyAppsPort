.class public Lcom/android/launcher3/views/FloatingSurfaceView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "FloatingSurfaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/Insettable;
.implements Landroid/view/SurfaceHolder$Callback2;


# instance fields
.field private mContract:Lcom/android/launcher3/GestureNavContract;

.field private mIcon:Landroid/view/View;

.field private final mIconBounds:Landroid/graphics/Rect;

.field private final mIconPosition:Landroid/graphics/RectF;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPicture:Landroid/graphics/Picture;

.field private final mRemoveViewRunnable:Ljava/lang/Runnable;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private final mTmpPosition:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$AsWNBYIvCfVHK9lOu2bUslmDlmc(Lcom/android/launcher3/views/FloatingSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->removeViewFromParent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mTmpPosition:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    .line 61
    new-instance v0, Lcom/android/launcher3/views/FloatingSurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/FloatingSurfaceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/FloatingSurfaceView;)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mRemoveViewRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 80
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 83
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, -0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 84
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 85
    iput-boolean v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIsOpen:Z

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method private drawOnSurface()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 231
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 232
    .local v1, "c":Landroid/graphics/Canvas;
    if-eqz v1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 236
    :cond_0
    return-void
.end method

.method private removeViewFromParent()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeViewInLayout(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method private removeViewImmediate()V
    .locals 2

    .line 110
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->removeViewFromParent()V

    .line 112
    return-void
.end method

.method private sendIconInfo()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/GestureNavContract;->sendEndPosition(Landroid/graphics/RectF;Lcom/android/launcher3/views/ActivityContext;Landroid/view/SurfaceControl;)V

    .line 206
    :cond_0
    return-void
.end method

.method private setCurrentIconVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 240
    invoke-static {v0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    .line 242
    :cond_0
    return-void
.end method

.method public static show(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/GestureNavContract;)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "contract"    # Lcom/android/launcher3/GestureNavContract;

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->floating_surface_view:I

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/FloatingSurfaceView;

    .line 120
    .local v0, "view":Lcom/android/launcher3/views/FloatingSurfaceView;
    iput-object p1, v0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIsOpen:Z

    .line 123
    invoke-direct {v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->removeViewImmediate()V

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method private updateIconLocation()V
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, -0x1

    iget-object v0, v0, Lcom/android/launcher3/GestureNavContract;->componentName:Landroid/content/ComponentName;

    .line 166
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    iget-object v3, v3, Lcom/android/launcher3/GestureNavContract;->user:Landroid/os/UserHandle;

    .line 165
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/launcher3/Launcher;->getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "icon":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    .line 170
    .local v1, "iconChanged":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 171
    invoke-direct {p0, v2}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    .line 172
    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    .line 173
    invoke-direct {p0, v4}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    .line 176
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mTmpPosition:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    invoke-static {v3, v0, v4, v5, v6}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 179
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mTmpPosition:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mTmpPosition:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->sendIconInfo()V

    .line 183
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 185
    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 186
    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 187
    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 190
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 192
    invoke-direct {p0, v2}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    .line 193
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 194
    .local v2, "c":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 196
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v3}, Landroid/graphics/Picture;->endRecording()V

    .line 197
    invoke-direct {p0, v4}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    .line 198
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->drawOnSurface()V

    .line 200
    .end local v2    # "c":Landroid/graphics/Canvas;
    :cond_4
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->floating_surface_view:I

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    .line 94
    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIsOpen:Z

    .line 98
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mRemoveViewRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 99
    invoke-static {v2}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 129
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onAttachedToWindow()V

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->updateIconLocation()V

    .line 144
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->close(Z)V

    .line 135
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->removeViewImmediate()V

    .line 136
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    .line 151
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->updateIconLocation()V

    .line 156
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 159
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 217
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->drawOnSurface()V

    .line 218
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 210
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->drawOnSurface()V

    .line 211
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->sendIconInfo()V

    .line 212
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 221
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 225
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->drawOnSurface()V

    .line 226
    return-void
.end method
