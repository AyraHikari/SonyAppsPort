.class Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "TaskbarAllAppsContext.java"

# interfaces
.implements Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskbarAllAppsDragLayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
        ">;",
        "Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->setClipChildren(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->recreateControllers()V

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateInsetsDueToStashing(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8
    .param p1, "oldInsets"    # Landroid/view/WindowInsets;

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->-$$Nest$fgetmWillTaskbarBeVisuallyStashed(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    return-object p1

    .line 234
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    .line 236
    .local v0, "updatedInsetsBuilder":Landroid/view/WindowInsets$Builder;
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 237
    .local v1, "oldNavInsets":Landroid/graphics/Insets;
    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->mActivity:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {v5}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->-$$Nest$fgetmStashedTaskbarHeight(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    .line 239
    .local v2, "newNavInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 241
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    .line 242
    .local v3, "oldTappableInsets":Landroid/graphics/Insets;
    iget v4, v3, Landroid/graphics/Insets;->left:I

    iget v5, v3, Landroid/graphics/Insets;->top:I

    iget v6, v3, Landroid/graphics/Insets;->right:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    .line 244
    .local v4, "newTappableInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 200
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 202
    .local v0, "topView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    return v1

    .line 206
    .end local v0    # "topView":Lcom/android/launcher3/AbstractFloatingView;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 194
    const-string v0, "Main"

    const-string v1, "Touch event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 195
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 219
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->updateInsetsDueToStashing(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/android/launcher3/views/BaseDragLayer;->onAttachedToWindow()V

    .line 177
    nop

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 177
    invoke-static {v0, p0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper;->addOnComputeInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;)V

    .line 179
    return-void
.end method

.method public onComputeInsets(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .locals 1
    .param p1, "inoutInfo"    # Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->-$$Nest$fgetmDragController(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p1, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 213
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    .line 215
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 183
    invoke-super {p0}, Lcom/android/launcher3/views/BaseDragLayer;->onDetachedFromWindow()V

    .line 184
    invoke-static {p0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper;->removeOnComputeInsetsListener(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;)V

    .line 185
    return-void
.end method

.method public recreateControllers()V
    .locals 3

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->-$$Nest$fgetmDragController(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 190
    return-void
.end method
