.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SaveFlags;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$State;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final CORNER_ANIMATION_DURATION:I = 0x1f4

.field private static final DEF_STYLE_RES:I

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field private static final NO_MAX_SIZE:I = -0x1

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final SAVE_ALL:I = -0x1

.field public static final SAVE_FIT_TO_CONTENTS:I = 0x2

.field public static final SAVE_HIDEABLE:I = 0x4

.field public static final SAVE_NONE:I = 0x0

.field public static final SAVE_PEEK_HEIGHT:I = 0x1

.field public static final SAVE_SKIP_COLLAPSED:I = 0x8

.field private static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BottomSheetBehavior"


# instance fields
.field activePointerId:I

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childHeight:I

.field collapsedOffset:I

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private draggable:Z

.field elevation:F

.field private expandHalfwayActionId:I

.field expandedOffset:I

.field private fitToContents:Z

.field fitToContentsOffset:I

.field private gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field halfExpandedOffset:I

.field halfExpandedRatio:F

.field hideable:Z

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private insetBottom:I

.field private insetTop:I

.field private interpolatorAnimator:Landroid/animation/ValueAnimator;

.field private isShapeExpanded:Z

.field private lastNestedScrollDy:I

.field lastStableState:I

.field private marginLeftSystemWindowInsets:Z

.field private marginRightSystemWindowInsets:Z

.field private marginTopSystemWindowInsets:Z

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private maxHeight:I

.field private maxWidth:I

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private paddingBottomSystemWindowInsets:Z

.field private paddingLeftSystemWindowInsets:Z

.field private paddingRightSystemWindowInsets:Z

.field private paddingTopSystemWindowInsets:Z

.field parentHeight:I

.field parentWidth:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightGestureInsetBuffer:I

.field private peekHeightMin:I

.field private saveFlags:I

.field private settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>.SettleRunnable;"
        }
    .end annotation
.end field

.field private shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private skipCollapsed:Z

.field state:I

