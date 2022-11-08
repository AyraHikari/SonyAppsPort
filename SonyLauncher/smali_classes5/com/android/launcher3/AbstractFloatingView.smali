.class public abstract Lcom/android/launcher3/AbstractFloatingView;
.super Landroid/widget/LinearLayout;
.source "AbstractFloatingView.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/AbstractFloatingView$FloatingViewType;
    }
.end annotation


# static fields
.field public static final TYPE_ACCESSIBLE:I = 0x7fcbf

.field public static final TYPE_ACTION_POPUP:I = 0x2

.field public static final TYPE_ADD_TO_HOME_CONFIRMATION:I = 0x40000

.field public static final TYPE_ALL:I = 0x7ffff

.field public static final TYPE_ALL_APPS_EDU:I = 0x200

.field public static final TYPE_DISCOVERY_BOUNCE:I = 0x40

.field public static final TYPE_DRAG_DROP_POPUP:I = 0x400

.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_HIDE_BACK_BUTTON:I = 0x1e8

.field public static final TYPE_ICON_SURFACE:I = 0x2000

.field public static final TYPE_LISTENER:I = 0x100

.field public static final TYPE_ON_BOARD_POPUP:I = 0x20

.field public static final TYPE_OPTIONS_POPUP:I = 0x1000

.field public static final TYPE_OPTIONS_POPUP_DIALOG:I = 0x40000

.field public static final TYPE_PIN_WIDGET_FROM_EXTERNAL_POPUP:I = 0x4000

.field public static final TYPE_REBIND_SAFE:I = 0x7a274

.field public static final TYPE_SNACKBAR:I = 0x80

.field public static final TYPE_STATUS_BAR_SWIPE_DOWN_DISALLOW:I = 0xc7c

.field public static final TYPE_TASKBAR_ALL_APPS:I = 0x20000

.field public static final TYPE_TASKBAR_EDUCATION_DIALOG:I = 0x10000

.field public static final TYPE_TASK_MENU:I = 0x800

.field public static final TYPE_WIDGETS_BOTTOM_SHEET:I = 0x4

.field public static final TYPE_WIDGETS_EDUCATION_DIALOG:I = 0x8000

.field public static final TYPE_WIDGETS_FULL_SHEET:I = 0x10

.field public static final TYPE_WIDGET_RESIZE_FRAME:I = 0x8


# instance fields
.field protected mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;

    .line 275
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    .line 276
    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "animate"    # Z

    .line 270
    const v0, 0x7ffff

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 271
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->finishAutoCancelActionMode()Z

    .line 272
    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;I)V
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I

    .line 286
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 287
    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "animate"    # Z
    .param p2, "type"    # I

    .line 280
    not-int v0, p2

    const v1, 0x7ffff

    and-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 281
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->finishAutoCancelActionMode()Z

    .line 282
    return-void
.end method

.method public static closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I

    .line 247
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 248
    .local v0, "view":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 251
    :cond_0
    return-void
.end method

.method public static closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V
    .locals 5
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "animate"    # Z
    .param p2, "type"    # I

    .line 255
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 258
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 259
    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v3, :cond_0

    .line 261
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/AbstractFloatingView;

    .line 262
    .local v3, "abs":Lcom/android/launcher3/AbstractFloatingView;
    invoke-virtual {v3, p2}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {v3, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 258
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "abs":Lcom/android/launcher3/AbstractFloatingView;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    .line 208
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method

.method public static getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;

    .line 290
    const v0, 0x7ffff

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method

.method public static getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I

    .line 295
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method

.method private static getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;
    .locals 6
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I
    .param p2, "mustBeOpen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "IZ)TT;"
        }
    .end annotation

    .line 229
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 230
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 234
    invoke-virtual {v0, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 235
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v4, :cond_2

    .line 236
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/AbstractFloatingView;

    .line 237
    .local v4, "view":Lcom/android/launcher3/AbstractFloatingView;
    invoke-virtual {v4, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    :cond_1
    return-object v4

    .line 233
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "view":Lcom/android/launcher3/AbstractFloatingView;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 242
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method public static hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I

    .line 215
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0
    .param p1, "distanceToMove"    # F
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "target"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 159
    return-void
.end method

.method protected announceAccessibilityChanges()V
    .locals 4

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityTarget()Landroid/util/Pair;

    move-result-object v0

    .line 180
    .local v0, "targetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x20

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 186
    iget-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    const/16 v2, 0x800

    .line 191
    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/BaseDragLayer;->sendAccessibilityEvent(I)V

    .line 192
    return-void

    .line 181
    :cond_2
    :goto_0
    return-void
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 1

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public final close(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 144
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    and-int/2addr p1, v0

    .line 145
    nop

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->handleClose(Z)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    .line 150
    return-void
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 0

    .line 200
    return-object p0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract handleClose(Z)V
.end method

.method protected abstract isOfType(I)Z
.end method

.method public final isOpen()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 170
    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 140
    const/4 v0, 0x1

    return v0
.end method
