.class public Lcom/android/launcher3/taskbar/TaskbarDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "TaskbarDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

.field private mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

.field private mTaskbarBackgroundOffset:F

.field private final mTaskbarInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;


# direct methods
.method public static synthetic $r8$lambda$X4JdMUITRNuuPAvcU0sUXt48mzM(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->onComputeTaskbarInsets(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragLayer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    .line 68
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    .line 69
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    return-void
.end method

.method private onComputeTaskbarInsets(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .locals 1
    .param p1, "insetsInfo"    # Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->updateInsetsTouchability(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method protected canFindActiveController()Z
    .locals 1

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->getTaskbarBackgroundHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarBackgroundOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 126
    .local v0, "backgroundHeight":F
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setBackgroundHeight(F)V

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->draw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 129
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 160
    .local v0, "topView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    return v1

    .line 165
    .end local v0    # "topView":Lcom/android/launcher3/AbstractFloatingView;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 151
    const-string v0, "Main"

    const-string v1, "Touch event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 152
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    .line 73
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->recreateControllers()V

    .line 76
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/android/launcher3/views/BaseDragLayer;->onAttachedToWindow()V

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper;->addOnComputeInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;)V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    invoke-static {v0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper;->removeOnComputeInsetsListener(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;)V

    .line 91
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/android/launcher3/views/BaseDragLayer;->onDetachedFromWindow()V

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->onDestroy()V

    .line 105
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 116
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->onViewRemoved(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->onDragLayerViewRemoved()V

    .line 120
    :cond_0
    return-void
.end method

.method public recreateControllers()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->getTouchControllers()[Lcom/android/launcher3/util/TouchController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 81
    return-void
.end method

.method protected setTaskbarBackgroundAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->invalidate()V

    .line 138
    return-void
.end method

.method protected setTaskbarBackgroundOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .line 145
    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarBackgroundOffset:F

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->invalidate()V

    .line 147
    return-void
.end method