.field touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomSheet_Modal:I

    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 306
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 206
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 228
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 260
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 264
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 270
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 272
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 274
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 304
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 1608
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 309
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 206
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 226
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 228
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    .line 248
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 260
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 264
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 270
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 272
    const/4 v5, 0x4

    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 274
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 304
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 1608
    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v5, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 311
    nop

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    .line 314
    sget-object v5, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 315
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-static {p1, v5, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 319
    :cond_0
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    sget v6, Lcom/google/android/material/R$attr;->bottomSheetStyle:I

    sget v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    .line 321
    invoke-static {p1, p2, v6, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v6

    .line 322
    invoke-virtual {v6}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 324
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V

    .line 325
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createShapeValueAnimator()V

    .line 327
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 328
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 331
    :cond_2
    sget v4, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxWidth:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 332
    sget v4, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxWidth:I

    .line 333
    invoke-virtual {v5, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 332
    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxWidth(I)V

    .line 337
    :cond_3
    sget v4, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxHeight:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 338
    sget v4, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxHeight:I

    .line 339
    invoke-virtual {v5, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 338
    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    .line 343
    :cond_4
    sget v4, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 344
    .local v4, "value":Landroid/util/TypedValue;
    if-eqz v4, :cond_5

    iget v6, v4, Landroid/util/TypedValue;->data:I

    if-ne v6, v2, :cond_5

    .line 345
    iget v2, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0

    .line 347
    :cond_5
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 348
    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 347
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 351
    :goto_0
    sget v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v5, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 352
    sget v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I

    .line 353
    invoke-virtual {v5, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 352
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    .line 354
    sget v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 355
    invoke-virtual {v5, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 354
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    .line 356
    sget v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 357
    invoke-virtual {v5, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 356
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 358
    sget v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v5, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 359
    sget v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v5, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSaveFlags(I)V

    .line 360
    sget v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    .line 361
    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 360
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    .line 363
    sget v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 364
    .end local v4    # "value":Landroid/util/TypedValue;
    .local v2, "value":Landroid/util/TypedValue;
    if-eqz v2, :cond_6

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 365
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    goto :goto_1

    .line 367
    :cond_6
    sget v3, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    .line 368
    invoke-virtual {v5, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 367
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    .line 373
    :goto_1
    sget v3, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets:I

    .line 374
    invoke-virtual {v5, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    .line 375
    sget v3, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets:I

    .line 376
    invoke-virtual {v5, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    .line 377
    sget v3, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingRightSystemWindowInsets:I

    .line 378
    invoke-virtual {v5, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    .line 381
    sget v3, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingTopSystemWindowInsets:I

    .line 382
    invoke-virtual {v5, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    .line 383
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginLeftSystemWindowInsets:I

    .line 384
    invoke-virtual {v5, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    .line 385
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginRightSystemWindowInsets:I

    .line 386
    invoke-virtual {v5, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    .line 387
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginTopSystemWindowInsets:I

    .line 388
    invoke-virtual {v5, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    .line 390
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 391
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 392
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .param p1, "x1"    # Z

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    return p1
.end method

.method private addAccessibilityActionForState(Landroid/view/View;II)I
    .locals 2
    .param p2, "stringResId"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;II)I"
        }
    .end annotation

    .line 2143
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    nop

    .line 2145
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2146
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object v1

    .line 2143
    invoke-static {p1, v0, v1}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I

    move-result v0

    return v0
.end method

.method private calculateCollapsedOffset()V
    .locals 3

    .line 1340
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 1342
    .local v0, "peek":I
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_0

    .line 1343
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0

    .line 1345
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 1347
    :goto_0
    return-void
.end method

.method private calculateHalfExpandedOffset()V
    .locals 3

    .line 1350
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1351
    return-void
.end method

.method private calculatePeekHeight()I
    .locals 3

    .line 1327
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    .line 1328
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1329
    .local v0, "desiredHeight":I
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v1, v2

    return v1

    .line 1333
    .end local v0    # "desiredHeight":I
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    if-lez v0, :cond_1

    .line 1334
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1336
    :cond_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method private createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;
    .locals 1
    .param p1, "state"    # I

    .line 2150
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    return-object v0
.end method

.method private createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1419
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-nez v0, :cond_0

    .line 1420
    return-void

    .line 1423
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1424
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 1426
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 1427
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1430
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1431
    .local v0, "defaultColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1432
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 1434
    .end local v0    # "defaultColor":Landroid/util/TypedValue;
    :goto_0
    return-void
.end method

.method private createShapeValueAnimator()V
    .locals 3

    .line 1441
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 1442
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1443
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1453
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 2003
    .local p0, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2004
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 2007
    move-object v1, v0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2008
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 2009
    .local v1, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    instance-of v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v2, :cond_0

    .line 2012
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v2

    .line 2010
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2005
    .end local v1    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The view is not a child of CoordinatorLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getChildMeasureSpec(IIII)I
    .locals 5
    .param p1, "parentMeasureSpec"    # I
    .param p2, "padding"    # I
    .param p3, "maxSize"    # I
    .param p4, "childDimension"    # I

    .line 470
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 471
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 472
    return v0

    .line 474
    :cond_0
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 475
    .local v1, "mode":I
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 476
    .local v2, "size":I
    packed-switch v1, :pswitch_data_0

    .line 483
    if-nez v2, :cond_1

    move v3, p3

    goto :goto_0

    .line 478
    :pswitch_0
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 483
    :cond_1
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    const/high16 v4, -0x80000000

    .line 482
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method private getYVelocity()F
    .locals 3

    .line 1545
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1546
    const/4 v0, 0x0

    return v0

    .line 1548
    :cond_0
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1549
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
    .locals 2
    .param p2, "action"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            "I)V"
        }
    .end annotation

    .line 2137
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    nop

    .line 2138
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object v0

    .line 2137
    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 2139
    return-void
.end method

.method private reset()V
    .locals 1

    .line 1354
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 1355
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1359
    :cond_0
    return-void
.end method

.method private restoreOptionalState(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V
    .locals 3
    .param p1, "ss"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 1362
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-nez v0, :cond_0

    .line 1363
    return-void

    .line 1365
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 1366
    :cond_1
    iget v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 1368
    :cond_2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 1370
    :cond_3
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 1372
    :cond_4
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_5

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    .line 1373
    :cond_5
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 1375
    :cond_6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 1377
    :cond_7
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 1379
    :cond_8
    return-void
.end method

.method private setWindowInsetsListener(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1458
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1459
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1462
    .local v0, "shouldHandleGestureInsets":Z
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 1469
    return-void

    .line 1471
    :cond_1
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 1542
    return-void
.end method

.method private settleToStatePendingLayout(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1239
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1240
    .local v0, "child":Landroid/view/View;, "TV;"
    if-nez v0, :cond_0

    .line 1241
    return-void

    .line 1244
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1245
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    move v2, p1

    .line 1247
    .local v2, "finalState":I
    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1254
    .end local v2    # "finalState":I
    goto :goto_0

    .line 1255
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToState(Landroid/view/View;I)V

    .line 1257
    :goto_0
    return-void
.end method

.method private shouldHandleDraggingWithHelper()Z
    .locals 2

    .line 1415
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateAccessibilityActions()V
    .locals 5

    .line 2083
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 2084
    return-void

    .line 2086
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2087
    .local v0, "child":Landroid/view/View;, "TV;"
    if-nez v0, :cond_1

    .line 2088
    return-void

    .line 2090
    :cond_1
    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 2091
    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 2092
    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 2094
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2095
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 2097
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    const/4 v2, 0x6

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v1, v2, :cond_3

    .line 2098
    sget v1, Lcom/google/android/material/R$string;->bottomsheet_action_expand_halfway:I

    .line 2099
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 2103
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    .line 2104
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 2108
    :cond_4
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2118
    :pswitch_1
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 2120
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 2122
    goto :goto_0

    .line 2126
    :pswitch_2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    move v1, v2

    .line 2127
    .local v1, "nextState":I
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 2129
    goto :goto_0

    .line 2111
    .end local v1    # "nextState":I
    :pswitch_3
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_6

    move v2, v4

    :cond_6
    move v1, v2

    .line 2112
    .restart local v1    # "nextState":I
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 2114
    nop

    .line 2133
    .end local v1    # "nextState":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDrawableForTargetState(I)V
    .locals 7
    .param p1, "state"    # I

    .line 1305
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1307
    return-void

    .line 1310
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1311
    .local v1, "expand":Z
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    if-eq v4, v1, :cond_4

    .line 1312
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 1313
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    .line 1314
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_2

    .line 1317
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move v5, v4

    .line 1318
    .local v5, "to":F
    :goto_1
    sub-float/2addr v4, v5

    .line 1319
    .local v4, "from":F
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    aput v4, v0, v3

    aput v5, v0, v2

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1320
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1324
    .end local v4    # "from":F
    .end local v5    # "to":F
    :cond_4
    :goto_2
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .locals 8
    .param p1, "expanded"    # Z

    .line 2028
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 2029
    return-void

    .line 2032
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2033
    .local v0, "viewParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    .line 2034
    return-void

    .line 2037
    :cond_1
    move-object v1, v0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2038
    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 2039
    .local v2, "childCount":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    if-eqz p1, :cond_3

    .line 2040
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 2041
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_0

    .line 2044
    :cond_2
    return-void

    .line 2048
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_8

    .line 2049
    invoke-virtual {v1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2050
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 2051
    goto :goto_2

    .line 2054
    :cond_4
    if-eqz p1, :cond_6

    .line 2056
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_5

    .line 2057
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    :cond_5
    iget-boolean v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v6, :cond_7

    .line 2060
    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_2

    .line 2064
    :cond_6
    iget-boolean v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v6, :cond_7

    .line 2066
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2068
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2048
    .end local v5    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2073
    .end local v3    # "i":I
    :cond_8
    if-nez p1, :cond_9

    .line 2074
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_3

    .line 2075
    :cond_9
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v3, :cond_a

    .line 2078
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2080
    :cond_a
    :goto_3
    return-void
.end method

.method private updatePeekHeight(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 971
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 972
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 973
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 974
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 975
    .local v0, "view":Landroid/view/View;, "TV;"
    if-eqz v0, :cond_1

    .line 976
    if-eqz p1, :cond_0

    .line 977
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    invoke-direct {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToStatePendingLayout(I)V

    goto :goto_0

    .line 979
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 984
    .end local v0    # "view":Landroid/view/View;, "TV;"
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 1179
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_0
    return-void
.end method

.method public disableShapeAnimations()V
    .locals 1

    .line 1818
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 1819
    return-void
.end method

.method dispatchOnSlide(I)V
    .locals 4
    .param p1, "top"    # I

    .line 1790
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1791
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1793
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-gt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1795
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v1, p1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_1

    .line 1794
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v1, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v2, v1

    .line 1795
    :goto_1
    move v1, v2

    .line 1796
    .local v1, "slideOffset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1797
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 1796
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1800
    .end local v1    # "slideOffset":F
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 1397
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    return-object p1

    .line 1400
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1401
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 1402
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1403
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1404
    .local v3, "scrollingChild":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1405
    return-object v3

    .line 1402
    .end local v3    # "scrollingChild":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1409
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedOffset()I
    .locals 2

    .line 1058
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_0

    .line 1059
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_1

    .line 1060
    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1058
    :goto_1
    return v0
.end method

.method public getHalfExpandedRatio()F
    .locals 1

    .line 1030
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    return v0
.end method

.method public getLastStableState()I
    .locals 1

    .line 1888
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    return v0
.end method

.method getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    .line 1437
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 926
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 903
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    return v0
.end method

.method public getPeekHeight()I
    .locals 1

    .line 995
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :goto_0
    return v0
.end method

.method getPeekHeightMin()I
    .locals 1

    .line 1804
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    return v0
.end method

.method public getSaveFlags()I
    .locals 1

    .line 1148
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .locals 1

    .line 1111
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1267
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 1126
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    return v0
.end method

.method public isFitToContents()Z
    .locals 1

    .line 855
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method public isGestureInsetBottomIgnored()Z
    .locals 1

    .line 1235
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return v0
.end method

.method public isHideable()Z
    .locals 1

    .line 1087
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    return v0
.end method

.method public isNestedScrollingCheckEnabled()Z
    .locals 1

    .line 1829
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 420
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 424
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 425
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    .line 429
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 432
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 433
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 568
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 572
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 574
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    .line 577
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 578
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 580
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 581
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 584
    :pswitch_1
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 585
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 587
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz v4, :cond_6

    .line 588
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 589
    return v1

    .line 593
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 594
    .local v6, "initialX":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 597
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v7, v5, :cond_4

    .line 598
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v7, v3

    .line 599
    .local v7, "scroll":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_4

    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 600
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 601
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 604
    .end local v7    # "scroll":Landroid/view/View;
    :cond_4
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    if-ne v7, v4, :cond_5

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 606
    invoke-virtual {p1, p2, v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 607
    nop

    .line 610
    .end local v6    # "initialX":I
    :cond_6
    :goto_2
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_7

    .line 612
    invoke-virtual {v4, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 613
    return v2

    .line 618
    :cond_7
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 619
    .local v3, "scroll":Landroid/view/View;
    :cond_8
    if-ne v0, v5, :cond_9

    if-eqz v3, :cond_9

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_9

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v4, v2, :cond_9

    .line 623
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float v4, v4

    .line 625
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    move v1, v2

    goto :goto_3

    :cond_9
    nop

    .line 619
    :goto_3
    return v1

    .line 569
    .end local v0    # "action":I
    .end local v3    # "scroll":Landroid/view/View;
    :cond_a
    :goto_4
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 570
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 491
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 497
    nop

    .line 498
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/material/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 499
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V

    .line 500
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 503
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_4

    .line 504
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 506
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 507
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v4

    .line 506
    :cond_1
    invoke-virtual {v0, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 509
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 510
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    goto :goto_2

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    .line 512
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 514
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 515
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6

    .line 517
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_7

    .line 521
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 524
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 526
    .local v0, "savedTop":I
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 528
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    .line 529
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 530
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 531
    iget v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int v4, v5, v4

    iget v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    if-ge v4, v6, :cond_9

    .line 532
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    if-eqz v4, :cond_8

    .line 535
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    goto :goto_3

    .line 538
    :cond_8
    sub-int v4, v5, v6

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 541
    :cond_9
    :goto_3
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 542
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 543
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 545
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v3, v2, :cond_a

    .line 546
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_4

    .line 547
    :cond_a
    const/4 v2, 0x6

    if-ne v3, v2, :cond_b

    .line 548
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_4

    .line 549
    :cond_b
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    if-ne v3, v2, :cond_c

    .line 550
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_4

    .line 551
    :cond_c
    const/4 v2, 0x4

    if-ne v3, v2, :cond_d

    .line 552
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_4

    .line 553
    :cond_d
    if-eq v3, v1, :cond_e

    const/4 v2, 0x2

    if-ne v3, v2, :cond_f

    .line 554
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 557
    :cond_f
    :goto_4
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 559
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 560
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v3, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onLayout(Landroid/view/View;)V

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 562
    .end local v2    # "i":I
    :cond_10
    return v1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 5
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 444
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 447
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    .line 448
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 445
    invoke-direct {p0, p3, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v1

    .line 454
    .local v1, "childWidthMeasureSpec":I
    nop

    .line 457
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    .line 458
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p6

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 455
    invoke-direct {p0, p5, v2, v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v2

    .line 464
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    .line 465
    const/4 v3, 0x1

    return v3
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 840
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 841
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 843
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 841
    :goto_0
    return v1

    .line 845
    :cond_2
    return v1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 6
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 681
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 683
    return-void

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 686
    .local v1, "scrollingChild":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p3, v1, :cond_2

    .line 687
    return-void

    .line 689
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 690
    .local v2, "currentTop":I
    sub-int v3, v2, p5

    .line 691
    .local v3, "newTop":I
    if-lez p5, :cond_5

    .line 692
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 693
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 694
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 695
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 697
    :cond_3
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v4, :cond_4

    .line 699
    return-void

    .line 702
    :cond_4
    aput p5, p6, v0

    .line 703
    neg-int v4, p5

    invoke-static {p2, v4}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 704
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 706
    :cond_5
    if-gez p5, :cond_9

    .line 707
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 708
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-le v3, v4, :cond_7

    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v5, :cond_6

    goto :goto_1

    .line 718
    :cond_6
    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 719
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 720
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 709
    :cond_7
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v4, :cond_8

    .line 711
    return-void

    .line 714
    :cond_8
    aput p5, p6, v0

    .line 715
    neg-int v4, p5

    invoke-static {p2, v4}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 716
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 724
    :cond_9
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 725
    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 726
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 727
    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .param p9, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 830
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 404
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    move-object v0, p3

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 405
    .local v0, "ss":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 407
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->restoreOptionalState(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V

    .line 409
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 414
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    goto :goto_1

    .line 410
    :cond_1
    :goto_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 411
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    .line 416
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 2
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 667
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 668
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 669
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 735
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 736
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 737
    return-void

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    if-nez v0, :cond_2

    .line 743
    :cond_1
    return-void

    .line 747
    :cond_2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-lez v0, :cond_5

    .line 748
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_3

    .line 749
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 750
    .local v0, "top":I
    const/4 v1, 0x3

    .local v1, "targetState":I
    goto/16 :goto_2

    .line 752
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 753
    .local v0, "currentTop":I
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_4

    .line 754
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 755
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .local v2, "targetState":I
    goto :goto_0

    .line 757
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    .line 758
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .line 760
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_0
    goto/16 :goto_2

    .line 761
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 762
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 763
    .restart local v0    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto/16 :goto_2

    .line 764
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez v0, :cond_d

    .line 765
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 766
    .local v0, "currentTop":I
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_8

    .line 767
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 768
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 769
    .local v1, "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 771
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_7
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 772
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 775
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_8
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_b

    .line 776
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 777
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    .line 778
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 780
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 781
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 782
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 784
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_a
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 785
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 789
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_b
    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 790
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 791
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 793
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_c
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 794
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 798
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_1
    goto :goto_2

    .line 799
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_e

    .line 800
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 801
    .restart local v0    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_2

    .line 804
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 805
    .local v0, "currentTop":I
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 806
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 807
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_2

    .line 809
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_f
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 810
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 814
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 815
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 816
    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 631
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    return v0

    .line 634
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 635
    .local v0, "action":I
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 636
    return v2

    .line 638
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 639
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 642
    :cond_2
    if-nez v0, :cond_3

    .line 643
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    .line 645
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_4

    .line 646
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 648
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 651
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v1, :cond_5

    .line 652
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 653
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 656
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 1190
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1191
    return-void
.end method

.method public setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1160
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const-string v0, "BottomSheetBehavior"

    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1168
    if-eqz p1, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .line 1122
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 1123
    return-void
.end method

.method public setExpandedOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 1044
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    if-ltz p1, :cond_0

    .line 1047
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 1048
    return-void

    .line 1045
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFitToContents(Z)V
    .locals 2
    .param p1, "fitToContents"    # Z

    .line 866
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_0

    .line 867
    return-void

    .line 869
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 873
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 874
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 877
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 879
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 880
    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .locals 0
    .param p1, "gestureInsetBottomIgnored"    # Z

    .line 1228
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    .line 1229
    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .line 1011
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1014
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 1017
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1018
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 1020
    :cond_0
    return-void

    .line 1012
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ratio must be a float value between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHideable(Z)V
    .locals 2
    .param p1, "hideable"    # Z

    .line 1070
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eq v0, p1, :cond_1

    .line 1071
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 1072
    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1074
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 1076
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 1078
    :cond_1
    return-void
.end method

.method public setHideableInternal(Z)V
    .locals 0
    .param p1, "hideable"    # Z

    .line 1875
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 1876
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .line 915
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    .line 916
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .line 892
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 893
    return-void
.end method

.method public setPeekHeight(I)V
    .locals 1
    .param p1, "peekHeight"    # I

    .line 938
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    .line 939
    return-void
.end method

.method public final setPeekHeight(IZ)V
    .locals 2
    .param p1, "peekHeight"    # I
    .param p2, "animate"    # Z

    .line 952
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 953
    .local v0, "layout":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 954
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_2

    .line 955
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 956
    const/4 v0, 0x1

    goto :goto_0

    .line 958
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    if-eq v1, p1, :cond_2

    .line 959
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 960
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 961
    const/4 v0, 0x1

    .line 965
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 966
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    .line 968
    :cond_3
    return-void
.end method

.method public setSaveFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 1138
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 1139
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0
    .param p1, "skipCollapsed"    # Z

    .line 1099
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 1100
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1201
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne p1, v0, :cond_0

    .line 1202
    return-void

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 1206
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1210
    :cond_1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 1211
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    .line 1213
    :cond_2
    return-void

    .line 1215
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToStatePendingLayout(I)V

    .line 1216
    return-void
.end method

.method setStateInternal(I)V
    .locals 5
    .param p1, "state"    # I

    .line 1271
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_0

    .line 1272
    return-void

    .line 1274
    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 1275
    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v4, :cond_2

    if-ne p1, v0, :cond_2

    .line 1279
    :cond_1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    .line 1282
    :cond_2
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_3

    .line 1283
    return-void

    .line 1286
    :cond_3
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1287
    .local v4, "bottomSheet":Landroid/view/View;
    if-nez v4, :cond_4

    .line 1288
    return-void

    .line 1291
    :cond_4
    if-ne p1, v2, :cond_5

    .line 1292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_0

    .line 1293
    :cond_5
    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_6

    if-ne p1, v3, :cond_7

    .line 1294
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 1297
    :cond_7
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    .line 1298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1299
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v4, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1301
    .end local v0    # "i":I
    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 1302
    return-void
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .locals 0
    .param p1, "updateImportantForAccessibilityOnSiblings"    # Z

    .line 2024
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 2025
    return-void
.end method

.method settleToState(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I

    .line 1554
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1555
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .local v0, "top":I
    goto :goto_0

    .line 1556
    .end local v0    # "top":I
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 1557
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1558
    .restart local v0    # "top":I
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v0, v1, :cond_3

    .line 1560
    const/4 p2, 0x3

    .line 1561
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_0

    .line 1563
    .end local v0    # "top":I
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1564
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    .restart local v0    # "top":I
    goto :goto_0

    .line 1565
    .end local v0    # "top":I
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 1566
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 1576
    .restart local v0    # "top":I
    :cond_3
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 1577
    return-void

    .line 1570
    .end local v0    # "top":I
    :cond_4
    const-string v0, "BottomSheetBehavior"

    const-string v1, "The bottom sheet may be in an invalid state. Ensure `hideable` is true when using `STATE_HIDDEN`."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return-void
.end method

.method public shouldExpandOnUpwardDrag(JF)Z
    .locals 1
    .param p1, "dragDurationMillis"    # J
    .param p3, "yPositionPercentage"    # F

    .line 1864
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "yvel"    # F

    .line 1382
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1383
    return v1

    .line 1385
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 1387
    return v3

    .line 1389
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 1390
    .local v0, "peek":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    .line 1391
    .local v2, "newTop":F
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method public shouldSkipHalfExpandedStateWhenDragging()Z
    .locals 1

    .line 1840
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipSmoothAnimation()Z
    .locals 1

    .line 1850
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method startSettlingAnimation(Landroid/view/View;IIZ)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I
    .param p3, "top"    # I
    .param p4, "settleFromViewDragHelper"    # Z

    .line 1581
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 1584
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, v2, p3}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    nop

    .line 1585
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, p1, v2, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1586
    .local v0, "startedSettling":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1587
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 1589
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    .line 1590
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    if-nez v2, :cond_2

    .line 1592
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 1595
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->access$1100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1596
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    iput p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 1597
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1598
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    invoke-static {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;Z)Z

    goto :goto_2

    .line 1601
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    iput p2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    goto :goto_2

    .line 1604
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 1606
    :goto_2
    return-void
.end method
