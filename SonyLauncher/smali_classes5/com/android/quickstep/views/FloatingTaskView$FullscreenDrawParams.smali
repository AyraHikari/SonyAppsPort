.class public Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;
.super Ljava/lang/Object;
.source "FloatingTaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/FloatingTaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullscreenDrawParams"
.end annotation


# instance fields
.field public final mBounds:Landroid/graphics/RectF;

.field private final mCornerRadius:F

.field public mCurrentDrawnCornerRadius:F

.field public mIsStagedTask:Z

.field public mScaleX:F

.field public mScaleY:F

.field private final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mBounds:Landroid/graphics/RectF;

    .line 286
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mScaleX:F

    .line 287
    iput v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mScaleY:F

    .line 290
    invoke-static {p1}, Lcom/android/quickstep/util/TaskCornerRadius;->get(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mCornerRadius:F

    .line 291
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    .line 293
    iput v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    .line 294
    return-void
.end method


# virtual methods
.method public setIsStagedTask(Z)V
    .locals 0
    .param p1, "isStagedTask"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mIsStagedTask:Z

    .line 306
    return-void
.end method

.method public updateParams(Landroid/graphics/RectF;FFF)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F

    .line 297
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 298
    iput p3, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mScaleX:F

    .line 299
    iput p4, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mScaleY:F

    .line 300
    iget-boolean v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mIsStagedTask:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    goto :goto_0

    .line 301
    :cond_0
    iget v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mCornerRadius:F

    iget v1, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    .line 302
    return-void
.end method
