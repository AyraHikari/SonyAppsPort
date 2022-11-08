.class final Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TaskOutlineProvider"
.end annotation


# instance fields
.field private mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

.field private mMarginTop:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fullscreenParams"    # Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
    .param p3, "topMargin"    # I

    .line 1391
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 1392
    iput p3, p0, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->mMarginTop:I

    .line 1393
    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 1394
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 1403
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    .line 1404
    .local v0, "insets":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v1, v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    .line 1405
    .local v1, "scale":F
    iget v2, p0, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->mMarginTop:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v5, v2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 1407
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v6, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v7, v2

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v8, v2, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    .line 1405
    const/4 v4, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1410
    return-void
.end method

.method public updateParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;I)V
    .locals 0
    .param p1, "params"    # Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
    .param p2, "topMargin"    # I

    .line 1397
    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 1398
    iput p2, p0, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->mMarginTop:I

    .line 1399
    return-void
.end method
