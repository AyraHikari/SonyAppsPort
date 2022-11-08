.class public Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
.super Ljava/lang/Object;
.source "SwipePipToHomeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/SwipePipToHomeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppBounds:Landroid/graphics/Rect;

.field private mAttachedView:Landroid/view/View;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private mDestinationBounds:Landroid/graphics/Rect;

.field private final mDestinationBoundsTransformed:Landroid/graphics/Rect;

.field private mDisplayCutoutInsets:Landroid/graphics/Rect;

.field private mFromRotation:I

.field private mHomeToWindowPositionMap:Landroid/graphics/Matrix;

.field private mLeash:Landroid/view/SurfaceControl;

.field private mShadowRadius:I

.field private mSourceRectHint:Landroid/graphics/Rect;

.field private mStartBounds:Landroid/graphics/RectF;

.field private mTaskId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mFromRotation:I

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/quickstep/util/SwipePipToHomeAnimator;
    .locals 19

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 426
    :cond_0
    iget-object v1, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDisplayCutoutInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 427
    iget v3, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mFromRotation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 428
    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDisplayCutoutInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 429
    :cond_1
    const/4 v1, 0x3

    if-ne v3, v1, :cond_2

    .line 430
    iget-object v1, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 433
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iget-object v4, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mTaskId:I

    iget-object v6, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mComponentName:Landroid/content/ComponentName;

    iget-object v7, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mLeash:Landroid/view/SurfaceControl;

    iget-object v8, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mAppBounds:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mStartBounds:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBounds:Landroid/graphics/Rect;

    iget v13, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mFromRotation:I

    iget-object v14, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v15, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mCornerRadius:I

    iget v2, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mShadowRadius:I

    iget-object v3, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mAttachedView:Landroid/view/View;

    const/16 v18, 0x0

    move-object/from16 v17, v3

    move-object v3, v1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v18}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;Lcom/android/quickstep/util/SwipePipToHomeAnimator-IA;)V

    return-object v1
.end method

.method public setAppBounds(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 1
    .param p1, "appBounds"    # Landroid/graphics/Rect;

    .line 364
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mAppBounds:Landroid/graphics/Rect;

    .line 365
    return-object p0
.end method

.method public setAttachedView(Landroid/view/View;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 0
    .param p1, "attachedView"    # Landroid/view/View;

    .line 394
    iput-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mAttachedView:Landroid/view/View;

    .line 395
    return-object p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 349
    iput-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 350
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 339
    iput-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mContext:Landroid/content/Context;

    .line 340
    return-object p0
.end method

.method public setCornerRadius(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 0
    .param p1, "cornerRadius"    # I

    .line 384
    iput p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mCornerRadius:I

    .line 385
    return-object p0
.end method

.method public setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 1
    .param p1, "destinationBounds"    # Landroid/graphics/Rect;

    .line 379
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBounds:Landroid/graphics/Rect;

    .line 380
    return-object p0
.end method

.method public setFromRotation(Lcom/android/quickstep/util/TaskViewSimulator;ILandroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 4
    .param p1, "taskViewSimulator"    # Lcom/android/quickstep/util/TaskViewSimulator;
    .param p2, "fromRotation"    # I
    .param p3, "displayCutoutInsets"    # Landroid/graphics/Rect;

    .line 401
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 402
    invoke-static {}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a supported rotation, rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-object p0

    .line 405
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 406
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    .line 410
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 411
    .local v1, "transformed":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 412
    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 414
    iput p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mFromRotation:I

    .line 415
    if-eqz p3, :cond_1

    .line 416
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mDisplayCutoutInsets:Landroid/graphics/Rect;

    .line 418
    :cond_1
    return-object p0
.end method

.method public setHomeToWindowPositionMap(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 1
    .param p1, "homeToWindowPositionMap"    # Landroid/graphics/Matrix;

    .line 369
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    .line 370
    return-object p0
.end method

.method public setLeash(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 0
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 354
    iput-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mLeash:Landroid/view/SurfaceControl;

    .line 355
    return-object p0
.end method

.method public setShadowRadius(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 0
    .param p1, "shadowRadius"    # I

    .line 389
    iput p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mShadowRadius:I

    .line 390
    return-object p0
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 1
    .param p1, "sourceRectHint"    # Landroid/graphics/Rect;

    .line 359
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    .line 360
    return-object p0
.end method

.method public setStartBounds(Landroid/graphics/RectF;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 1
    .param p1, "startBounds"    # Landroid/graphics/RectF;

    .line 374
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mStartBounds:Landroid/graphics/RectF;

    .line 375
    return-object p0
.end method

.method public setTaskId(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    .locals 0
    .param p1, "taskId"    # I

    .line 344
    iput p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->mTaskId:I

    .line 345
    return-object p0
.end method
