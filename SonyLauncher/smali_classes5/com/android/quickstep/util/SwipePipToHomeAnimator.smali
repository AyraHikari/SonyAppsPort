.class public Lcom/android/quickstep/util/SwipePipToHomeAnimator;
.super Lcom/android/quickstep/util/RectFSpringAnim;
.source "SwipePipToHomeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;,
        Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    }
.end annotation


# static fields
.field private static final END_PROGRESS:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppBounds:Landroid/graphics/Rect;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mContentOverlay:Landroid/view/SurfaceControl;

.field private final mCurrentBounds:Landroid/graphics/Rect;

.field private final mCurrentBoundsF:Landroid/graphics/RectF;

.field private final mDestinationBounds:Landroid/graphics/Rect;

.field private final mDestinationBoundsTransformed:Landroid/graphics/Rect;

.field private final mFromRotation:I

.field private mHasAnimationEnded:Z

.field private final mHomeToWindowPositionMap:Landroid/graphics/Matrix;

.field private final mInsetsEvaluator:Landroid/animation/RectEvaluator;

.field private final mLeash:Landroid/view/SurfaceControl;

.field private final mSourceHintRectInsets:Landroid/graphics/Rect;

.field private final mSourceInsets:Landroid/graphics/Rect;

.field private final mSourceRectHint:Landroid/graphics/Rect;

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

.field private final mTaskId:I


