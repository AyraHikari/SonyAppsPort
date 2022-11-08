.class public Lcom/android/quickstep/views/FloatingWidgetView;
.super Landroid/widget/FrameLayout;
.source "FloatingWidgetView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/views/FloatingView;


# static fields
.field private static final sTmpMatrix:Landroid/graphics/Matrix;


# instance fields
.field private mAppTargetIsTranslucent:Z

.field private mAppWidgetBackgroundView:Landroid/view/View;

.field private mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private final mBackgroundOffset:Landroid/graphics/RectF;

.field private mBackgroundPosition:Landroid/graphics/RectF;

.field private final mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFastFinishRunnable:Ljava/lang/Runnable;

.field private mForegroundOverlayView:Landroid/view/GhostView;

.field private mIconOffsetY:F

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mListenerView:Lcom/android/launcher3/views/ListenerView;

.field private mOnTargetChangeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/FloatingWidgetView;->sTmpMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/FloatingWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/FloatingWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundOffset:Landroid/graphics/RectF;

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 84
    new-instance v0, Lcom/android/launcher3/views/ListenerView;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/views/ListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    .line 85
    new-instance v0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->addView(Landroid/view/View;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setWillNotDraw(Z)V

    .line 88
    return-void
.end method

.method private finish(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 2
    .param p1, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;

    .line 245
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAlpha(F)V

    .line 246
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 247
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->finish()V

    .line 251
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->endDeferringUpdates()V

    .line 252
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->recycle()V

    .line 253
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->floating_widget_view:I

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    .line 254
    return-void
.end method

.method public static getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 308
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getColorBackground(Landroid/content/Context;)I

    move-result v0

    .line 308
    :goto_0
    return v0
.end method

.method public static getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;
    .locals 12
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "originalView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "widgetBackgroundPosition"    # Landroid/graphics/RectF;
    .param p3, "windowSize"    # Landroid/util/Size;
    .param p4, "windowCornerRadius"    # F
    .param p5, "appTargetsAreTranslucent"    # Z
    .param p6, "fallbackBackgroundColor"    # I

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v8

    .line 291
    .local v8, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    invoke-virtual {v8}, Lcom/android/launcher3/dragndrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    .line 292
    .local v9, "parent":Landroid/view/ViewGroup;
    nop

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->floating_widget_view:I

    move-object v10, p0

    invoke-virtual {v0, v1, p0, v9}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/quickstep/views/FloatingWidgetView;

    .line 294
    .local v11, "floatingView":Lcom/android/quickstep/views/FloatingWidgetView;
    invoke-direct {v11}, Lcom/android/quickstep/views/FloatingWidgetView;->recycle()V

    .line 296
    move-object v0, v11

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/quickstep/views/FloatingWidgetView;->init(Lcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)V

    .line 298
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    return-object v11
.end method

.method private static getRelativePosition(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 8
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "ancestor"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/RectF;

    .line 314
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x2

    aput v2, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x3

    aput v2, v0, v5

    .line 315
    .local v0, "points":[F
    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 317
    aget v2, v0, v1

    aget v6, v0, v4

    .line 318
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aget v6, v0, v3

    aget v7, v0, v5

    .line 319
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aget v1, v0, v1

    aget v4, v0, v4

    .line 320
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aget v3, v0, v3

    aget v4, v0, v5

    .line 321
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 317
    invoke-virtual {p2, v2, v6, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    return-void
.end method

.method private init(Lcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)V
    .locals 3
    .param p1, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;
    .param p2, "originalView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p3, "widgetBackgroundPosition"    # Landroid/graphics/RectF;
    .param p4, "windowSize"    # Landroid/util/Size;
    .param p5, "windowCornerRadius"    # F
    .param p6, "appTargetIsTranslucent"    # Z
    .param p7, "fallbackBackgroundColor"    # I

    .line 160
    iput-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 162
    invoke-virtual {p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->beginDeferringUpdates()V

    .line 163
    iput-object p3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    .line 164
    iput-boolean p6, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppTargetIsTranslucent:Z

    .line 165
    new-instance v0, Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/launcher3/dragndrop/DragLayer;)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    .line 167
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    .line 168
    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    invoke-static {v0, p1, v1}, Lcom/android/quickstep/views/FloatingWidgetView;->getRelativePosition(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundOffset:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/views/FloatingWidgetView;->getRelativePosition(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 174
    iget-boolean v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppTargetIsTranslucent:Z

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p5, p7}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->init(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/view/View;FI)V

    .line 178
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/quickstep/views/FloatingWidgetView;->layout(IIII)V

    .line 179
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-static {v0, p0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    .line 180
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->positionViews()V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    new-instance v1, Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/FloatingWidgetView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method private isUninitialized()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private positionViews()V
    .locals 7

    .line 217
    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    iget-object v3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setTranslationX(F)V

    .line 223
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    iget-object v3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mIconOffsetY:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setTranslationY(F)V

    .line 224
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .local v2, "backgroundParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 226
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 227
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 228
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 229
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/android/quickstep/views/FloatingWidgetView;->sTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 233
    iget-object v3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    .line 234
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 235
    .local v3, "foregroundScale":F
    iget-object v4, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundOffset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundOffset:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    iget-object v6, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 236
    invoke-virtual {v6}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 235
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 237
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 238
    iget-object v4, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mIconOffsetY:F

    add-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 240
    iget-object v4, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    invoke-virtual {v4, v1}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    .line 242
    .end local v3    # "foregroundScale":F
    :cond_0
    return-void
.end method

.method private recycle()V
    .locals 2

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mIconOffsetY:F

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    .line 267
    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 268
    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    .line 269
    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    .line 270
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    .line 271
    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 272
    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    .line 273
    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->recycle()V

    .line 275
    return-void
.end method


# virtual methods
.method public fastFinish()V
    .locals 3

    .line 145
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 147
    .local v0, "fastFinishRunnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    .line 151
    .local v1, "endRunnable":Ljava/lang/Runnable;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    .line 152
    if-eqz v1, :cond_2

    .line 153
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 155
    :cond_2
    return-void
.end method

.method public getInitialCornerRadius()F
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->getMaximumRadius()F

    move-result v0

    return v0
.end method

.method synthetic lambda$init$0$com-android-quickstep-views-FloatingWidgetView(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 0
    .param p1, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/FloatingWidgetView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 105
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 92
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    .line 93
    .local v0, "endRunnable":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 109
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 101
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 114
    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 115
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 121
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->positionViews()V

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 130
    :cond_1
    return-void
.end method

.method public setFastFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 139
    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 140
    return-void
.end method

.method public setOnTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onTargetChangeListener"    # Ljava/lang/Runnable;

    .line 134
    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    .line 135
    return-void
.end method

.method public setPositionOffsetY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 211
    iput p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mIconOffsetY:F

    .line 212
    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->onGlobalLayout()V

    .line 213
    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFF)V
    .locals 1
    .param p1, "backgroundPosition"    # Landroid/graphics/RectF;
    .param p2, "floatingWidgetAlpha"    # F
    .param p3, "foregroundAlpha"    # F
    .param p4, "fallbackBackgroundAlpha"    # F
    .param p5, "cornerRadiusProgress"    # F

    .line 201
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->isUninitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppTargetIsTranslucent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/FloatingWidgetView;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {v0, p5, p4}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->update(FF)V

    .line 204
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAlpha(F)V

    .line 205
    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    .line 206
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->positionViews()V

    .line 207
    return-void

    .line 201
    :cond_1
    :goto_0
    return-void
.end method
