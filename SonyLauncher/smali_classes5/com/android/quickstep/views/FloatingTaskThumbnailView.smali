.class public Lcom/android/quickstep/views/FloatingTaskThumbnailView;
.super Landroid/view/View;
.source "FloatingTaskThumbnailView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/FloatingTaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/FloatingTaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    .line 55
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 64
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 65
    .local v1, "scale":F
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 66
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 67
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/FloatingTaskView;

    .line 70
    .local v0, "parent":Lcom/android/quickstep/views/FloatingTaskView;
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Lcom/android/quickstep/views/FloatingTaskView;->drawRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 74
    iput-object p1, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 75
    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 77
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 79
    :cond_0
    return-void
.end method