# direct methods
.method public static synthetic $r8$lambda$fJALBBz2USxdC4QKgVVF6rScYbQ(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/graphics/RectF;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/graphics/RectF;F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHasAnimationEnded(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHasAnimationEnded(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "leash"    # Landroid/view/SurfaceControl;
    .param p5, "sourceRectHint"    # Landroid/graphics/Rect;
    .param p6, "appBounds"    # Landroid/graphics/Rect;
    .param p7, "homeToWindowPositionMap"    # Landroid/graphics/Matrix;
    .param p8, "startBounds"    # Landroid/graphics/RectF;
    .param p9, "destinationBounds"    # Landroid/graphics/Rect;
    .param p10, "fromRotation"    # I
    .param p11, "destinationBoundsTransformed"    # Landroid/graphics/Rect;
    .param p12, "cornerRadius"    # I
    .param p13, "shadowRadius"    # I
    .param p14, "view"    # Landroid/view/View;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p11

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-direct {v0, v3, v5, v7, v6}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    .line 59
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceRectHint:Landroid/graphics/Rect;

    .line 60
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    .line 61
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    .line 62
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    .line 64
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    .line 65
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 69
    new-instance v12, Landroid/animation/RectEvaluator;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v12, v13}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    .line 71
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceInsets:Landroid/graphics/Rect;

    .line 75
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    .line 123
    move/from16 v13, p2

    iput v13, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mTaskId:I

    .line 124
    move-object/from16 v14, p3

    iput-object v14, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mComponentName:Landroid/content/ComponentName;

    .line 125
    iput-object v1, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 126
    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    move-object/from16 v8, p7

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 128
    invoke-virtual {v3, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 129
    move-object/from16 v9, p9

    invoke-virtual {v11, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    move/from16 v10, p10

    iput v10, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    .line 131
    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 132
    new-instance v11, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    move/from16 v12, p12

    move/from16 v15, p13

    invoke-direct {v11, v12, v15}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;-><init>(II)V

    iput-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    .line 134
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt v11, v6, :cond_0

    .line 135
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 140
    :cond_0
    const/4 v6, 0x0

    .end local p5    # "sourceRectHint":Landroid/graphics/Rect;
    .local v6, "sourceRectHint":Landroid/graphics/Rect;
    goto :goto_0

    .line 143
    .end local v6    # "sourceRectHint":Landroid/graphics/Rect;
    .restart local p5    # "sourceRectHint":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v6, p5

    .end local p5    # "sourceRectHint":Landroid/graphics/Rect;
    .restart local v6    # "sourceRectHint":Landroid/graphics/Rect;
    :goto_0
    if-nez v6, :cond_2

    .line 144
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 145
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    .line 148
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    .line 149
    .local v5, "session":Landroid/view/SurfaceSession;
    new-instance v11, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v11, v5}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 150
    const-string v3, "SwipePipToHomeAnimator"

    invoke-virtual {v11, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 151
    const-string v11, "PipContentOverlay"

    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mContentOverlay:Landroid/view/SurfaceControl;

    .line 154
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 155
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mContentOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 156
    iget-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mContentOverlay:Landroid/view/SurfaceControl;

    const v4, 0x7fffffff

    invoke-virtual {v3, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 157
    invoke-virtual/range {p14 .. p14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/util/Themes;->getColorBackground(Landroid/content/Context;)I

    move-result v4

    .line 158
    .local v4, "color":I
    const/4 v11, 0x3

    new-array v11, v11, [F

    const/16 v16, 0x0

    move-object/from16 p5, v5

    .end local v5    # "session":Landroid/view/SurfaceSession;
    .local p5, "session":Landroid/view/SurfaceSession;
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v5, v5, v17

    aput v5, v11, v16

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v17

    const/16 v16, 0x1

    aput v5, v11, v16

    .line 159
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v17

    const/16 v16, 0x2

    aput v5, v11, v16

    move-object v5, v11

    .line 160
    .local v5, "bgColor":[F
    iget-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mContentOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v11, v5}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 161
    iget-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mContentOverlay:Landroid/view/SurfaceControl;

    move/from16 v16, v4

    .end local v4    # "color":I
    .local v16, "color":I
    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 162
    iget-object v4, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mContentOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 163
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 165
    new-instance v4, Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    .line 173
    .end local v3    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v5    # "bgColor":[F
    .end local v16    # "color":I
    .end local p5    # "session":Landroid/view/SurfaceSession;
    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 175
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v6, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v11

    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v1, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    .line 181
    :goto_1
    new-instance v1, Lcom/android/quickstep/util/SwipePipToHomeAnimator$1;

    move-object/from16 v2, p14

    invoke-direct {v1, v0, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$1;-><init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    new-instance v1, Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;Lcom/android/quickstep/util/SwipePipToHomeAnimator-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;)V

    return-void
.end method

.method private getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;
    .locals 5
    .param p1, "progress"    # F

    .line 287
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 288
    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v3, :cond_0

    .line 289
    sub-float v0, v4, p1

    mul-float/2addr v0, v1

    .line 290
    .local v0, "degree":F
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 292
    .local v1, "positionX":F
    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .local v2, "positionY":F
    goto/16 :goto_0

    .line 295
    .end local v0    # "degree":F
    .end local v1    # "positionX":F
    .end local v2    # "positionY":F
    :cond_0
    sub-float v0, v4, p1

    mul-float/2addr v0, v2

    .line 296
    .restart local v0    # "degree":F
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v4, p1

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 298
    .restart local v1    # "positionX":F
    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .restart local v2    # "positionY":F
    goto :goto_0

    .line 302
    .end local v0    # "degree":F
    .end local v1    # "positionX":F
    .end local v2    # "positionY":F
    :cond_1
    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    if-ne v0, v3, :cond_2

    .line 303
    mul-float v0, p1, v1

    .line 304
    .restart local v0    # "degree":F
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 306
    .restart local v1    # "positionX":F
    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .restart local v2    # "positionY":F
    goto :goto_0

    .line 309
    .end local v0    # "degree":F
    .end local v1    # "positionX":F
    .end local v2    # "positionY":F
    :cond_2
    mul-float v0, p1, v2

    .line 310
    .restart local v0    # "degree":F
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 312
    .restart local v1    # "positionX":F
    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 317
    .restart local v2    # "positionY":F
    :goto_0
    new-instance v3, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;-><init>(FFFLcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition-IA;)V

    return-object v3
.end method

.method private onAnimationScale(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 9
    .param p1, "progress"    # F
    .param p2, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 235
    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1, v2, p3}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v0

    return-object v0

    .line 236
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    move-result-object v0

    .line 237
    .local v0, "rotatedPosition":Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->-$$Nest$fgetdegree(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v6

    invoke-static {v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->-$$Nest$fgetpositionX(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v7

    invoke-static {v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->-$$Nest$fgetpositionY(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v8

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v1

    return-object v1
.end method

.method private onAnimationScaleAndCrop(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 12
    .param p1, "progress"    # F
    .param p2, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 248
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 250
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v5, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    move-object v4, p2

    move-object v8, p3

    move-object v9, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scaleAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v1

    return-object v1

    .line 251
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    move-result-object v1

    .line 252
    .local v1, "rotatedPosition":Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;
    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v5, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->-$$Nest$fgetdegree(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v9

    invoke-static {v1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->-$$Nest$fgetpositionX(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v10

    invoke-static {v1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->-$$Nest$fgetpositionY(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v11

    move-object v4, p2

    move-object v7, p3

    move-object v8, v0

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scaleAndRotate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v2

    return-object v2
.end method

.method private onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 1
    .param p1, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "currentRect"    # Landroid/graphics/RectF;
    .param p3, "progress"    # F

    .line 220
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 222
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p1, v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationScale(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v0

    .local v0, "op":Landroid/window/PictureInPictureSurfaceTransaction;
    goto :goto_0

    .line 227
    .end local v0    # "op":Landroid/window/PictureInPictureSurfaceTransaction;
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p1, v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationScaleAndCrop(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v0

    .line 229
    .restart local v0    # "op":Landroid/window/PictureInPictureSurfaceTransaction;
    :goto_0
    return-object v0
.end method

.method private onAnimationUpdate(Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "currentRect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F

    .line 210
    iget-boolean v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 213
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 214
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;

    .line 215
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 216
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentOverlay()Landroid/view/SurfaceControl;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mContentOverlay:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getDestinationBounds()Landroid/graphics/Rect;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFinishTransaction()Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 3

    .line 281
    invoke-static {}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 282
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v1

    return-object v1
.end method

.method public getTaskId()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mTaskId:I

    return v0
.end method

.method synthetic lambda$new$0$com-android-quickstep-util-SwipePipToHomeAnimator(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)V
    .locals 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "currentRect"    # Landroid/graphics/RectF;
    .param p3, "progress"    # F

    .line 166
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    :goto_0
    nop

    .line 170
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mContentOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 171
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 172
    return-void
.end method
